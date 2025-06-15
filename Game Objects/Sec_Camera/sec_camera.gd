extends Area2D

signal spotted_player(spotter)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spotted_player.connect(GameManager.player_spotted)


func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		spotted_player.emit(self)
