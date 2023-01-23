extends Area2D

onready var lvl_manager : SwitchLVLManager = get_node("/root/SwitchLevelManager")

func _on_TuturTarget_body_entered(body: Node) -> void:
	lvl_manager.scene_transition("res://src/GameLevel/GameLevel.tscn")
