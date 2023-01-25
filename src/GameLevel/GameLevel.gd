extends Node2D
var count = 0
onready var label = $"%Label"

func _ready() -> void:
	count = 0

func update_coins_count():
	count += 1
	label.text = str(count)
