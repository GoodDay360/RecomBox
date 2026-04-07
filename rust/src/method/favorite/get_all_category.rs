use std::path::PathBuf;
use redb::{Database, ReadableDatabase, ReadableTable};
use std::collections::HashMap;


use crate::utils::settings::Settings;

use super::{CATEGORY_TABLE, DATABASE_NAME, CategoryMap};

pub async fn get_all_category() -> Result<CategoryMap, String> {
    let settings = Settings::get()
        .map_err(|e| e.to_string())?;

    let db_path = PathBuf::from(&settings.paths.app_support_dir)
        .join(DATABASE_NAME);

    let db = Database::create(db_path)
        .map_err(|e| e.to_string())?;

    let read_txn = db.begin_read()
        .map_err(|e| e.to_string())?;

    let cat_table = match read_txn.open_table(CATEGORY_TABLE) {
        Ok(t) => t,
        Err(_) => return Ok(CategoryMap(HashMap::new())),
    };

    let mut categories: CategoryMap = CategoryMap(HashMap::new());

    for entry in cat_table.iter().map_err(|e| e.to_string())? {
        let (k, v) = entry.map_err(|e| e.to_string())?;
        
        categories.0.insert(k.value(), v.value().to_string());
    }

    Ok(categories)
}
