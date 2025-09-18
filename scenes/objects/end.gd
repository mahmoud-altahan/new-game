extends Area2D

@export var target_level: PackedScene

func _on_body_entered(body: Node) -> void:
	# Prefer a type check rather than comparing the node name
	if body is CharacterBody2D:
		# make sure the exported scene is actually set in the Inspector
		if target_level:
			# defer the scene change to avoid "during physics/frame" errors
			get_tree().call_deferred("change_scene_to_packed", target_level)
		else:
			push_warning("target_level is not set on %s" % [self.get_path()])
