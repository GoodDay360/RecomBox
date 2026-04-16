
use serde::{Deserialize, Serialize};
use std::path::PathBuf;

use flutter_rust_bridge::frb;

use crate::utils;

#[frb(json_serializable)]
#[derive(Debug, Deserialize, Serialize)]
pub struct FileInfo {
    pub id: usize,
    pub path: Option<String>,
    pub length: Option<usize>,
    pub sha1: Option<String>
}

#[frb(json_serializable)]
#[derive(Debug, Deserialize, Serialize)]
pub struct TorrentMetadata {
    pub name: Option<String>,
    pub length: Option<u64>,
    pub files: Vec<FileInfo>,
}


pub async fn get_torrent_metadata(torrent_source: String) -> Result<TorrentMetadata, String> {
    

    let torrent_info = utils::get_torrent_info::new(&PathBuf::from(torrent_source))
        .await
        .map_err(|e| e.to_string())?;

    let name = match &torrent_info.name {
        Some(name) => Some(String::from_utf8_lossy(name).to_string()),
        None => None
    };

    let length = torrent_info.length;

    let files: Vec<FileInfo> = match &torrent_info.files {
        Some(files) => files.into_iter().enumerate()
            .map(|(k, f)| FileInfo{
                id: k,
                path: Some(f.path.iter().map(|i| 
                    String::from_utf8_lossy(i).to_string()).collect()
                ),
                
                length: Some(f.length as usize),

                sha1: match &f.sha1 {
                    Some(sha1) => Some(String::from_utf8_lossy(sha1).to_string()),
                    None => None
                }
            }).collect(),
        None => return Err("Unable to extract files".to_string())
    };

    return Ok(TorrentMetadata {
        name: name,
        length: length,
        files: files
    });
}