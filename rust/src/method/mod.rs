// !------------------------------------------------------------
// Most of the functions inside `method` are
// functions to safe wrap and translate types from rust to dart.
//
// The goal is to keep `method` return types as simple as possible before passing it to rust-dart bridge.
// !------------------------------------------------------------
pub mod init;
pub mod get_torrent_metadata;
pub mod metadata_provider;
pub mod plugin_provider;
pub mod favorite;

