extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer
@onready var hud = %Hud

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup")
	if hud:  
		hud.add_time(30)
