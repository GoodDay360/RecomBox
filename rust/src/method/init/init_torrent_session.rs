use std::path::PathBuf;
use std::fs;

use crate::utils::torrent_provider::torrent_session::TorrentSession;

use crate::utils::settings::Settings;

pub async fn init_torrent_session() -> Result<(), String> {
    
    let settings = Settings::get()
        .map_err(|e| e.to_string())?;
    let torrent_stream_cache_dir = PathBuf::from(&settings.paths.app_cache_dir)
        .join("torrent_session_cache")
        .join("stream");

    fs::remove_dir_all(torrent_stream_cache_dir).ok();


    tokio::task::spawn_blocking(move || {
        tokio::runtime::Handle::current().block_on(async {
            TorrentSession::init().await
            .unwrap()
        })
    })
    .await
    .map_err(|e| e.to_string())?;

    return Ok(());
}
