
use redb::{ReadableDatabase};
use serde_json::{to_vec};


use super::{get_db, ITEM_AND_CATEGORY_TABLE};

pub async fn is_in_category(source: &str, id: &str) -> Result<bool, String> {
    let db = get_db()?;

    let read_txn = db.begin_read().map_err(|e| e.to_string())?;

    let item_cat_table = match read_txn.open_multimap_table(ITEM_AND_CATEGORY_TABLE) {
        Ok(t) => t,
        Err(e) => {
            println!("[{}:{}] Error reading table: {}", file!(), line!(), e);
            return Ok(false)
        }, // table missing → no categories
    };

    let encoded_key = to_vec(&[source,id])
        .map_err(|e| e.to_string())?;


    let values = item_cat_table.get(encoded_key.as_slice()).map_err(|e| e.to_string())?;

    // If iterator has at least one entry, item is in a category
    Ok(values.into_iter().next().is_some())
}
