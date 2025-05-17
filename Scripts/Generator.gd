extends StaticBody2D

@onready var audioPlayer = $AudioStreamPlayer2D 

#sounds
var running = preload("res://SFX/Running Generator.wav") 
var damaged = preload("res://SFX/Generator Damaged.wav")
var fixed = preload("res://SFX/Generator Fixed.wav")

func _process(delta):
	if (!audioPlayer.is_playing()):
		audioPlayer.stream = running
		audioPlayer.play()
