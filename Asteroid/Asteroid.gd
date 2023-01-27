extends KinematicBody2D

var velocity = Vector2.ZERO
var initial_speed = 3.0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,randf()*initial_speed).rotated(randf()*2*PI)

func _physics_process(_delta):
	position = position + velocity
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
