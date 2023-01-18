extends Sprite

const X_SIZE: = 1125
const Y_SIZE: = 2436

export (NodePath) var path_to_bee
onready var bee = get_node(path_to_bee)

func _physics_process(delta: float) -> void:
	if (bee.position.y < position.y - (Y_SIZE / 2)):
		position.y -= Y_SIZE * 2
	elif (bee.position.y > position.y + (Y_SIZE * 1.7)):
		position.y += Y_SIZE * 2
