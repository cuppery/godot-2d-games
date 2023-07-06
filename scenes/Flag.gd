extends Node2D

signal play_won


func _ready():
	$Area2D.connect("area_entered", self, "on_area_entered")
	
func on_area_entered(_area2d):
	emit_signal("play_won")
	$Particles2D.emitting = true
	$AudioStreamPlayer.play()
	$RandomAudioStreamPlayer.play()
