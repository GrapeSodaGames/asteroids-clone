extends CharacterBody2D


const SPEED = 100.0
const ROTATION_SPEED = 1.5

func _physics_process(delta):
	
	set_thrust(delta)
	set_rotate(delta)
	move_and_slide()
	
func set_thrust(delta):
	var thrust_input = Input.get_axis("move_forward","move_reverse")
	if thrust_input:
		velocity += transform.y * thrust_input * SPEED * delta
	else:
		velocity = velocity.move_toward(Vector2.ZERO,delta)
func set_rotate(delta):
	var rot_input = Input.get_axis("rotate_left","rotate_right")
	rotation += rot_input * ROTATION_SPEED * delta
	
