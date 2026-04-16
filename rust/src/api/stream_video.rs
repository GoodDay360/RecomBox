use actix_web::{
    get,
    web,
    App,
    HttpRequest,
    HttpResponse,
    HttpServer,
};
use std::io::SeekFrom;
use tokio::io::AsyncSeekExt;
use tokio_util::io::ReaderStream;
use std::path::PathBuf;
use tokio;
use serde::{Deserialize, Serialize};

use crate::utils::torrent_provider::torrent_handle::TorrentHandle;

#[derive(Deserialize, Serialize)]
struct InputPayload {
    handle_id: String,
    torrent_source: String,
    file_id: usize
}

#[get("/stream_video")]
pub async fn new(req: HttpRequest, query: web::Query<InputPayload>) -> Result<HttpResponse, actix_web::Error>{
    let headers = req.headers();

    let handle_id = &query.handle_id;
    let torrent_source = &query.torrent_source;
    let file_id = query.file_id;

    let torrent_handle = TorrentHandle{
        handle_id: handle_id.clone(),
        torrent_source: torrent_source.clone(),
        file_id: file_id,
        output_dir: PathBuf::new()
    };

    let mut stream = torrent_handle.load().await
        .map_err(|e| actix_web::error::ErrorInternalServerError(e.to_string()))?
        .stream(file_id)
        .map_err(|e| actix_web::error::ErrorInternalServerError(e.to_string()))?;
    

    // -> Identify byte range
    
    let total_len = stream.len();

    let mut start: u64 = 0;
    let mut end: Option<u64> = None;

    if let Some(range_header) = headers.get("range") {
        if let Ok(range_str) = range_header.to_str() {
            if let Some(range) = range_str.strip_prefix("bytes=") {
                let parts: Vec<&str> = range.split('-').collect();
                if let Ok(s) = parts[0].parse::<u64>() {
                    start = s;
                }
                if parts.len() > 1 && !parts[1].is_empty() {
                    if let Ok(e) = parts[1].parse::<u64>() {
                        end = Some(e);
                    }
                }
            }
        }
    }

    let actual_end = end.unwrap_or(total_len - 1);
    let content_length = actual_end - start + 1;

    println!("START: {}, END: {}, TOTAL: {}", start, actual_end, total_len);

    // <-

    stream.seek(SeekFrom::Start(start)).await.unwrap();
    let reader_stream = ReaderStream::new(stream);
    let body = actix_web::body::BodyStream::new(reader_stream);

    println!("Proccessed");

    if headers.get("range").is_some() {
        // Range request → 206
        Ok(
            HttpResponse::PartialContent()
                .append_header(("Accept-Ranges", "bytes"))
                .append_header(("Content-Type", "video/x-matroska"))
                .append_header(("Content-Length", content_length.to_string()))
                .append_header((
                    "Content-Range",
                    format!("bytes {}-{}/{}", start, actual_end, total_len),
                ))
                .body(body)
        )
    } else {
        // No range → 200
        Ok(
            HttpResponse::Ok()
                .append_header(("Content-Type", "video/x-matroska"))
                .append_header(("Content-Length", total_len.to_string()))
                .body(body)
        )
    }
    
}


