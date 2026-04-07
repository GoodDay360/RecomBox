use std::collections::HashMap;
use std::path::PathBuf;
use redb::{Database, ReadableDatabase, ReadableTable};
use crate::utils::settings::Settings;

use super::{CATEGORY_ORDER_TABLE, DATABASE_NAME, CategoryOrderMap};

pub async fn get_category_order() -> Result<CategoryOrderMap, String> {
    let settings = Settings::get()
        .map_err(|e| e.to_string())?;

    let db_path = PathBuf::from(&settings.paths.app_support_dir)
        .join(DATABASE_NAME);

    let db = Database::create(db_path)
        .map_err(|e| e.to_string())?;

    let read_txn = db.begin_read()
        .map_err(|e| e.to_string())?;

    // If table doesn't exist, return empty map
    let cat_order_table = match read_txn.open_table(CATEGORY_ORDER_TABLE) {
        Ok(t) => t,
        Err(_) => return Ok(CategoryOrderMap(HashMap::new())),
    };

    let mut orders = CategoryOrderMap(HashMap::new());

    for entry in cat_order_table.iter().map_err(|e| e.to_string())? {
        let (k, v) = entry.map_err(|e| e.to_string())?;
        orders.0.insert(k.value(), v.value());
    }

    Ok(orders)
}
