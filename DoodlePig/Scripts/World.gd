extends Node2D

var platform = preload("res://Instances/CloudPlatform.tscn")
var width

func _ready():
	generateCloud()
	pass
	
func generateCloud():
	width = get_viewport_rect().size.x
	randomize()
	var y = 0
	for i in range(0,30):
		var new_platform = platform.instance()
		new_platform.set_position(Vector2(rand_range(-width/2,width/2),y))
		add_child(new_platform)
		y -= rand_range(30,130)
	pass
