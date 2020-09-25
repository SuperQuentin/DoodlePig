extends KinematicBody2D

var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	pass
	
func _physics_process(delta):
	
	pass

func on_player_touched():
	 tigling()

func tigling():
	print("Cloud go brrrrrrrrrrr")
	get_node("AnimationPlayer").play("Tigling")

func destroy():
	print("Cloud go away")
	get_node("AnimationPlayer").play("Destroy")
	


func _on_animation_finished(anim_name):
	if anim_name == "Tigling":
		destroy()
	get_node("CollisionShape2D").disabled = true
