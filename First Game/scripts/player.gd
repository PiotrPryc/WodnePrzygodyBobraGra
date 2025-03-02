extends CharacterBody2D

const SPEED = 130.0

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	# Get the input direction: -1, 0, 1
	var direction_x = Input.get_axis("move_left", "move_right")
	var direction_y = Input.get_axis("move_up", "move_down")
	
	# Flip the Sprite
	if direction_x > 0:
		animated_sprite.flip_h = false
	elif direction_x < 0:
		animated_sprite.flip_h = true
	
	# Play animations
	if direction_x == 0 and direction_y == 0:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("run")

	# Apply movement
	velocity.x = direction_x * SPEED
	velocity.y = direction_y * SPEED

	move_and_slide()
