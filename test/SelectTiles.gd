extends Sprite2D

@export var snap_x = 16
@export var snap_y = 16

var mouse_pos = Vector2.ZERO

func _physics_process(_delta):
	update_position_snapped()
#	detect_block()
	
func update_position_snapped():
	mouse_pos = Vector2(int(get_global_mouse_position().x / snap_x),int(get_global_mouse_position().y / snap_y))
	global_position = (mouse_pos * snap_x ) + Vector2(8,8) 
	if get_global_mouse_position().x + 4 < global_position.x:
		global_position.x -= 16
	if get_global_mouse_position().y + 4 < global_position.y:
		global_position.y -= 16
		
#func detect_block():
#	get_source_id()
