extends Area2D

signal attempt_exit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	attempt_exit.connect(GameManager.exit_attempted)

func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		attempt_exit.emit()
