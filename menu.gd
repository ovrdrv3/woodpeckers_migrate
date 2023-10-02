extends Node2D

func _on_title_pressed():
	get_tree().change_scene_to_file("res://world.tscn")

func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_up():
	pass # Replace with function body.


func _on_title_mouse_entered():
	pass # Replace with function body.
