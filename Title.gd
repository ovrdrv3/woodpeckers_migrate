extends RichTextLabel

# carraige return
var cr = "
"
# Store the original text
var original_text = cr + "[wave amp=200 freq=0.5]woodpeckers migrate[/wave]"
# Store the plain text without the wave effect
var plain_text = cr + "[wave amp=100 freq=0.25]woodpeckers migrate[/wave]"

func _ready():
	# Apply the original text with the wave effect at the beginning
	text = original_text

# Function connected to the mouse_entered signal
func _on_mouse_entered():
	# Remove the wave effect when the mouse enters
	text = plain_text

# Function connected to the mouse_exited signal
func _on_mouse_exited():
	# Reapply the wave effect when the mouse exits
	text = original_text
