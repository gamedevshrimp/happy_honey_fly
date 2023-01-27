extends Position2D

export (PackedScene) var pause_menu


func _on_Obstacle_body_entered(body: Node) -> void:
	var pause_menu_inst = pause_menu.instance()
	get_parent().add_child(pause_menu_inst)
