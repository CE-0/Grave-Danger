extends CharacterBody2D 

enum MODE {DEFAULT, PLANT, WATER, HARVEST}

@export var drone_mode = MODE.DEFAULT

func water(): 
	if (drone_mode == MODE.WATER):
		pass
