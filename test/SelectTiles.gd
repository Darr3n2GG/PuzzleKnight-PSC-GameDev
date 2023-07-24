extends Sprite2D

@export var snap_x = 16
@export var snap_y = 16

var mouse_pos = Vector2.ZERO

func _physics_process(_delta):
	update_position_snapped()
#	detect_block()
	
func update_position_snapped():
	var global_mouse = get_global_mouse_position()
	mouse_pos = Vector2(int(global_mouse.x / snap_x),int(global_mouse.y / snap_y))
	global_position = (mouse_pos * snap_x) + Vector2(8,8)
	if global_mouse.x + 4 < global_position.x:
		global_position.x -= 16
	if global_mouse.y + 4 < global_position.y:
		global_position.y -= 16
		
#func detect_block():
#	get_source_id()
