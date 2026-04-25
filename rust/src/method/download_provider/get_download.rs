use redb::ReadableDatabase;
use serde_json::from_slice;

use super::{get_db, DOWNLOAD_TABLE, DownloadItemValue};

pub async fn get_download(
    source: &str,
    id: &str,
    season_index: u64,
    episode_index: u64,
) -> Result<Option<DownloadItemValue>, String> {
    let db = get_db()?;
    let read_txn = db.begin_read().map_err(|e| e.to_string())?;

    let table = read_txn.open_table(DOWNLOAD_TABLE)
        .map_err(|e| e.to_string())?;

    // Encode the key as an array (same as add_download)
    let encoded_key = serde_json::to_vec(&[
        source,
        id,
        season_index.to_string().as_str(),
        episode_index.to_string().as_str(),
    ])
    .map_err(|e| e.to_string())?;

    // Lookup the value
    if let Some(value) = table.get(encoded_key.as_slice())
        .map_err(|e| e.to_string())?
    {
        // Decode back into array form
        let decoded: Vec<String> = from_slice(value.value())
            .map_err(|e| e.to_string())?;

        if decoded.len() == 3 {
            let info = DownloadItemValue {
                torrent_source: decoded[0].clone(),
                file_id: decoded[1].parse::<u64>().map_err(|e| e.to_string())?,
                file_path: decoded[2].clone(),
            };
            Ok(Some(info))
        } else {
            Err("Invalid stored value format".into())
        }
    } else {
        Ok(None)
    }
}
