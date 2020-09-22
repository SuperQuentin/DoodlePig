extends Camera2D

signal move

export(NodePath) var player_path

var player

var histo_camera_Y
var generate_step = -100


func _ready():
	player = get_node(player_path)
	set_process(true)
	histo_camera_Y = get_camera_position().y
	pass 

func _process(delta):
	var player_y = player.position.y
	if  player_y < position.y:
		set_position(Vector2(0,player_y))
		var cam_y = get_camera_position().y
		
		if cam_y <= histo_camera_Y + generate_step:
			histo_camera_Y = cam_y
			emit_signal("move",histo_camera_Y + generate_step)
	pass
