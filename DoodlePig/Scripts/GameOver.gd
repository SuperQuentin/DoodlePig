extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/StayGameOver.play("GameOver")
	get_node("label_score/score").text = str(get_tree().get_root().get_node("global_variable").score) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	
	get_tree().change_scene(("res://Scenes/World.tscn"))

	pass # Replace with function body.

