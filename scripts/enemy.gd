extends CharacterBody2D

@onready var grid_component = get_node("../GridComponent")

func take_turn(player_position):
	var grid_position = grid_component.world_to_grid(global_position)
	var direction = global_position.direction_to(player_position)
	global_position += direction * 64
	print("Enemy grid position: ", grid_position)
