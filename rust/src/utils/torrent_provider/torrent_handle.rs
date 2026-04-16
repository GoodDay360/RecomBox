

use librqbit::*;
use std::{error::Error, path::PathBuf};
use dashmap::DashMap;
use std::sync::{Arc, LazyLock};
use librqbit::ManagedTorrent;
use librqbit::api::TorrentIdOrHash;


use super::torrent_session::TorrentSession;


static TORRENT_HANDLE_MAP: LazyLock<DashMap<u64, Arc<ManagedTorrent>>> = LazyLock::new(DashMap::new);

pub struct TorrentHandle {
    pub handle_id: u64,
    pub torrent_source: String,
    pub file_id: usize,
    pub output_dir: PathBuf
}

impl TorrentHandle {
    pub async fn load(self) -> Result<Arc<ManagedTorrent>, Box<dyn Error>>{
        let session = TorrentSession::get().await?.clone();
        println!("start LOAD");

        let torrent_handle = match TORRENT_HANDLE_MAP.get(&self.handle_id) {
            Some(handle) => handle.clone(),
            None => {
                let mut options = AddTorrentOptions::default();
                options.overwrite = true;
                options.paused = false;
                options.only_files = Some(vec![self.file_id]);
                options.output_folder = Some(self.output_dir.to_string_lossy().to_string());
                
                let new_handle = session
                    .add_torrent(
                        AddTorrent::from_url(self.torrent_source),
                        Some(options),
                    )
                    .await
                    .expect("Failed to add torrent")
                    .into_handle()
                    .ok_or("Unable to convert to handle")?;
                println!("ADDED TORRENT HANDLE");
                new_handle
            }
        };

        TORRENT_HANDLE_MAP.insert(self.handle_id, torrent_handle.clone());
        torrent_handle.wait_until_initialized().await?;
        println!("free LOAD");
        return Ok(torrent_handle);

    }

    pub async fn free(handle_id: u64) -> anyhow::Result<()>{
        let torrent_handle = match TORRENT_HANDLE_MAP.get(&handle_id) {
            Some(handle) => handle.clone(),
            None => {
                println!("TORRENT HANDLE NOT FOUND. -> Skip clearning.");
                return Ok(());
            }
        };

        let torrent_session = TorrentSession::get().await?;
        let torrent_id = TorrentIdOrHash::Id(torrent_handle.id());

        torrent_session.delete(torrent_id, true).await?;


        return Ok(());

    }

}