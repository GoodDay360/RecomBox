use anyhow;
use librqbit::ManagedTorrent;
use recombox_plugin_provider::manage_plugin::get_plugin_info;
use redb::{TableDefinition, ReadableDatabase, ReadableTable};
use std::num::NonZeroU32;
use std::sync::{RwLock, Arc};
use once_cell::sync::Lazy;
use std::fs;
use redb::Database;
use std::path::PathBuf;
use chrono::{Utc, DateTime};
use recombox_metadata_provider::global_types::Source;
use tokio;
use semver;

use crate::method::download_provider::get_download_status::get_download_status;
use crate::method::download_provider::set_download_status::set_download_status;
use crate::method::download_provider::{DownloadItemKey, DownloadItemValue, DownloadStatus};
use crate::utils::torrent_provider::torrent_handle::{TorrentHandle, TorrentHandleMode};
use crate::method::download_provider::{
    get_all_download::get_all_download,
    get_download::get_download,
};

use crate::utils::settings::Settings;

pub async fn start() -> anyhow::Result<()>{
    tokio::spawn( async move {
        loop {
            match spawn_session().await{
                Ok(_) => {
                    println!("[{}:{}] Completed a task.", file!(), line!());
                }
                Err(e) => {
                    eprintln!("[{}:{}] Failed to spawn session: {}", file!(), line!(), e);
                }
            }

            tokio::time::sleep(tokio::time::Duration::from_secs(5)).await;
        }
    });

    return Ok(());
}



async fn spawn_session() -> anyhow::Result<()>{
    let all_download = get_all_download().await
        .map_err(|e| anyhow::Error::msg(e.to_string()))?;

    for (key, value) in all_download {
        for value_info in value {
            let current_download_status = get_download_status(&DownloadItemKey { 
                    source: key.source.clone(), 
                    id: key.id.clone(), 
                    season_index: value_info.season_index, 
                    episode_index: value_info.episode_index
                }).await.map_err(|e| anyhow::Error::msg(e.to_string()))?.unwrap_or(
                DownloadStatus { progress_size: 0, total_size: 1, paused: false, done: false }
            );

            if current_download_status.done || current_download_status.paused {continue};

            
            let download_info = get_download(
                &key.source, 
                &key.id, 
                value_info.season_index, 
                value_info.episode_index
            ).await
                .map_err(|e| anyhow::Error::msg(e.to_string()))?
                .ok_or(anyhow::Error::msg("Unable to find download info"))?;

            

            let settings = Settings::get()?;

            let output_dir = PathBuf::from(settings.paths.app_support_dir.clone())
                .join("download")
                .join(key.source.to_string())
                .join(key.id.to_string())
                .join(format!("S{}", value_info.season_index+1))
                .join(format!("E{}", value_info.episode_index+1));
                
            println!("IT LOAD");

            let new_torrent_handle = TorrentHandle {
                torrent_handle_mode: TorrentHandleMode::Download,
                torrent_source: download_info.torrent_source.clone(),
                file_id: download_info.file_id,
                output_dir: output_dir,
            };

            let (torrent_handle, already_exist) = new_torrent_handle.load().await
                .map_err(|e| anyhow::Error::msg(e.to_string()))?;

            println!("IT HERE");

            if !already_exist && !current_download_status.paused && !current_download_status.done {
                let key_clone = key.clone();
                tokio::spawn(async move  {
                    match spawn_progress_watcher(
                        torrent_handle.clone(), 
                        DownloadItemKey { 
                            source: key_clone.source.clone(), 
                            id: key_clone.id.clone(), 
                            season_index: value_info.season_index, 
                            episode_index: value_info.episode_index
                        },
                        DownloadItemValue { 
                            torrent_source: download_info.torrent_source.clone(), 
                            file_id: download_info.file_id, 
                            file_path: download_info.file_path
                        }
                    ).await {
                        Ok(_) => {}
                        Err(e) => {
                            eprintln!("[{}:{}] Failed to spawn session: {}", file!(), line!(), e);
                        }
                    }
                });
            }
            


        }
    }

    return Ok(());
}


async fn spawn_progress_watcher(
    torrent_handle: Arc<ManagedTorrent>,
    download_item_key: DownloadItemKey,
    downlaod_item_value: DownloadItemValue
) -> anyhow::Result<()>{
    
    loop {
        println!("[{}:{}] Checking progress.", file!(), line!());
        let download_info = get_download(
            &download_item_key.source,
            &download_item_key.id,
            download_item_key.season_index,
            download_item_key.episode_index
        ).await.map_err(|e| anyhow::Error::msg(e.to_string()))?;

        if download_info.is_none(){
            break;
        }

        let stats = torrent_handle.stats();
        if let Some(metadata) = torrent_handle.metadata.load().clone() {
            for (i, file) in metadata.file_infos.iter().enumerate() {
                if i as u64 != downlaod_item_value.file_id {continue}

                let downloaded = stats.file_progress.get(i).copied().unwrap_or(0);
                let total = file.len;

                let current_download_status = get_download_status(&download_item_key).await
                    .map_err(|e| anyhow::Error::msg(e.to_string()))?.unwrap_or(
                    DownloadStatus { progress_size: 0, total_size: 1, paused: false, done: false }
                );
                if current_download_status.paused {break;}

                set_download_status(
                    &download_item_key,
                    &DownloadStatus{
                        progress_size: downloaded,
                        total_size: total,
                        paused: current_download_status.paused,
                        done: downloaded == total
                    },
                    true
                ).await.map_err(|e| anyhow::Error::msg(e.to_string()))?;

                if downloaded == total || current_download_status.paused{
                    break;
                }
            }
        }

        tokio::time::sleep(tokio::time::Duration::from_secs(1)).await;
    }
    

    return Ok(());
}

