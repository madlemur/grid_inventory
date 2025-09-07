@tool
class_name GridInventory extends Node

static var _singleton: GridInventory = null
static var singleton: GridInventory:
	get:
		return _singleton

#Signals
signal item_added(to_inv: GridInventory, item: DraggableItem)
signal item_removed(from_inv: GridInventory, item: DraggableItem)
signal item_updated(in_inv: GridInventory, item: DraggableItem)

@export var items_resource_path: String
@export var items_cell_size: Vector2 = Vector2(32,32)
	
#Startup
var inventory_refs := {}
@onready var temp_node = Control.new()
func _ready():
	add_child(temp_node)
		
func _init() -> void:
	if singleton == null:
		_singleton = self
	
