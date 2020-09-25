extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$BlackHole/AnimationPlayer.play("Aspiration")
	pass
	
func _physics_process(delta):
	
	pass

func on_player_touched():
	 kill()

func kill():
	
	$BlackHole/AnimationPlayer.play("Kill")
	
	_on_animation_finished("Kill")


func nextScene():
	$BlackHole/AnimationPlayer.play("Aspiration")
	


func _on_animation_finished(anim_name):
	if anim_name == "Kill":
		nextScene()
	get_tree().change_scene(("res://Scenes/GameOver.tscn"))
