use tokio::sync::RwLock;
use once_cell::sync::Lazy;


static CURRENT_WATCH_TORRENT: Lazy<RwLock<Option<String>>> = Lazy::new(|| RwLock::new(None));

pub async fn set_current_watch_torrent(torrent_source: String){
    CURRENT_WATCH_TORRENT.write().await.replace(torrent_source);
}

pub async fn get_current_watch_torrent() -> Option<String>{
    CURRENT_WATCH_TORRENT.read().await.clone()
}

pub async fn remove_current_watch_torrent() -> anyhow::Result<()>{
    CURRENT_WATCH_TORRENT.write().await.take();

    Ok(())
}