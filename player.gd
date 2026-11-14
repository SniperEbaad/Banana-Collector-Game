extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	move_and_slide()
	position.x = clamp(position.x, 50, 1150)
	position.y = clamp(position.y, -50, 700)
