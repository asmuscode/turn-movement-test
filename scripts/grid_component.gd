extends Node

var cell_size = 64

func world_to_grid(world_position):
	var grid_x = int(world_position.x / cell_size)
	var grid_y = int(world_position.y / cell_size)
	return Vector2i(grid_x, grid_y)
