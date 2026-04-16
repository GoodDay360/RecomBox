use librqbit::{Session, SessionOptions, dht::{PersistentDhtConfig}};
use std::{path::PathBuf, sync::{Arc, RwLock}};
use std::env;

use crate::utils::settings::{self, Settings};


static TORRENT_SESSION: RwLock<Option<Arc<Session>>> = RwLock::new(None);

pub struct TorrentSession;

impl TorrentSession {

    pub async fn init() -> anyhow::Result<()>{
        let read_guard = TORRENT_SESSION.read()
            .map_err(|e| anyhow::Error::msg(e.to_string()))?;

        if let Some(session) = read_guard.as_ref() {
            session.stop().await;
        }

        let settings = Settings::get()?;

        let temp_session_dir = PathBuf::from(&settings.paths.temp_dir)
            .join("torrent_session_cache");


        let segments_dir = temp_session_dir.join("segments");
        let dht_file = temp_session_dir.join("dht.json");

        let dht_config = PersistentDhtConfig {
            dump_interval: Some(std::time::Duration::from_secs(60)),
            config_filename: Some(dht_file),
        };

        let session_options = SessionOptions {
            dht_config: Some(dht_config),
            ..Default::default()
        };

        let session = Session::new_with_opts(
            segments_dir,
            session_options,

        )
        .await?;

        let mut write_guard = TORRENT_SESSION.write()
            .map_err(|e| anyhow::Error::msg(e.to_string()))?;
        
        *write_guard = Some(session);

        return Ok(());
    }

    pub fn get() -> anyhow::Result<Arc<Session>> {
        let guard = TORRENT_SESSION.read()
            .map_err(|e| anyhow::Error::msg(e.to_string()))?;

        match guard.as_ref() {
            Some(session) => return Ok(session.clone()),
            None => return Err(anyhow::Error::msg("Torrent session not initialized yet."))
        };
    }
    
}
