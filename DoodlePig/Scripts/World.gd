extends Node2D


var cloud_platform = preload("res://Scenes/CloudPlatform.tscn")
var movingcloud_platform = preload("res://Scenes/MovingCloudPlatform.tscn") 


var width
var offset_x = 40

func _ready():
	generateCloud(0)
	pass
	
func generateCloud(y):
	var new_platform
	width = get_viewport_rect().size.x
	randomize()
	for i in range(0,30):
		var rand = rand_range(0,100)
		if rand >= 0 and rand <20 :
			new_platform = movingcloud_platform.instance()
		else:
			new_platform = cloud_platform.instance()
		new_platform.set_position(Vector2(rand_range(-width/2 + offset_x,width/2 - offset_x),y))
		add_child(new_platform)
		y -= rand_range(50,200)

