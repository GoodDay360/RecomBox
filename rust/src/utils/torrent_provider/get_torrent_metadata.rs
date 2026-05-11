use librqbit::*;

use std::{error::Error};


use crate::utils::torrent_provider::serialize_torrent_source;

use super::torrent_session::TorrentSession;


pub async fn new(torrent_source: &str) -> Result<TorrentMetaV1Info<ByteBufOwned>, Box<dyn Error>>{
    let session = TorrentSession::get().await?;

    let mut options = AddTorrentOptions::default();
    options.overwrite = true;
    options.list_only = true;


    let add_torrent_res = session
        .add_torrent(
            serialize_torrent_source::new(torrent_source, false).await?,
            Some(options),
        )
        .await?;
    

    let list_only_opt = match add_torrent_res {
        AddTorrentResponse::ListOnly(res) => Some(res),
        _ => None
    };

    let torrent_info = list_only_opt
        .ok_or("Unable to extract torrent info")?.info;

    return Ok(torrent_info);

}