extends Area2D

func _ready():
	respawn()

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().current_scene.add_point()
		respawn()

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		get_tree().current_scene.add_point()
		respawn()

func respawn():
	var p = Vector2(randf_range(100, 1100), randf_range(0, 650))
	for item in get_parent().get_children():
		if item != self and item.position.distance_to(p) < 120:
			p = Vector2(randf_range(100, 1100), randf_range(0, 650))
	position = p
