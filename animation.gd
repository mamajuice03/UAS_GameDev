extends Node2D

@onready var pause_resume = $Pause

var paused = false

func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		get_tree().paused = true
		pause_resume.show()
		set_physics_process(false)
		paused = true

func pause():
	pause_resume.hide()
	get_tree().paused = false
	paused = false
	set_process_input(true)
	set_physics_process(true)

func _on_resume_pressed():
	pause_resume.play() # Memastikan animasi kembali ke mode play
