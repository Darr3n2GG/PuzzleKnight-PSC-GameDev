extends TileMap

@export var TILE_SIZE = 16 
@onready var player = $"../Player_Level"
@export var placed = 0
@export var dir = 0
func _physics_process(_delta):
	if Input.is_action_just_pressed("mb_left"):
		var tile_coords = (get_global_mouse_position() / TILE_SIZE).floor()
		print(tile_coords)
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		var tile_left_id = get_cell_source_id(0,Vector2i(tile_coords.x + 1,tile_coords.y))
		var tile_right_id = get_cell_source_id(0,Vector2i(tile_coords.x - 1,tile_coords.y))
		var tile_up_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y + 1))
		var tile_down_id = get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y - 1))
		print("Left Tile ID:", tile_left_id ,
		"\nRight Tile ID:", tile_right_id, "\nUp Tile ID:", tile_up_id, "\nDown Tile ID:", tile_down_id)
		if tile_left_id == 1:
			dir = "right"
		elif  tile_right_id == 1:
			dir = "left"
		elif  tile_up_id == 1:
			dir = "down"
		elif  tile_down_id == 1:
			dir = "up"
		if tile_left_id == -1 and tile_right_id == -1 and tile_down_id == -1 and tile_up_id == -1:
			set_cell(0,tile_coords,1 ,Vector2i(0,0))
		elif tile_left_id == 1 and dir == "right" or tile_right_id == 1 and dir == "left" or tile_up_id == 1 and dir == "down" or tile_down_id == 1 and dir == "up":
			print("place is 1")
			set_cell(0,tile_coords,1 ,Vector2i(0,0))
		else:
			pass
	if Input.is_action_just_pressed("mb_right"):
		var tile_coords = (get_global_mouse_position() / TILE_SIZE).floor()
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		if tile_id == 1:
			set_cell(0,tile_coords,-1 ,Vector2i(0,0))
 
