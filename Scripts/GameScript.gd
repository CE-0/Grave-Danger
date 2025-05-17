extends Node2D

@onready var playerChar = $Player 
@onready var graveArray = [$Grave, $Grave2, $Grave3, $Grave4, $Grave5, 
	$Grave6, $Grave7, $Grave8]
@onready var audPlayer = $AudioStreamPlayer2D 

var score = 0
var maxHealth = 4.0 
var health = maxHealth

func spawn_zombie(x, y):
	var zombieInst = preload("res://Game Assets/Zombie.tscn").instantiate() 
	zombieInst.position = Vector2(x, y)

func lose_health():
	health -= 1

func game_over():
	pass

func _process(delta):
	if (health <= 0):
		game_over()
