extends Sprite2D

@export var layer = 1
var speedoffsetx = 1
var speedoffsety = 1
@onready var player = $"../Player_Level"

func _process(_delta):
	position.x = player.position.x * layer * speedoffsetx
	if player.position.y < 0:
		position.y = player.position.y * layer * speedoffsety
	
