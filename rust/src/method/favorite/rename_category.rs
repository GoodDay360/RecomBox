use std::path::PathBuf;
use redb::Database;
use crate::utils::settings::Settings;

use super::{CATEGORY_TABLE, DATABASE_NAME};

pub async fn rename_category(category_id: u64, new_category_name: &str) -> Result<(), String> {
    let settings = Settings::get().map_err(|e| e.to_string())?;
    let db_path = PathBuf::from(&settings.paths.app_support_dir).join(DATABASE_NAME);

    let db = Database::create(db_path).map_err(|e| e.to_string())?;
    let write_txn = db.begin_write().map_err(|e| e.to_string())?;

    {
        let mut cat_table = write_txn.open_table(CATEGORY_TABLE)
            .map_err(|e| e.to_string())?;

        // Replace the existing value with the new name
        cat_table.insert(category_id, new_category_name).map_err(|e| e.to_string())?;
    }

    write_txn.commit().map_err(|e| e.to_string())?;
    Ok(())
}
