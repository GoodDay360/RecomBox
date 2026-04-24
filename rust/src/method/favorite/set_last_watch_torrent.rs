use redb::{ReadableTable};
use snowid::SnowID;
use serde_json::{to_vec, to_string};

use super::{get_db, CATEGORY_ORDER_TABLE, LAST_WATCH_TORRENT_TABLE, LastWatchTorrentInfo};


pub async fn set_last_watch_torrent(
    source: &str, 
    id: &str, 
    season_index: u64, 
    episode_index: u64,
    last_watch_torrent_info: LastWatchTorrentInfo
) -> Result<(), String> {
    let db = get_db()?;
    
    let write_txn = db.begin_write()
        .map_err(|e| e.to_string())?;

    {
        let mut table = write_txn.open_table(LAST_WATCH_TORRENT_TABLE)
            .map_err(|e| e.to_string())?;
        
        let encoded_key = to_vec(&[source,id,season_index.to_string().as_str(),episode_index.to_string().as_str()])
            .map_err(|e| e.to_string())?;

        let encoded_value = to_vec(&last_watch_torrent_info)
            .map_err(|e| e.to_string())?;

        table.insert(encoded_key.as_slice(), encoded_value.as_slice())
            .map_err(|e| e.to_string())?;

    }
    write_txn.commit()
        .map_err(|e| e.to_string())?;
    
    return Ok(());
}