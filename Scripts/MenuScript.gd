extends Node2D

@onready var audioPlayer = $AudioStreamPlayer2D 
@onready var startBtn = $"Start Button"
@onready var leaderBtn = $"Leaderboards Button"
@onready var creditsBtn = $"Credits Button"

#Music
var mainTheme = preload("res://Music/Grave Danger Main Theme - Bloodstained Hustle.ogg") 

func to_game() -> void:
	get_tree().change_scene_to_file("res://Game Scenes/Game.tscn")

func to_leaderboard() -> void:
	get_tree().change_scene_to_file("res://Game Scenes/Leaderboard.tscn") 

func to_credits() -> void:
	get_tree().change_scene_to_file("res://Game Scenes/Credits.tscn")

func _process(delta):
	if (!audioPlayer.is_playing()):
		audioPlayer.stream = mainTheme
		audioPlayer.play()
