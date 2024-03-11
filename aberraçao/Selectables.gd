class_name Selectables extends Scroll_Obj

@onready var collision_shape_2d : CollisionShape2D = $CollisionShape2D
@onready var animated_sprite_2d : AnimatedSprite2D = $AnimatedSprite2D


var IsSelectable : bool = false

func _ready():
	connections()

func _process(delta):
	change_anim()

func _on_mouse_entered():
	IsSelectable = true
func _on_mouse_exited():
	IsSelectable = false

func connections():
	self.mouse_entered.connect(_on_mouse_entered)
	self.mouse_exited.connect(_on_mouse_exited)

func change_anim():
	if IsSelectable:
		animated_sprite_2d.play("select")
	else:
		animated_sprite_2d.play("default")
