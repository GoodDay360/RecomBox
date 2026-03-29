use librqbit::ManagedTorrent;
use std::{sync::{Arc, LazyLock}};

use dashmap::DashMap;


pub static TORRENT_HANDLE: LazyLock<DashMap<String,DashMap<usize, Arc<ManagedTorrent>>>> = LazyLock::new(DashMap::new);
