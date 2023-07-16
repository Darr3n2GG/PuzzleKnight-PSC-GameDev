extends CharacterBody2D

@export var speed = 200
@export var friction = 0.01
@export var acceleration = 0.1
@onready var anim = $Animation

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('Right'):
		input.x += 1
	if Input.is_action_pressed('Left'):
		input.x -= 1
	if Input.is_action_pressed('Down'):
		input.y += 1
	if Input.is_action_pressed('Up'):
		input.y -= 1
	return input

func _physics_process(_delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity = velocity.lerp(direction.normalized() * speed, acceleration)
	else:
		velocity = velocity.lerp(Vector2.ZERO, friction)
	move_and_slide()
	update_animation()


func update_animation():
		if Input.is_action_pressed("Up"):
			anim.play("walk_up")
		elif Input.is_action_pressed("Down"):
			anim.play("walk_down")
		elif Input.is_action_pressed("Left") or Input.is_action_just_pressed("Right"):
			anim.play("walk_side")
			if Input.is_action_pressed("Left"):
				anim.flip_h = false
			else:
				anim.flip_h = true
		else:
			anim.play("idle_down")