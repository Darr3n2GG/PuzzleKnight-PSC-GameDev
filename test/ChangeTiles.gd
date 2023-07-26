extends TileMap

@onready var player = $"../Player_Level"
var placed = 0
var dir: String = "0"
var TILE_SIZE = 16 
var tile_custom_value = "custom_value"


func _physics_process(_delta):
	if Input.is_action_just_pressed("mb_left"):
		var mouse_pos = get_global_mouse_position()
		var tile_coords = self.local_to_map(mouse_pos)
		print(tile_coords)
#		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		var tile_left_id = get_cell_source_id(0,Vector2i(tile_coords.x + 1,tile_coords.y))
		var tile_right_id = get_cell_source_id(0,Vector2i(tile_coords.x - 1,tile_coords.y))
		var tile_up_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y + 1))
		var tile_down_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y - 1))
		var customdata :TileData = get_cell_tile_data(0, tile_coords)
		var customdata_left :TileData = get_cell_tile_data(0, Vector2i(tile_coords.x + 1,tile_coords.y))
		var customdata_right :TileData = get_cell_tile_data(0, Vector2i(tile_coords.x - 1,tile_coords.y))
		var customdata_up :TileData = get_cell_tile_data(0, Vector2i(tile_coords.x,tile_coords.y + 1))
		var customdata_down :TileData = get_cell_tile_data(0, Vector2i(tile_coords.x,tile_coords.y - 1))
		var tile_data_left = customdata_left.get_custom_data(tile_custom_value)
		var tile_data_right = customdata_right.get_custom_data(tile_custom_value)
		var tile_data_up = customdata_up.get_custom_data(tile_custom_value)
		var tile_data_down = customdata_down.get_custom_data(tile_custom_value)
		if tile_left_id == -1 and tile_right_id == -1 and tile_up_id == -1  and tile_down_id == -1:
			set_cell(0,tile_coords,1 ,Vector2i(0,0))
		else:
			if customdata:
				var tile_data = customdata.get_custom_data(tile_custom_value)
				print("tile_data:",tile_data)
			else:
#				if tile_data:
#					print("already have custom value:")
				if tile_left_id == 1 and tile_data_left == "not_set" or tile_data_left == "right":
					dir = "right"
					var customdata_left_origin = get_cell_tile_data(0, Vector2i(tile_coords.x + 2,tile_coords.y))
					if customdata_left_origin == "not_set":
						customdata_left_origin.set_custom_data(tile_custom_value, dir)
				elif tile_right_id == 1 and tile_data_right == "not_set" or tile_data_right == "left":
					dir = "left"
					var customdata_right_origin = get_cell_tile_data(0, Vector2i(tile_coords.x - 2,tile_coords.y))
					if customdata_right_origin == "not_set":
						customdata_right_origin.set_custom_data(tile_custom_value, dir)
				elif tile_up_id == 1 and tile_data_up == "not_set" or tile_data_up == "down":
					dir = "down"
					var customdata_up_origin = get_cell_tile_data(0, Vector2i(tile_coords.x,tile_coords.y + 2))
					if customdata_up_origin == "not_set":
						customdata_up_origin.set_custom_data(tile_custom_value, dir)
				elif tile_down_id == 1 and tile_data_down == "not_set" or tile_data_down == "up":
					dir = "up"
					var customdata_down_origin = get_cell_tile_data(0, Vector2i(tile_coords.x,tile_coords.y - 2))
					if customdata_down_origin == "not_set":
						customdata_down_origin.set_custom_data(tile_custom_value, dir)
				set_cell(0,tile_coords,1 ,Vector2i(0,0))
				customdata.set_custom_data(tile_custom_value, dir)
				var result_tile_data = customdata.get_custom_data(tile_custom_value)
				print(result_tile_data)
#		else:
#			print("no custom_value")
#			if tile_left_id == -1 and tile_right_id == -1 and tile_up_id == -1  and tile_down_id == -1:
#				set_cell(0,tile_coords,1 ,Vector2i(0,0))
		print("Left Tile ID:", tile_left_id ,
		"\nRight Tile ID:", tile_right_id, "\nUp Tile ID:", tile_up_id, "\nDown Tile ID:", tile_down_id)
#		if tile_id != 0:
#			if placed == 1:
#				print("placed value:",placed)
#				print("dir:", dir)
#				placed -= 1
#			if tile_left_id == -1 and tile_right_id == -1 and tile_down_id == -1 and tile_up_id == -1:
#				set_cell(0,tile_coords,1 ,Vector2i(0,0))
#				placed += 1
#				print("placed value:",placed)
#			elif tile_left_id == 1 and dir == "right" or tile_right_id == 1 and dir == "left" or tile_up_id == 1 and dir == "down" or tile_down_id == 1 and dir == "up":
#				set_cell(0,tile_coords,1 ,Vector2i(0,0))
#				if tile_left_id == 1:
#					dir = "right"
#				elif  tile_right_id == 1:
#					dir = "left"
#				elif  tile_up_id == 1:
#					dir = "down"
#				elif  tile_down_id == 1:
#					dir = "up"
#			else:
#				pass
				
				
				
				
				
				
				
				
				
#		if customdata:
#			if tile_data:
#				print("yesss!!!!")
#			else:
#				print("shooott")
#				customdata.set_custom_data(tile_custom_value, dir)
func place_block():
	

	if Input.is_action_just_pressed("mb_right"):
		var tile_coords = (get_global_mouse_position() / TILE_SIZE).floor()
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		if tile_id == 1:
			set_cell(0,tile_coords,-1 ,Vector2i(0,0))
 
