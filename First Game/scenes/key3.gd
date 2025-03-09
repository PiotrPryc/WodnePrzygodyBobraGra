extends Area2D


func _on_body_entered(body: Node2D):
	print('e')
	body.get_node('/root/Game/Locks/Lock3').queue_free()
	queue_free()
