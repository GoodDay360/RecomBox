mod update_plugins;
mod download;

pub async fn init() -> anyhow::Result<()> {
    println!("STARTING WORKER...");
    
    update_plugins::start().await?;
    download::start().await?;


    println!("WORKER INITIALIZED SUCCESSFULLY.");

    return Ok(());
}