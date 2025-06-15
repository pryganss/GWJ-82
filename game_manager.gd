extends Node

var player: CharacterBody2D

func player_spotted(spotter: Node) -> void:
	print("Player spotted by ", spotter)
