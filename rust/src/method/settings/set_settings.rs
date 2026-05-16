
use crate::utils::settings::Settings;


pub fn set_settings(settings: Settings) -> Result<(), String> {
    Settings::set(settings)
        .map_err(|e| e.to_string())?;

    Ok(())
}