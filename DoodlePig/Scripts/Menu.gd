extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/Stay.play("Menu")
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		_on_Button_pressed()
		


func _on_Button_pressed():
	
	get_tree().change_scene(("res://Scenes/World.tscn"))

	pass # Replace with function body.
