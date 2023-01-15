extends Area2D
export var rotation_speed = 100
export (PackedScene) var pause_menu
 
func _process(delta: float) -> void:
	rotation_degrees += 100 * delta
	


func _on_Obstacle_body_entered(body: Node) -> void:
	var pause_menu_inst = pause_menu.instance()
	get_parent().add_child(pause_menu_inst)
