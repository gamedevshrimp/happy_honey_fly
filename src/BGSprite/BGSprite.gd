extends Sprite

const Y_SIZE: = 2732

export (NodePath) var path_to_bee
var bee

func _ready() -> void:
	if path_to_bee:
		bee = get_node(path_to_bee)


func _physics_process(delta: float) -> void:
	if bee:
		if (bee.position.y < position.y - (Y_SIZE / 2)):
			position.y -= Y_SIZE * 3
		elif (bee.position.y > position.y + (Y_SIZE * 1.5)):
			position.y += Y_SIZE * 3
