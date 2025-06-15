extends Node

var player: CharacterBody2D

func player_spotted(spotter: Node) -> void:
	print("Player spotted by ", spotter)

func goal_collected() -> void:
	print("Player collected the goal")

func exit_attempted() -> void:
	print("Player attempted to exit")
