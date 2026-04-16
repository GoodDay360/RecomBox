use librqbit::*;

use std::{error::Error, path::PathBuf};

use serde_json::{to_string};
use urlencoding::decode;

use super::torrent_provider::torrent_session::TorrentSession;


pub async fn new(torrent_source: &str) -> Result<TorrentMetaV1Info<ByteBufOwned>, Box<dyn Error>>{
    let session = TorrentSession::get().await?;

    let mut options = AddTorrentOptions::default();
    options.overwrite = true;
    options.list_only = true;

    let decoded_torrent_source = decode(torrent_source)
        .map_err(|e| actix_web::error::ErrorInternalServerError(e.to_string()))?
        .to_string();

    let add_torrent_res = session
        .add_torrent(
            AddTorrent::from_url(decoded_torrent_source),
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