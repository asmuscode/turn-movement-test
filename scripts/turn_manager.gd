extends Node

var player_turn = true

@onready var enemy = get_node("../Enemy")

func can_player_act():
	return player_turn

func end_player_turn(player_position):
	player_turn = false
	enemy.take_turn(player_position)
	player_turn = true
