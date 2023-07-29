extends TileMap

##var has_mail := true
#@onready var sceneTree = get_tree()

func _input(event):
	if Input.is_action_pressed("mb_left"):
		var mouse_pos = get_global_mouse_position()
		var tile_coords = self.local_to_map(mouse_pos)
		var tile_id = get_cell_atlas_coords(2, Vector2i(tile_coords))
		
		if tile_id == Vector2i(8, 16):
			set_cell(2, Vector2i(1,0), 1, Vector2i(7, 16))
			get_tree().change_scene_to_file("res://platform_levels/level_tutorial.tscn")
			print("Welcome to tutorial world!")
#
#func load_next_scene():
#	# Load the next scene (replace "res://scenes/next_scene.tscn" with the path to your next scene)
#	sceneTree.scene("res://scenes/level_tutorial.tscn")
