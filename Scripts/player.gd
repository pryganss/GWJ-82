extends CharacterBody2D


const SPEED = 600.0
const JUMP_VELOCITY = -600.0
const GRAVITY = 1700
const FALL_GRAVITY = 2000

var can_jump: bool = false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		if velocity.y >= 10.0:
			velocity.y += FALL_GRAVITY * delta
		else:
			velocity.y += GRAVITY * delta
		if $"%Coyote Timer".is_stopped():
			$"%Coyote Timer".start()
	else:
		can_jump = true

	# Handle jump.
	if Input.is_action_just_pressed("jump") or not $"%Jump Buffer Timer".is_stopped():
		if can_jump:
			$"%Coyote Timer".stop()
			$"%Jump Buffer Timer".stop()
			can_jump = false
			velocity.y = JUMP_VELOCITY
		elif $"%Jump Buffer Timer".is_stopped(): $"%Jump Buffer Timer".start()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = 0

	move_and_slide()

func _on_coyote_timer_timeout() -> void:
	can_jump = false
