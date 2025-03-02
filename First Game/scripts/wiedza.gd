extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup")
	var node_to_show = get_node("%" + self.name)  

	if node_to_show:
		node_to_show.show_popup()
		print(self.name + " is now visible!")  
	else:
		print("Node %" + self.name + " not found!")
