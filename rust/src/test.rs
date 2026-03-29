
#[cfg(test)]
mod tests {
    use super::*;
    use crate::{api, utils, method};

    #[tokio::test] 
    async fn test_get_torrent_info() {
        
        utils::torrent_session::TorrentSession::init().await.unwrap();

        let url = "https://yts.bz/torrent/download/CE202BCAE070A04BFBFB2C96355B058612B05493";

        method::generate_torrent_handle::generate_torrent_handle(url.to_string(), 0).await.unwrap();


        let result = method::get_torrent_info::get_torrent_info(url.to_string())
            .await.unwrap();

        println!("{:?}", result);
        method::spawn_stream_server::spawn_stream_server().await.unwrap();
    }
}
