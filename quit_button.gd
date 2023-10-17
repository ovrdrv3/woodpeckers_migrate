extends Area2D

@onready var normal_text = $quit
@onready var bold_text = $quit_bold

var mouse_in_quit_collision: bool = false

func _ready():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent
	
		
func _process(delta):
	if Input.is_action_just_pressed('left_mouse_click') && mouse_in_quit_collision:
		get_tree().quit()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_mouse_entered():
	normal_text.modulate.a = 0.0  # Fully transparent
	bold_text.modulate.a = 1.0    # Fully opaque
	
	mouse_in_quit_collision = true

func _on_mouse_exited():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent
	
	mouse_in_quit_collision = false
