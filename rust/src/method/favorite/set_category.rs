


use redb::{ReadableDatabase};
use serde_json::{to_vec};

use crate::method::favorite::is_in_category::is_in_category;

use super::{get_db, CATEGORY_TABLE, ITEM_AND_CATEGORY_TABLE, CATEGORY_AND_ITEM_TABLE};


pub async fn set_category(category_id: u64, source: &str, id: &str) -> Result<(), String> {
    let db = get_db()?;

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

        let encoded_item = to_vec(&[source,id])
            .map_err(|e| e.to_string())?;

        cat_item_table.insert(category_id, encoded_item.as_slice())
            .map_err(|e| e.to_string())?;

        item_cat_table.insert(encoded_item.as_slice(), category_id)
            .map_err(|e| e.to_string())?;
    }
    write_txn.commit()
        .map_err(|e| e.to_string())?;
    
    let _is_in_fav = is_in_category(source, id).await?;

    return Ok(());
}