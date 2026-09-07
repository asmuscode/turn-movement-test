extends Node

func move_one_step(character, target_position):
	var direction = character.global_position.direction_to(target_position)
	character.global_position += direction * 64    
