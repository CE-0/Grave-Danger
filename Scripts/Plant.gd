extends Area2D

func spawn_corn(x, y):
	var cornInst = preload("res://Game Assets/Corn.tscn").instantiate() 
	cornInst.position = Vector2(x, y)
