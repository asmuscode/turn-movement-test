extends CharacterBody2D

@onready var grid_component = get_node("../GridComponent")
@onready var movement_component = get_node("MovementComponent")

func take_turn(player_position):
	var grid_position = grid_component.world_to_grid(global_position)
	movement_component.move_one_step(self, player_position)
	#Old movement was here now we have a movement component that handles movement for us
	#var direction = global_position.direction_to(player_position)
	#global_position += direction * 64
	print("Enemy grid position: ", grid_position)
