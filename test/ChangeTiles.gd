extends TileMap

const TILE_SIZE = 16 # Replace this with your actual tile size if different

# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	if Input.is_action_pressed("mb_left"):
		# Get the current mouse position in local coordinates of the "ChangeTiles" node
		var global_mouse_pos = get_global_mouse_position()
		# Convert the local mouse position to the corresponding tile coord
		var tile_coords = (global_mouse_pos / TILE_SIZE) - Vector2(1,1)
		print(tile_coords)
#		if get_global_mouse_position().x + 4 < tile_coords.x:
#			print("yes x")
#			tile_coords.x -= 16
#		if get_global_mouse_position().y + 4 < tile_coords.y:
#			print("yes y")
#			tile_coords.y -= 16
		# Get the tile ID at the mouse position on the specified layer
		var tile_id = get_cell_source_id(0,Vector2i(tile_coords))
		# Perform any actions based on the detected tile ID
		print("Tile ID at mouse position:", tile_id)
#		if tile_id == 0:
		set_cell(0,tile_coords,1 ,Vector2i(0,0))
