use std::{sync::{Arc, Mutex}};
use once_cell::sync::Lazy;
use serde::{Deserialize, Serialize};
use flutter_rust_bridge::frb;


static SETTIGNS: Lazy<Mutex<Option<Arc<Settings>>>> = Lazy::new(|| Mutex::new(None));

#[frb(json_serializable)]
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Settings {
    pub paths: Paths,
}

#[frb(json_serializable)]
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Paths {
    pub app_support_dir: String,
    pub app_cache_dir: String,
    pub temp_dir: String,
}


impl Settings {
    pub fn init(settings: Settings) -> anyhow::Result<()> {
        let mut guard = SETTIGNS.lock()
            .map_err(|e| anyhow::Error::msg(e.to_string()))?;
        *guard = Some(Arc::new(settings));
        return Ok(());
    }
    
    pub fn get() -> anyhow::Result<Arc<Settings>> {
        let guard = SETTIGNS.lock()
            .map_err(|e| anyhow::Error::msg(e.to_string()))?;

        match guard.as_ref() {
            Some(settings) => return Ok(settings.clone()),
            None => return Err(anyhow::Error::msg("Settings not initialized yet."))
        }
    }
}


