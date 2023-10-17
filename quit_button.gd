extends Area2D

@onready var normal_text = $quit
@onready var bold_text = $quit_bold

func _ready():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent

func _on_mouse_entered():
	normal_text.modulate.a = 0.0  # Fully transparent
	bold_text.modulate.a = 1.0    # Fully opaque

func _on_mouse_exited():
	normal_text.modulate.a = 1.0  # Fully opaque
	bold_text.modulate.a = 0.0    # Fully transparent
