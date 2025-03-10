extends CharacterBody2D

const SPEED = 130.0

@onready var animated_sprite = $AnimatedSprite2D
@onready var hud = %Hud
@onready var canvas_koniec_gry = %KoniecCanvas

func _physics_process(delta):
	# Get the input direction: -1, 0, 1
	var direction_x = Input.get_axis("move_left", "move_right")
	var direction_y = Input.get_axis("move_up", "move_down")
		
	# Play animations
	if direction_x == 0 and direction_y == 0:
		animated_sprite.play("idle")
	elif direction_x > 0:
		animated_sprite.play("go_right")
	elif direction_x < 0:
		animated_sprite.play("go_left")
	elif direction_y > 0:
		animated_sprite.play("go_down")
	elif direction_y < 0:
		animated_sprite.play("go_up")

	# Apply movement
	if not hud.is_game_paused() and not canvas_koniec_gry.visible:
		velocity.x = direction_x * SPEED * (sqrt(2)/2 * abs(direction_y) + 1 - abs(direction_y))
		velocity.y = direction_y * SPEED * (sqrt(2)/2 * abs(direction_x) + 1 - abs(direction_x))

		move_and_slide()
