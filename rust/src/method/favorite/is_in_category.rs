use std::path::PathBuf;
use redb::{Database, ReadableDatabase};
use crate::utils::settings::Settings;

use super::{ITEM_AND_CATEGORY_TABLE, DATABASE_NAME};

pub async fn is_in_category(item_id: &str) -> Result<bool, String> {
    let settings = Settings::get().map_err(|e| e.to_string())?;
    let db_path = PathBuf::from(&settings.paths.app_support_dir).join(DATABASE_NAME);

    let db = Database::create(db_path).map_err(|e| e.to_string())?;
    let read_txn = db.begin_read().map_err(|e| e.to_string())?;

    let item_cat_table = match read_txn.open_multimap_table(ITEM_AND_CATEGORY_TABLE) {
        Ok(t) => t,
        Err(_) => return Ok(false), // table missing → no categories
    };

    let values = item_cat_table.get(item_id).map_err(|e| e.to_string())?;

    // If iterator has at least one entry, item is in a category
    Ok(values.into_iter().next().is_some())
}
