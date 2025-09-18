extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		# Defer reloading the scene to avoid physics callback error
		get_tree().call_deferred("reload_current_scene")
