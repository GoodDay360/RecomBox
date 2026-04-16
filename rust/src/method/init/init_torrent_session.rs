use crate::utils::torrent_provider::torrent_session::TorrentSession;

pub async fn init_torrent_session() -> Result<(), String> {
    

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
