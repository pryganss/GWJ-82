extends Node

var player: CharacterBody2D

var goal_collected: bool = false

func load_level():
	goal_collected = false

func player_spotted(spotter: Node) -> void:
	print("Player spotted by ", spotter)

func exit_attempted() -> void:
	match goal_collected:
		true:
			print("player can complete level")
		false:
			print("Player attempted to exit")
