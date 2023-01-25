extends Area2D
onready var player = $AnimationPlayer
onready var collision = $CollisionShape2D
var level
func _ready() -> void:
	level = get_parent().get_parent()


func _on_PickUP_body_entered(body: Node) -> void:
	collision.set_deferred("disabled", true)
	level.update_coins_count()
	player.play("pickup_die")

func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if anim_name == "pickup_die":
		queue_free()
