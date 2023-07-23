extends CharacterBody2D

@onready var ani_spr = $AniPlayer


const sp = 300.0
const jump_vel = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jump_vel
#		ani_spr.play ("jump")

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	

	if Input.is_action_pressed("right"):
		global_position.x += delta * sp
		await(get_tree().create_timer(5))
#		ani_spr.play ("walking")
#		ani_spr.flip_h = false
		
	elif Input.is_action_pressed("left"):
		global_position.x -= delta * sp
#		ani_spr.play ("walking")
#		ani_spr.flip_h = true
		

	
	elif Input.is_action_just_pressed("reset"):
		position = Vector2(5, 0)
		
	else:
		ani_spr.play("idle")
		pass
#		
	

	move_and_slide()

