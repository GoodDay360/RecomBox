

use librqbit::*;
use std::{error::Error, path::PathBuf};
use dashmap::DashMap;
use std::sync::{Arc, LazyLock};
use librqbit::ManagedTorrent;
use librqbit::api::TorrentIdOrHash;
use serde::{Deserialize, Serialize};
use flutter_rust_bridge::frb;


use super::torrent_session::TorrentSession;


static WATCH_TORRENT_HANDLE_MAP: LazyLock<DashMap<String, Arc<ManagedTorrent>>> = LazyLock::new(DashMap::new);
static DOWNLOAD_TORRENT_HANDLE_MAP: LazyLock<DashMap<String, Arc<ManagedTorrent>>> = LazyLock::new(DashMap::new);


#[frb(json_serializable)]
#[derive(Debug, Deserialize, Serialize)]
pub enum TorrentHandleMode{
    Watch,
    Download
}

#[frb(json_serializable)]
#[derive(Debug, Deserialize, Serialize)]
pub struct TorrentHandle {
    pub torrent_handle_mode: TorrentHandleMode,
    pub torrent_source: String,
    pub file_id: usize,
    pub output_dir: PathBuf
}

impl TorrentHandle {
    pub async fn load(self) -> anyhow::Result<Arc<ManagedTorrent>, Box<dyn Error>>{
        let session = TorrentSession::get().await?.clone();

        let torrent_handle_map = match self.torrent_handle_mode {
            TorrentHandleMode::Watch => &WATCH_TORRENT_HANDLE_MAP,
            TorrentHandleMode::Download => &DOWNLOAD_TORRENT_HANDLE_MAP
        };

        let torrent_handle = match torrent_handle_map.get(&self.torrent_source) {
            Some(handle) => {
                let handle = handle.clone();

                let mut current = handle.only_files().unwrap_or_default();
                if !current.contains(&self.file_id) {
                    current.push(self.file_id);

                    let mut options = AddTorrentOptions::default();
                    options.overwrite = true;
                    options.paused = false;
                    options.only_files = Some(current);
                    options.output_folder = Some(self.output_dir.to_string_lossy().to_string());

                    TorrentHandle::free(self.torrent_handle_mode, &self.torrent_source, false).await?;

                    let new_handle = session
                        .add_torrent(
                            AddTorrent::from_url(self.torrent_source.as_str()),
                            Some(options),
                        )
                        .await?
                        .into_handle()
                        .ok_or("Unable to convert to handle")?;


                    new_handle
                } else {
                    handle
                }
            },
            None => {
                let mut options = AddTorrentOptions::default();
                options.overwrite = true;
                options.paused = false;
                options.only_files = Some(vec![self.file_id]);
                options.output_folder = Some(self.output_dir.to_string_lossy().to_string());
                
                let new_handle = session
                    .add_torrent(
                        AddTorrent::from_url(self.torrent_source.as_str()),
                        Some(options),
                    )
                    .await
                    .expect("Failed to add torrent")
                    .into_handle()
                    .ok_or("Unable to convert to handle")?;
                new_handle
            }
        };

        // let stats = torrent_handle.stats();
        // if let Some(metadata) = torrent_handle.metadata.load().as_ref() {
        //     for (i, file) in metadata.file_infos.iter().enumerate() {
        //         let downloaded = stats.file_progress.get(i).copied().unwrap_or(0);
        //         let total = file.len; // use len, not piece_range
        //         let percent = (downloaded as f64 / total as f64) * 100.0;
        //         println!(
        //             "{}: {:.2}% ({}/{} bytes)",
        //             file.relative_filename.display(), percent, downloaded, total
        //         );
        //     }
        // }

        torrent_handle_map.insert(self.torrent_source.clone(), torrent_handle.clone());
        torrent_handle.wait_until_initialized().await?;
        return Ok(torrent_handle);

    }

    pub async fn free(torrent_handle_mode: TorrentHandleMode, torrent_source: &str, delete_files: bool) -> anyhow::Result<()>{
        let torrent_handle_map = match torrent_handle_mode {
            TorrentHandleMode::Watch => &WATCH_TORRENT_HANDLE_MAP,
            TorrentHandleMode::Download => &DOWNLOAD_TORRENT_HANDLE_MAP
        };
        let torrent_handle = match torrent_handle_map.get(torrent_source) {
            Some(handle) => handle.clone(),
            None => {
                println!("[{}:{}] TORRENT HANDLE NOT FOUND. -> Skip clearning.", file!(), line!());
                return Ok(());
            }
        };

        let torrent_session = TorrentSession::get().await?;
        let torrent_id = TorrentIdOrHash::Id(torrent_handle.id());

        torrent_session.delete(torrent_id, delete_files).await?;


        return Ok(());

    }

}