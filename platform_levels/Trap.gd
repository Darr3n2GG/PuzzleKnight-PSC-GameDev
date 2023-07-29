extends Area2D


@onready var player = $Player_Level
@onready var tileset = $TileMap_Level



func _on_body_entered(_body):
#	print(tile_coords)
	var player_left = player.position + 1
#	var tile_id = tileset.get_cell_source_id(0,Vector2i(tile_coords))
#	var tile_left_id = tileset.get_cell_source_id(0,Vector2i(tile_coords.x + 1,tile_coords.y))
#	var tile_right_id = tileset.get_cell_source_id(0,Vector2i(tile_coords.x - 1,tile_coords.y))
#	var tile_up_id = tileset.get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y + 1))
#	var tile_down_id = tileset.get_cell_source_id(0,Vector2i(tile_coords.x,tile_coords.y - 1))
#	if tile_left_id != -1 or tile_right_id != -1 or tile_up_id != -1  or tile_down_id != -1:
#		if tile_id != 0:
	tileset.set_cell(0,player_left,1 ,Vector2i(0,0))
