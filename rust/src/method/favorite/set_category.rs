

use std::path::PathBuf;
use redb::{Database, ReadableDatabase};

use super::{CATEGORY_TABLE, ITEM_AND_CATEGORY_TABLE, CATEGORY_AND_ITEM_TABLE, DATABASE_NAME};


use crate::utils::settings::Settings;


pub async fn set_category(category_id: u64, item_id: &str) -> Result<(), String> {
    let settings = Settings::get()
        .map_err(|e| e.to_string())?;

    let db_path = PathBuf::from(&settings.paths.app_support_dir)
        .join(DATABASE_NAME);

    let db = Database::create(db_path)
        .map_err(|e| e.to_string())?;

    // First check if category exists
    {
        let read_txn = db.begin_read()
            .map_err(|e| e.to_string())?;
        let cat_table = read_txn.open_table(CATEGORY_TABLE)
            .map_err(|e| e.to_string())?;
        let result = cat_table.get(category_id)
            .map_err(|e| e.to_string())?;
        if result.is_none() {
            return Err(format!("Category {} does not exist", category_id));
        }
    }

    
    let write_txn = db.begin_write()
        .map_err(|e| e.to_string())?;

    {
        let mut cat_item_table = write_txn.open_multimap_table(CATEGORY_AND_ITEM_TABLE)
            .map_err(|e| e.to_string())?;
        let mut item_cat_table = write_txn.open_multimap_table(ITEM_AND_CATEGORY_TABLE)
            .map_err(|e| e.to_string())?;

        cat_item_table.insert(category_id, item_id)
            .map_err(|e| e.to_string())?;

        item_cat_table.insert(item_id, category_id)
            .map_err(|e| e.to_string())?;
    }
    write_txn.commit()
        .map_err(|e| e.to_string())?;
    
    return Ok(());
}