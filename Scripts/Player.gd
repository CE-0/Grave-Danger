extends CharacterBody2D

@export var on_computer = true 

func next_to_computer():
	return false

func computer_switch():
	if (next_to_computer()):
		if (!on_computer):
			on_computer = true
		else:
			on_computer = false
