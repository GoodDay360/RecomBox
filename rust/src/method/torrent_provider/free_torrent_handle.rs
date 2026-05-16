use crate::{method::current_watch::remove_current_watch_torrent, utils::torrent_provider::torrent_handle::{ TorrentHandle, TorrentHandleMode}};

pub async fn free_torrent_handle(torrent_handle_mode: &TorrentHandleMode, torrent_source: &str, delete_files: bool) -> Result<(), String> {

    TorrentHandle::free(torrent_handle_mode, torrent_source, delete_files).await
        .map_err(|e| e.to_string())?;

    remove_current_watch_torrent().await
        .map_err(|e| e.to_string())?;

    return Ok(());
}