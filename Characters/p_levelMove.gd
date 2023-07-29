extends CharacterBody2D


@export var speed : float = 200.0

@export var jump_vel : float = -300.0
@onready var anim = $Animation


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_pressed("reset"):
		position = Vector2(0, -10)
	
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jump_vel

	if Input.is_action_pressed("right"):
		anim.flip_h = false
		global_position.x += speed * delta
	elif Input.is_action_pressed("left"):
		anim.flip_h = true
		global_position.x -= speed * delta
	else:
		pass
		
	move_and_slide()
	update_animation()
	
	
func update_animation():
		if velocity.y < 0:
			while not is_on_floor():
				anim.play("jump_start")
				if anim.frame == 1:
					anim.pause()
				break
		elif velocity.y > 0:
			while not is_on_floor():
				anim.play("jump_finish")
				break
		elif Input.is_action_pressed("right"):
			anim.play("run")
		elif Input.is_action_pressed("left"):
			anim.play("run")
		else:
			anim.play("idle")

