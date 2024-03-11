class_name Scroll_Obj extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll()

func scroll():
	if get_global_mouse_position().x >= 140:
		global_position.x -= 5
	if get_global_mouse_position().x <= -140:
		global_position.x += 5
	
	#wrap
	if global_position.x < -960:
		global_position.x = 950
	if global_position.x > 960:
		global_position.x = -950
