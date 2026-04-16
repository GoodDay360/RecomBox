use crate::utils::torrent_provider::torrent_handle::TorrentHandle;

pub async fn free_torrent_handle(handle_id: u64) -> Result<(), String> {

    TorrentHandle::free(handle_id).await
        .map_err(|e| e.to_string())?;

    return Ok(());
}