extends Area2D

@onready var gamemanger: Node = %gamemanger


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D" ):
		queue_free()
		gamemanger.add_point()
