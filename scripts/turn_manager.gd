extends Node

var player_turn = true

@onready var enemies = get_tree().get_nodes_in_group("enemies")


func can_player_act():
	return player_turn

func end_player_turn(player_position):
	player_turn = false
	# updated the turn(s) for future enemIES
	run_enemy_turns(player_position)
	player_turn = true

func run_enemy_turns(player_position):
	for current_enemy in enemies:
		current_enemy.take_turn(player_position)
