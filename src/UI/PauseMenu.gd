extends CanvasLayer

func _ready() -> void:
	get_tree().paused = true


func _on_MainMenu_pressed() -> void:
	get_tree().change_scene("res://src/UI/MainMenu.tscn")


func _on_ButtonReset_pressed() -> void:
	get_parent().get_tree().reload_current_scene()
	get_tree().paused = false
