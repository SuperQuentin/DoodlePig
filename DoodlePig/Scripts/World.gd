extends Node2D

var platform = preload('res://Instances/Platform.tscn')
var width

func _ready():
	width = get_viewport_rect().size.x
	randomize()
	var y = 0
	while y > -4000:
		var new_platform = platform.instance()
		new_platform.set_position(Vector2(rand_range(-width/2,width/2),y))
		add_child(new_platform)
		y -= rand_range(0,100)
	
	pass
