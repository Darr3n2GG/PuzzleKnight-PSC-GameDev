extends TileMap

#var has_mail := true


func _input(event):
	if event is InputEventMouseButton:
#		print (event.position.x, ",", event.position.y)	
		
		var read_x = event.position.x
		
		var map_x = local_to_map(read_x)
		var map_y = local_to_map(event.position.y)
		print(map_x, ",", map_y)

#		var map_pos = local_to_map(event.position)
#		print(map_pos)
		
		if event.position.x < 652 and event.position.x > 679 and event.position.y < 303 and event.position.y > 381 :
			var tile_id = get_cell_atlas_coords(0, Vector2i(1,0)) 
			if tile_id == Vector2i(8, 16):
	#				has_mail = false
				set_cell(2, Vector2i(1,0), 0, Vector2i(7, 16))
				print("Succesfully exceuted")
