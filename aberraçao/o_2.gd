extends Selectables


# Called when the node enters the scene tree for the first time.
func _ready():
	connections()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll()
	change_anim()
