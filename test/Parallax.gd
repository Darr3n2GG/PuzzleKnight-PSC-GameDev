extends ParallaxLayer

func _ready():
	set_mirroring(motion_mirroring)

func _process(_delta):
	motion_mirroring = Vector2(1080,0)
