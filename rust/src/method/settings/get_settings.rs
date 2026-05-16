
use crate::utils::settings::Settings;


pub fn get_settings() -> Result<Settings, String> {
    let settings = Settings::get()
        .map_err(|e| e.to_string())?;

    Ok((*settings).clone())
}