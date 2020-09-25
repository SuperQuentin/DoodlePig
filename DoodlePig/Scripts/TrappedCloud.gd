extends KinematicBody2D

var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	pass
	
func _physics_process(delta):
	var collision = move_and_collide(Vector2() * delta)
	if collision:
		$AnimationPlayer.play("Tigling")

