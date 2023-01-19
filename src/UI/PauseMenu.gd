extends CanvasLayer

onready var lvl_manager : SwitchLVLManager = get_node("/root/SwitchLevelManager")

func _ready() -> void:
	get_tree().paused = true


func _on_MainMenu_pressed() -> void:
	lvl_manager.scene_transition("res://src/UI/MainMenu.tscn")


func _on_ButtonReset_pressed() -> void:
	lvl_manager.scene_transition("res://src/GameLevel/GameLevel.tscn")
