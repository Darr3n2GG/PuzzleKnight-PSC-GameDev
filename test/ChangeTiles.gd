extends TileMap

@onready var player = $"../Player_Level"
#var placed = 0
#var dir: String = "0"
#var tile_custom_value = "custom_value"


func _physics_process(_delta):
	if Input.is_action_just_pressed("mb_left"):
		var mouse_pos = get_global_mouse_position()
		var tile_coords = self.local_to_map(mouse_pos)
#		print(tile_coords)
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		var tile_left_id = get_cell_source_id(0,Vector2i(tile_coords.x + 1,tile_coords.y))
		var tile_right_id = get_cell_source_id(0,Vector2i(tile_coords.x - 1,tile_coords.y))
		var tile_up_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y + 1))
		var tile_down_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y - 1))
		if tile_left_id != -1 or tile_right_id != -1 or tile_up_id != -1  or tile_down_id != -1:
			if tile_id != 0:
				set_cell(0,tile_coords,1 ,Vector2i(0,0))
#		print("Left Tile ID:", tile_left_id ,
#		"\nRight Tile ID:", tile_right_id, "\nUp Tile ID:", tile_up_id, "\nDown Tile ID:", tile_down_id)
	

	if Input.is_action_just_pressed("mb_right"):
		var mouse_pos = get_global_mouse_position()
		var tile_coords = self.local_to_map(mouse_pos)
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		if tile_id == 1:
			set_cell(0,tile_coords,-1 ,Vector2i(0,0))
 
