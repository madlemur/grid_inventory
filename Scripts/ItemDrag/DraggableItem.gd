class_name DraggableItem extends Control

signal dragStarted(item)
signal itemUpgraded

@export var id: StringName = "":
	set(val):
		pass

var instance_id: String
var parent_inventory: InventoryInterface:
	set(val):
		if parent_inventory != val:
			parent_inventory = val
			if val:
				$ItemTexture.custom_minimum_size = $ItemTexture.full_size if not val.single_slot else GridInventory.singleton.items_cell_size
				$ItemTexture.pivot_offset = $ItemTexture.custom_minimum_size/2
#				adjust_stack_label_pos()
var texture: 
	get():
		return $ItemTexture
var previous_center_slot := -1
var original_orientation := 0
var orientation := 0:
	set(val):
		orientation = val
#		adjust_stack_label_pos()
		texture.update_rotation()
