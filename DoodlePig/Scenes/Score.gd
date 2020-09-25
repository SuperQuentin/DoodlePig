extends Label

func _ready():
	$".".text = "0"

func _on_move(camera_y):
	$".".text = str(int(camera_y*-1))
