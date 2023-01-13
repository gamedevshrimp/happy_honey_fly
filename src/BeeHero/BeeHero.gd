extends KinematicBody2D

const GRAVITY  = 55000
var velocity: = Vector2.DOWN
var move: = 0.0
var up_power: = 1.2

func _physics_process(delta: float) -> void:
	position.x = 570
	velocity.y += GRAVITY
	if (Input.is_action_pressed("move_up")):
		velocity.y *= -up_power
	velocity = move_and_slide(velocity * delta)
