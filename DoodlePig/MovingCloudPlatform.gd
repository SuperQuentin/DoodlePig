extends KinematicBody2D

var camera
var direction = 1

func _ready():
	camera = get_node("/root/World/Camera2D")
	set_physics_process(true)
	pass 
	
func _physics_process(delta):
	if global_position.x > get_viewport_rect().size.x/2 - 32 :
		direction = -1
	if global_position.x < -get_viewport_rect().size.x/2 + 32: 
		direction = 1
	move_and_collide(Vector2(100*delta*direction,0))


