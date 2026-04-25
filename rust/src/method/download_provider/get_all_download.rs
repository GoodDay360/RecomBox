use redb::{ReadableDatabase, ReadableTable};
use serde_json::from_slice;

use super::{get_db, DOWNLOAD_TABLE, DownloadItem, DownloadItemKey, DownloadItemValue};

pub async fn get_all_download() -> Result<Vec<DownloadItem>, String> {
    let db = get_db()?;
    let read_txn = db.begin_read().map_err(|e| e.to_string())?;

    let table = read_txn.open_table(DOWNLOAD_TABLE)
        .map_err(|e| e.to_string())?;

    let mut results = Vec::new();

    for entry in table.iter().map_err(|e| e.to_string())? {
        let (key_bytes, value_bytes) = entry.map_err(|e| e.to_string())?;

        // Decode key array back into struct
        let key_parts: Vec<String> = from_slice(key_bytes.value())
            .map_err(|e| e.to_string())?;
        if key_parts.len() != 4 {
            return Err("Invalid key format".into());
        }
        let key = DownloadItemKey {
            source: key_parts[0].clone(),
            id: key_parts[1].clone(),
            season_index: key_parts[2]
                .parse::<u64>()
                .map_err(|e| e.to_string())?,
            episode_index: key_parts[3]
                .parse::<u64>()
                .map_err(|e| e.to_string())?,
        };

        // Decode value array back into struct
        let value_parts: Vec<String> = from_slice(value_bytes.value())
            .map_err(|e| e.to_string())?;
        if value_parts.len() != 3 {
            return Err("Invalid value format".into());
        }
        let value = DownloadItemValue {
            torrent_source: value_parts[0].clone(),
            file_id: value_parts[1].parse::<u64>().map_err(|e| e.to_string())?,
            file_path: value_parts[2].clone(),
        };

        results.push(DownloadItem(key, value));
    }

    Ok(results)
}
