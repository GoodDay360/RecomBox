use redb::{ReadableDatabase};
use serde_json::{from_slice, to_vec};


use super::{get_db, LAST_WATCH_TORRENT_TABLE, LastWatchTorrentInfo};

pub async fn get_last_watch_torrent(source: &str, id: &str, season_index: u64, episode_index: u64) -> anyhow::Result<Option<LastWatchTorrentInfo>, String> {
    let db = get_db()?;

    let read_txn = db.begin_read()
        .map_err(|e| e.to_string())?;

    let table = match read_txn.open_table(LAST_WATCH_TORRENT_TABLE) {
        Ok(t) => t,
        Err(_) => return Ok(None),
    };

    let encoded_key = to_vec(&[source,id,season_index.to_string().as_str(),episode_index.to_string().as_str()])
        .map_err(|e| e.to_string())?;

    let raw_data = table.get(encoded_key.as_slice()).map_err(|e| e.to_string())?;

    if let Some(data) = raw_data {
        let info: LastWatchTorrentInfo = from_slice(data.value()).map_err(|e| e.to_string())?;
        return Ok(Some(info));
    }


    return Ok(None);
}
