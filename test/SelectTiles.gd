extends Sprite2D

@export var snap = 16
@onready var tilemap = $"../../TileMap_Level"

#var mouse_pos = Vecto.ZERO

func _physics_process(_delta):
	update_position_snapped()
	
func update_position_snapped():
	var global_mouse = get_global_mouse_position()
	global_position = global_mouse

