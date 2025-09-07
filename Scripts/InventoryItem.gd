class_name InventoryItem extends Resource

## Short name of the item
@export var item_name: String
## Node path to the Sprite for the item
@export_node_path("Sprite2D") var item_texture: NodePath
## Long-form description of the item
@export_multiline var item_description: String
## An admittedly opaque description of the shape of the item as seen in inventory
@export_enum (
	"1", 
	"2", 
	"3", "r", 
	"4", "L", "o", "~", 
	"5", "[", "b", "S", 
	"6", "6[", "B", "{", "6S" 
) var item_shape = "1"
## Item weight
@export var item_weight: float = 1.0
## Item category
@export var item_category: InventoryCategory
## Is this a singularly unique item in the game?
@export var item_is_unique: bool = false
