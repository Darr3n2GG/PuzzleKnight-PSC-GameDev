extends TileMap


var has_mail := false


func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		var map_pos = local_to_map(event.position)
		var tile_id = get_cell_atlas_coords(2, Vector2i(1,0))

		if tile_id == Vector2i(8, 17):
			has_mail = true
			set_cell(2, Vector2i(1,0), 1, Vector2i(7, 17))
