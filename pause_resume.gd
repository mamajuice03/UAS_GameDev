extends Control

@onready var animation = $"../"



func _on_resume_pressed():
	animation.pause()


func _on_exit_pressed():
	get_tree().quit()
