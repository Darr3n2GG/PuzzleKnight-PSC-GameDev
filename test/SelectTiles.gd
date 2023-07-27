extends Sprite2D

@export var snap = 16
@onready var tilemap = $"../../TileMap_Level"

#var mouse_pos = Vector2.ZERO

func _physics_process(_delta):
	update_position_snapped()
#	detect_block()
	
func update_position_snapped():
	var global_mouse = get_global_mouse_position()
#	mouse_pos = tilemap.local_to_map(global_mouse)
	global_position = global_mouse

