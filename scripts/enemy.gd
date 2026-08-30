extends CharacterBody2D

func take_turn(player_position):
	var direction = global_position.direction_to(player_position)
	global_position += direction * 64
#	print(position)
