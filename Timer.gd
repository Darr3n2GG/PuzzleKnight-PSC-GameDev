extends Timer

var timer = 5.0
var aKey = false
var dKey = false

func _input(event):
	if event is InputEventKey:
		if Input.is_action_pressed("left"):
			if event.is_pressed():
				aKey = true
				$Timer.start()
			elif event.is_pressed() == false and aKey:
				aKey = false
				$Timer.stop()
		elif Input.is_action_pressed("right"):
			if event.is_pressed():
				dKey = true
				$Timer.start()
			elif event.is_pressed() == false and dKey:
				dKey = false
				$Timer.stop()

func _on_Timer_timeout():
	if aKey:
		print("nuЯ")
	if dKey:
		print("Run")
	
	
	
	
