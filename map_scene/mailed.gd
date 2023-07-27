extends TileMap


var has_mail := true


func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.position.x < 717 and event.position.x > 675 and event.position.y < 406 and event.position.y > 323 :
#		var map_pos = local_to_map(event.position)
			var tile_id = get_cell_atlas_coords(2, Vector2i(1,0))
			if tile_id == Vector2i(8, 16):
				has_mail = false
			set_cell(2, Vector2i(1,0), 1, Vector2i(7, 16))
