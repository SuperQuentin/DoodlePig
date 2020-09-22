extends Camera2D

export(NodePath) var player_path
var player

func _ready():
	player = get_node(player_path)
	set_process(true)
	pass 

func _process(delta):
	var player_y = player.position.y
	if  player_y < position.y :
		set_position(Vector2(0,player_y))
	pass
