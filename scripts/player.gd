extends CharacterBody2D

var target_position = Vector2.ZERO
#The Player asks the GridComponent a question, 
#the GridComponent calculates the answer, and return sends that answer back
@onready var grid_component = get_node("../GridComponent")
@onready var turn_manager = get_node("../TurnManager")

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			if turn_manager.can_player_act():
# This prints the location the user has clicked on the map
				#print(event.position)
				target_position = event.position
				var grid_position = grid_component.world_to_grid(target_position)
				#print("World position: ", world_position)
# Old terminal print system before Vector2i command above combined X,Y
				#print("Grid cell: ", grid_x, ", ", grid_y)
				print("Grid position: ", grid_position)
				move_one_step()
# This prints the location of the player on the map (decimals using pixel)
				#print(position)
				turn_manager.end_player_turn(global_position)

func move_one_step():
	var direction = global_position.direction_to(target_position)
	global_position += direction * 64
