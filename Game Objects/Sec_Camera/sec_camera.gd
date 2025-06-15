extends Area2D

signal spot_player(spotter)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spot_player.connect(GameManager.player_spotted)


func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		spot_player.emit(self)
