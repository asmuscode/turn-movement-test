extends CharacterBody2D

var target_position = Vector2.ZERO
var current_action = "wait"
#The Player asks the GridComponent a question, 
#the GridComponent calculates the answer, and return sends that answer back
@onready var grid_component = get_node("../GridComponent")
@onready var turn_manager = get_node("../TurnManager")
@onready var movement_component = get_node("MovementComponent")

func _input(event):
	if event is InputEventKey:
		if event.pressed:
			if event.keycode == KEY_M:
				current_action = "move"
				print("Current action: ", current_action)
			if event.keycode == KEY_W:
				current_action = "wait"
				print("Current action: ", current_action)
	if event is InputEventMouseButton:
		if event.pressed:
			if turn_manager.can_player_act():
				target_position = event.position

				var grid_position = grid_component.world_to_grid(target_position)
				print("Grid position: ", grid_position)

				if current_action == "move":
					movement_component.move_one_step(self, target_position)
				if current_action == "wait":
					print("Player is waiting.")
#BELLOW Turn manager is one tab over so its not in the "move" check, but it is still part of the player turn. 
#The player can move and then attack in the same turn, so we don't want to end the turn until after the attack.
				turn_manager.end_player_turn(global_position)

# Old terminal print system before Vector2i command above combined X,Y
				#print("Grid cell: ", grid_x, ", ", grid_y)
				#print("World position: ", world_position)
# This prints the location of the player on the map (decimals using pixel)
				#print(position)
# This prints the location the user has clicked on the map
				#print(event.position)

#Old MovementComponent code that was moved to movement_component.gd
#func move_one_step():
	#var direction = global_position.direction_to(target_position)
	#global_position += direction * 64
