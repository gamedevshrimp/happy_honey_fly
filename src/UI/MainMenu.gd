extends CanvasLayer

onready var lvl_manager : SwitchLVLManager = get_node("/root/SwitchLevelManager")

func _on_MainMenu_pressed() -> void:
	lvl_manager.scene_transition("res://src/GameLevel/GameLevel.tscn")
#	get_tree().change_scene("res://GameLevel.tscn")
