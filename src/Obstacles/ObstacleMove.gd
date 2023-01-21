extends Area2D

export var move_speed: = 100.0
export var direction: = 1
export (PackedScene) var pause_menu
export var shift_distance = 1500

var start_pos_x
var left_border
var right_border


func _ready() -> void:
	start_pos_x = position.x
	left_border = start_pos_x - shift_distance
	right_border = start_pos_x + shift_distance
	
func _process(delta: float) -> void:
	if position.x > right_border or position.x < left_border:
		direction *= -1
	
	position.x += move_speed * direction * delta


func _on_Obstacle4_body_entered(body: Node) -> void:
	var pause_menu_inst = pause_menu.instance()
	get_parent().add_child(pause_menu_inst)
