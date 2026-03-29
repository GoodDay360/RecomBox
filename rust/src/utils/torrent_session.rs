use librqbit::{Session, SessionOptions, dht::{PersistentDhtConfig}};
use std::sync::{Arc, RwLock};
use std::env;


static TORRENT_SESSION: RwLock<Option<Arc<Session>>> = RwLock::new(None);

pub struct TorrentSession;

impl TorrentSession {

    pub async fn init() -> anyhow::Result<(), Box<dyn std::error::Error>>{
        let temp_dir = env::temp_dir();

        let download_dir = temp_dir.join("downloads");
        let dht_file = download_dir.join("dht.json");

        let dht_config = PersistentDhtConfig {
            dump_interval: Some(std::time::Duration::from_secs(60)),
            config_filename: Some(dht_file),
        };

        let session_options = SessionOptions {
            dht_config: Some(dht_config),
            ..Default::default()
        };

        let session = Session::new_with_opts(
            download_dir,
            session_options,

        )
        .await?;
        

        *TORRENT_SESSION.write()? = Some(session);

        return Ok(());
    }

    pub fn get() -> Result<Arc<Session>, Box<dyn std::error::Error>> {
        let guard = TORRENT_SESSION.read()?;

        match guard.as_ref() {
            Some(session) => return Ok(session.clone()),
            None => return Err("Torrent session not initialized yet.".into())
        };
    }
    
}
