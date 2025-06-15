extends Area2D

signal collect_goal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collect_goal.connect(GameManager.goal_collected)

func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		collect_goal.emit()
