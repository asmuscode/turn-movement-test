extends CharacterBody2D

var target_position = Vector2.ZERO
var cell_size = 64

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
# this prints the location the user has clicked on the map
#			print(event.position)
			target_position = event.position
			var grid_x = int(target_position.x / cell_size)
			var grid_y = int(target_position.y / cell_size)
			print("Grid cell: ", grid_x, ", ", grid_y)
			move_one_step()
# this prints the location of the player on the map
			print(position)
			var enemy = get_node("../Enemy")
			enemy.take_turn(global_position)

func move_one_step():
	var direction = global_position.direction_to(target_position)
	global_position += direction * 64
