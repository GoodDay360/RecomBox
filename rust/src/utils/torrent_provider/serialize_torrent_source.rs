use librqbit::AddTorrent;
use std::path::PathBuf;
use base64::{engine::general_purpose, Engine as _};
use sha2::{Sha256, Digest};
use urlencoding::encode;

use crate::utils::settings::Settings;

pub async fn new(torrent_source: &str, from_cache: bool) -> anyhow::Result<AddTorrent<'static>> {
    if torrent_source.starts_with("http") {
        let settings = Settings::get()?;

        let cache_dir = PathBuf::from(&settings.paths.app_cache_dir)
            .join("torrent_files");
        
        if !cache_dir.exists() {
            std::fs::create_dir_all(&cache_dir)?;
        }

        let mut hasher = Sha256::new();
        hasher.update(torrent_source.as_bytes());
        let hash = hasher.finalize();
        let encoded_name = encode(&general_purpose::STANDARD.encode(hash)).to_string();
        let torrent_file_path = cache_dir.join(format!("{}.torrent", encoded_name));

        if from_cache && torrent_file_path.exists() {
            let data = std::fs::read(&torrent_file_path)?;
            return Ok(AddTorrent::from_bytes(data));
        }

        let client = reqwest::Client::new();
        let response = client
            .get(torrent_source)
            .send()
            .await?
            .bytes()
            .await?;

        std::fs::write(&torrent_file_path, &response)?;
        
        return Ok(AddTorrent::from_bytes(response));
    } else if torrent_source.starts_with("magnet") {
        return Ok(AddTorrent::from_url(torrent_source.to_string()));
    } else {
        return Err(anyhow::anyhow!("Unsupported source: must be magnet: or http(s)://"));
    }
}