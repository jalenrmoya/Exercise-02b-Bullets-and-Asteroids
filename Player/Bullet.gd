extends KinematicBody2D

var damage = 1.00
var speed = 500.00
var velocity = Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,-speed).rotated(self.rotation)

func _physics_process(delta):
	velocity = move_and_slide(velocity, Vector2.ZERO)
	position.x = wrapf(position.x, 0, 1024.0)
	position.y = wrapf(position.y, 0, 600.0)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(_body):
	queue_free()

func _on_Timer_timeout():
	queue_free()
