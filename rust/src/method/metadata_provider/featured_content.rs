use recombox_metadata_provider::{
	featured_content,
};
use recombox_metadata_provider::global_types::Source;

use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};


#[frb(json_serializable)]
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct FeaturedContentInfo{
	pub source: String,
	pub id: String,
	pub title: String,
	pub contextual: Vec<String>,
	pub short_description: String,
	pub banner_url: String,
}

pub async fn featured_content(source: &str) -> Result<Vec<FeaturedContentInfo>, String> {

	let source = Source::from_str(source);

	let data = featured_content::new(&source)
		.await
		.map_err(|e| e.to_string())?;

	let result: Vec<FeaturedContentInfo> = data.0.iter()
		.map(|info| FeaturedContentInfo {
			source: source.to_string(),
			id: info.id.to_owned(),
			title: info.title.to_owned(),
			short_description: info.short_description.to_owned(),
			contextual: info.contextual.to_owned(),
			banner_url: info.banner_url.to_owned(),
		})
		.collect();
	
	return Ok(result);
}