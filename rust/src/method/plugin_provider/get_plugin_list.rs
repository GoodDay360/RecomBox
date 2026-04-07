use std::collections::HashMap;
use std::path::PathBuf;
use std::sync::Arc;

use recombox_plugin_provider::manage_plugin::{
    get_plugin_list::{self, InputPayload},
    PluginDatabaseManager
};
use recombox_plugin_provider::global_types::Source;
use serde::{Serialize, Deserialize};
use flutter_rust_bridge::frb;

use crate::utils::settings::Settings;


#[frb(json_serializable)]
#[derive(Debug, Deserialize, Serialize)]
pub struct PluginInfo{
    pub name: String,
    pub repo_url: String,
    pub icon_url: String,

}

// Return <plugin_id, InstalledPluginInfo>
pub async fn get_plugin_list(source: &str) -> Result<HashMap<String, PluginInfo>, String> {
    let source = Source::from_str(source)
        .ok_or("Invalid Source")
        .map_err(|e| e.to_string())?;


    let settings = Settings::get()
        .map_err(|e| e.to_string())?;

    let plugin_db_manager = PluginDatabaseManager{
        plugin_directory: PathBuf::from(&settings.paths.app_support_dir)
    };

    let all_manifest_repo = plugin_db_manager.get_installed_manifest_repo().await
        .map_err(|e| e.to_string())?;

    let mut result: HashMap<String, PluginInfo> = HashMap::new();

    for (_, v) in all_manifest_repo.0.iter().enumerate() {
        let plugin_info = get_plugin_list::new(InputPayload { 
            manifest_repo_url: v.manifest_repo_url.clone(), 
            source: source.clone()
        }).await
        .map_err(|e| e.to_string())?;

        for (plugin_id, plugin_info) in plugin_info.0.iter() {
            result.insert(plugin_id.clone(), PluginInfo{
                name: plugin_info.name.clone(),
                repo_url: plugin_info.repo_url.clone(),
                icon_url: plugin_info.icon_url.clone(),
            });
        }
    }



    return Ok(result);
}