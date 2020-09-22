extends Node2D

var platform = preload("res://Instances/CloudPlatform.tscn")
var width
var offset_x = 40

func _ready():
	generateCloud(0)
	pass
	
func generateCloud(y):
	width = get_viewport_rect().size.x
	randomize()
	for i in range(0,30):
		var new_platform = platform.instance()
		new_platform.set_position(Vector2(rand_range(-width/2 + offset_x,width/2 - offset_x),y))
		add_child(new_platform)
		y -= rand_range(30,130)
	pass

