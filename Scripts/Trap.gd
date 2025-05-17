extends Area2D

@export var is_set = false 

func set_trap():
	is_set = true

func kill(zombie):
	zombie.queue_free()

func trigger(zombie):
	if (is_set):
		kill(zombie)
		is_set = false 
