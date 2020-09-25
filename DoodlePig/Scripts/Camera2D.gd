extends Camera2D

signal new_cloud(number)
signal on_move(camera_y)


export(NodePath) var player_path

var player

var histo_camera_Y
var generate_step_y 


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
		emit_signal("on_move",cam_y)
		
		if cam_y <= (generate_step_y+800):
			emit_signal("new_cloud", generate_step_y - 150)
			print("cloud as been generate at %f" % generate_step_y )
	pass
	
	
func set_gen_step(y):
	generate_step_y = y
