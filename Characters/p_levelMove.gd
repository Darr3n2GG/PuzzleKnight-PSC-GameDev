extends CharacterBody2D


@export var speed : float = 200.0
@export var jump_vel : float = -250.0
@onready var anim = $Animation

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var animation_locked : bool = false

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Reset
	if Input.is_action_pressed("reset"):
		position = Vector2(5, 0)
	
#	# Handle Jump.
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jump_vel


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction = Input.get_axis("Move_Left", "Move_Right")
#	if direction:
#		velocity.x = direction * speed
#		anim.play("sprint")
#	else:
#		velocity.x = move_toward(velocity.x, 0, speed)
#		anim.play("idle")
	if Input.is_action_pressed("right"):
		global_position.x += speed * delta
		anim.flip_h = false
	elif Input.is_action_pressed("left"):
		global_position.x -= speed * delta
		anim.flip_h = true
	else:
		pass
		
#	if Input.is_action_pressed("Crouch"):
#		global_position.y += speed * delta
#	if Input.is_action_pressed("Jump"):
#		global_position.y -= speed * delta
#		velocity.x = 0
#		velocity.y = 0
	move_and_slide()
	update_animation()
	
	
func update_animation():
#	if not animation_locked:
#		if velocity.y < 0:
#			while not is_on_floor():
#				anim.play("jump start")
#				if anim.frame == 1:
#					anim.pause()
#				break
#		elif velocity.y > 0:
#			while not is_on_floor():
#				anim.play("jump end")
#				break
#		elif Input.is_action_pressed("Move_Left") or Input.is_action_pressed("Move_Right"):
#			anim.play("sprint")
#		else:
			anim.play("level_idle")
	
