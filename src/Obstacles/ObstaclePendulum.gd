extends Area2D
export var rotation_speed = 100
export (PackedScene) var pause_menu
var direction = 1
 
func _process(delta: float) -> void:
	if rotation_degrees > 90 or rotation_degrees < -90:
		direction *= -1 
	rotation_degrees += rotation_speed * delta * direction


func _on_Obstacle_body_entered(body: Node) -> void:
	var pause_menu_inst = pause_menu.instance()
	get_parent().add_child(pause_menu_inst)
