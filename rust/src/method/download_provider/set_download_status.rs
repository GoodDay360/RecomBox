use serde_json::to_vec;

use super::{get_db, DOWNLOAD_STATUS_TABLE, DownloadItemKey, DownloadStatus};

pub async fn set_download_status(
    download_item_key: DownloadItemKey,
    download_status: DownloadStatus,
) -> Result<(), String> {
    let db = get_db()?;
    let write_txn = db.begin_write().map_err(|e| e.to_string())?;

    {
        let mut table = write_txn.open_table(DOWNLOAD_STATUS_TABLE)
            .map_err(|e| e.to_string())?;

        // Encode the key as an array
        let encoded_key = to_vec(&[
            download_item_key.source,
            download_item_key.id,
            download_item_key.season_index.to_string(),
            download_item_key.episode_index.to_string(),
        ])
        .map_err(|e| e.to_string())?;

        // Encode the value as an array [paused, done]
        let encoded_value = to_vec(&[
            download_status.progress_size.to_string().as_str(),
            download_status.total_size.to_string().as_str(),
            download_status.paused.to_string().as_str(),
            download_status.done.to_string().as_str(),
        ])
        .map_err(|e| e.to_string())?;

        table.insert(encoded_key.as_slice(), encoded_value.as_slice())
            .map_err(|e| e.to_string())?;
    }

    write_txn.commit().map_err(|e| e.to_string())?;
    Ok(())
}
