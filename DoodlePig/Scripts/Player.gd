extends RigidBody2D

var jump_speed = 600

func _ready():
	pass

func collision(body):
	if body.is_in_group('paddles'):
		set_linear_velocity(Vector2(0,-jump_speed));
	pass
