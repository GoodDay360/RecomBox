mod update_plugins;
mod download;
mod clean_download;

pub async fn init() -> anyhow::Result<()> {
    println!("STARTING WORKER...");
    
    update_plugins::start().await?;
    download::start().await?;
    clean_download::start().await?;

    println!("WORKER INITIALIZED SUCCESSFULLY.");

    return Ok(());
}