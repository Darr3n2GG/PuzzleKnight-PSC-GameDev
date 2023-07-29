extends Sprite2D


func _input(_event):

	if Input.is_action_pressed("mb_left"):
		var mouse = get_local_mouse_position()
#		print(mouse)
#		382.5, -125, 607.5 105
		if mouse.x >= 382.5 and mouse.x <= 607.5  and  mouse.y <= 105 and mouse.y >= -125:
			get_tree().change_scene_to_file("res://platform_levels/level_tutorial.tscn")
			print("Welcome to tutorial world!")
			
			
