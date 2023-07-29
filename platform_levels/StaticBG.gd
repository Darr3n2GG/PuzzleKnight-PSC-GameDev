extends Sprite2D

@export var layer = 0.5
var speedoffset = 1
@onready var player = $"../Player_Level"

func _process(_delta):
	position = player.position * layer * speedoffset
