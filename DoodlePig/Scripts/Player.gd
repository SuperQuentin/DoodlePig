extends RigidBody2D

export(NodePath) var camera_path
var camera

var jump_speed = 600
var speed = 300

var width
var height

var sprite

func _ready():
	width = get_viewport_rect().size.x
	height = get_viewport_rect().size.y
	camera = get_node(camera_path)
	sprite = get_node("Sprite")
	set_physics_process(true)
	pass # Replace with function body.

func _physics_process(delta):
	var left_key = Input.is_action_pressed("ui_left")
	var right_key = Input.is_action_pressed("ui_right")
	
	if get_linear_velocity().y > 0:
		$Fall.play("PlayFall")
	if left_key:
		set_linear_velocity(Vector2(-speed, get_linear_velocity().y))
		sprite.set_flip_h(false)
	if right_key:
		set_linear_velocity(Vector2(speed, get_linear_velocity().y))
		sprite.set_flip_h(true)
	if !left_key and !right_key:
		set_linear_velocity(Vector2(0,get_linear_velocity().y))

func collision(body):
	$Fall.play("Stay")
	if body.is_in_group('Paddles') and get_linear_velocity().y > 0:
		set_linear_velocity(Vector2(0,-jump_speed))
		


func exit_screen():
	if position.x > camera.position.x:
		if position.x > camera.position.x-(width/2-10):
			set_position(Vector2(-width/2-10,position.y))
	else:
		if position.x < camera.position.x+(width/2-10):
			set_position(Vector2(width/2-10,position.y))
	if position.y >= camera.position.y+(height/2):
		get_tree().change_scene(("res://Scenes/GameOver.tscn"))

	pass 

