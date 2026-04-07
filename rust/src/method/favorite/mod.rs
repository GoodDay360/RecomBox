pub mod add_category;
pub mod set_category;
pub mod delete_category;
pub mod unset_category;
pub mod get_all_category;
pub mod get_all_category_by_item_id;
pub mod get_category_order;
pub mod swap_category_order;
pub mod rename_category;
pub mod is_in_category;

use redb::{TableDefinition, MultimapTableDefinition};
use serde::{Deserialize, Serialize};
use flutter_rust_bridge::frb;
use std::collections::HashMap;


const DATABASE_NAME: &str = "favorite.redb";
const CATEGORY_TABLE: TableDefinition<u64, &str> = TableDefinition::new("category");
const CATEGORY_ORDER_TABLE:TableDefinition<u64, u64> = TableDefinition::new("category_order");
const CATEGORY_AND_ITEM_TABLE: MultimapTableDefinition<u64, &str> = MultimapTableDefinition::new("category_and_item");
const ITEM_AND_CATEGORY_TABLE: MultimapTableDefinition<&str, u64> = MultimapTableDefinition::new("item_and_category");


#[frb(json_serializable)]
#[derive(Serialize, Deserialize)]
pub struct CategoryMap(pub HashMap<u64, String>);

#[frb(json_serializable)]
#[derive(Serialize, Deserialize)]
pub struct CategoryOrderMap(pub HashMap<u64, u64>);