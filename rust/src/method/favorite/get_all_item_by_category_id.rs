
use redb::{ReadableDatabase};
use serde_json::from_slice;


use super::{get_db, CATEGORY_AND_ITEM_TABLE, FavoriteItemInfo};

pub async fn get_all_item_by_category_id(category_id: u64) -> Result<Vec<FavoriteItemInfo>, String> {
    let db = get_db()?;

    let read_txn = db.begin_read()
        .map_err(|e| e.to_string())?;

    let cat_item_table = match read_txn.open_multimap_table(CATEGORY_AND_ITEM_TABLE) {
        Ok(t) => t,
        Err(_) => return Ok(Vec::new()),
    };

    let mut items: Vec<FavoriteItemInfo> = Vec::new();

    // MultimapValue is iterable
    let values = cat_item_table.get(&category_id).map_err(|e| e.to_string())?;

    for entry in values {
        let item_val = entry.map_err(|e| e.to_string())?;

        let decoded_item: [String;2] = from_slice(item_val.value())
            .map_err(|e| e.to_string())?;
        
        let new_item = FavoriteItemInfo {
            source: decoded_item[0].clone(),
            id: decoded_item[1].clone(),
        };
        
        items.push(new_item);
    }

    Ok(items)
}
