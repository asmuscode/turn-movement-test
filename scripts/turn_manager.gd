extends Node

@onready var enemy = get_node("../Enemy")

func enemy_turn(player_position):
	enemy.take_turn(player_position)
