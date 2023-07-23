extends CharacterBody2D

@export var speed = 1.5
#@export var friction = 0.01
#@export var acceleration = 0.1
@onready var anim = $Animation

func _physics_process(_delta):
#	var input = Vector2()
	if Input.is_action_pressed('right'):
		global_position.x += speed
	if Input.is_action_pressed('left'):
		global_position.x -= speed
	if Input.is_action_pressed('down'):
		global_position.y += speed
	if Input.is_action_pressed('up'):
		global_position.y -= speed

	pass
#
#func _physics_process(_delta):
#	var direction = get_input()
#	if direction.length() > 0:
#		velocity = velocity.lerp(direction.normalized() * speed, acceleration)
#	else:
#		velocity = velocity.lerp(Vector2.ZERO, friction)
	move_and_slide()
#	update_animation()



#help code animations!!!!!!
#
#func update_animation():
##		if Input.is_action_pressed("up"):
##			anim.play("walk_up")
###		elif Input.is_action_pressed("Down"):
###			anim.play("walk_down")
##		elif Input.is_action_pressed("left") or Input.is_action_just_pressed("right"):
##			anim.play("walk_side")
##			if Input.is_action_pressed("left"):
##				anim.flip_h = false
##			else:
##				anim.flip_h = true
##		else:
#			anim.play("idle")
