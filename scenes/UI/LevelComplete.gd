extends CanvasLayer


func _ready():
	$MarginContainer/PanelContainer/MarginContainer/VBoxContainer/NextLevelButton.connect("pressed", self, "on_next_button_pressed")
	$MarginContainer/PanelContainer/MarginContainer/VBoxContainer/RestartButton.connect("pressed", self, "on_restart_button_pressed")
	
func on_next_button_pressed():
	$"/root/LeverManager".increment_level()
	
func on_restart_button_pressed():
	$"/root/LeverManager".restart_level()
