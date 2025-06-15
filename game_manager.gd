extends Node

var player: CharacterBody2D

var goal_collected: bool = false
func player_spotted(spotter: Node) -> void:
	print("Player spotted by ", spotter)

func exit_attempted() -> void:
	print("Player attempted to exit")
