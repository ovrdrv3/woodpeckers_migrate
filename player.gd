extends CharacterBody2D

const SPEED = 600.0
const AGAINST_GRAVITY = 0.85
const WITH_GRAVITY = 1
const DAMPING = 0.95
const THRESHOLD = 5.0
var can_move = false  # New variable to control when the character can start moving

func _ready():
	velocity = Vector2.ZERO
	await get_tree().create_timer(0.1).timeout
	can_move = true 
	
func _physics_process(delta):
	if not can_move:
		return
		
	var direction_y = Input.get_axis("ui_up", "ui_down")
	var direction_x = Input.get_axis("ui_left", "ui_right")

	if direction_y < 0:
		velocity.y = direction_y * SPEED * AGAINST_GRAVITY
	elif direction_y > 0:
		velocity.y = direction_y * SPEED * WITH_GRAVITY

	if direction_x > 0:
		velocity.x = direction_x * SPEED * AGAINST_GRAVITY
	elif direction_x < 0:
		velocity.x = direction_x * SPEED * WITH_GRAVITY

	if direction_y == 0:
		velocity.y *= DAMPING
		if abs(velocity.y) < THRESHOLD:
			velocity.y = 0

	if direction_x == 0:
		velocity.x *= DAMPING
		if abs(velocity.x) < THRESHOLD:
			velocity.x = 0

	move_and_slide()
	print('velocity:', velocity)  
	print('direction_y:', direction_y)
	print('direction_x:', direction_x)
