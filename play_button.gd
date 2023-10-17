extends Area2D

@onready var normal_text = $play
@onready var bold_text = $play_bold

var mouse_in_play_collision: bool = false


func _ready():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent
	
func _process(delta):
	if Input.is_action_just_pressed('left_mouse_click') && mouse_in_play_collision:
		get_tree().change_scene_to_file("res://world.tscn")

func _on_mouse_entered():
	normal_text.modulate.a = 0.0  # Fully transparent
	bold_text.modulate.a = 1.0    # Fully opaque
	
	mouse_in_play_collision = true

func _on_mouse_exited():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent
	
	mouse_in_play_collision = false
