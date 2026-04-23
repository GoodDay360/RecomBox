use anyhow::Result;
use reqwest::{Client, Url};
use tokio::fs::{File, create_dir_all};
use tokio::io::AsyncWriteExt;
use std::path::PathBuf;

pub async fn new(url: &str, file_name: Option<&PathBuf>) -> Result<()> {
    let client = Client::new();
    let mut resp = client.get(url).send().await?;

    fn resolve_name(url: &str, file_name: Option<&PathBuf>, resp: &reqwest::Response) -> Result<PathBuf> {
        if let Some(name) = file_name {
            return Ok(name.clone());
        }

        // Try Content-Disposition header
        if let Some(disposition) = resp.headers().get(reqwest::header::CONTENT_DISPOSITION) {
            if let Ok(disposition_str) = disposition.to_str() {
                if let Some(fname) = disposition_str.split("filename=").nth(1) {
                    return Ok(PathBuf::from(fname.trim_matches('"')));
                }
            }
        }

        // Fallback to URL last segment
        let parsed = Url::parse(url)?;
        let fname = parsed
            .path_segments()
            .and_then(|segments| segments.last())
            .filter(|s| !s.is_empty())
            .unwrap_or("download");
        Ok(PathBuf::from(fname))
    }

    let name = resolve_name(url, file_name, &resp)?;

    // Ensure parent folder exists
    if let Some(parent) = name.parent() {
        if !parent.as_os_str().is_empty() {
            create_dir_all(parent).await?;
        }
    }

    let mut file = File::create(&name).await?;
    while let Some(chunk) = resp.chunk().await? {
        file.write_all(&chunk).await?;
    }

    println!("Saved file as {}", name.display());
    Ok(())
}
