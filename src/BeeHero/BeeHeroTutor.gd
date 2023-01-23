extends KinematicBody2D
onready var tap_sprite = $"../MarginContainer/VBoxContainer2/tap"
const GRAVITY  = 55000
var velocity: = Vector2.DOWN
var move: = 0.0
var up_power: = 1.2
var start_pos


func _ready() -> void:
	tap_sprite.visible = false
	start_pos = position


func _physics_process(delta: float) -> void:
	if position.y < start_pos.y:
		velocity.y += GRAVITY/1.7

	if (Input.is_action_pressed("move_up")):
		tap_sprite.visible = true
		velocity.y += -GRAVITY
	velocity = move_and_slide(velocity * delta)
