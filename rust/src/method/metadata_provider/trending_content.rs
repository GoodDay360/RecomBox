use recombox_metadata_provider::{
	trending_content,
};
use recombox_metadata_provider::global_types::Source;

use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};


#[frb(json_serializable)]
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct TrendingContentInfo {
    pub source: String,
	pub id: String,
	pub title: String,
    pub year: String,
    pub rating: f32,
    pub thumbnail_url: String,
}

pub async fn trending_content(source: &str) -> Result<Vec<TrendingContentInfo>, String> {

	let source = Source::from_str(source);

	let data = trending_content::new(&source)
		.await
		.map_err(|e| e.to_string())?;

	let result: Vec<TrendingContentInfo> = data.0.iter()
		.map(|info| TrendingContentInfo {
            source: source.to_string(),
			id: info.id.to_owned(),
			title: info.title.to_owned(),
            year: info.year.to_owned(),
            rating: info.rating.to_owned(),
            thumbnail_url: info.thumbnail_url.to_owned(),
		})
		.collect();
	
	return Ok(result);
}