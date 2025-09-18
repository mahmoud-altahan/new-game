extends RigidBody2D
@onready var gamemanger: Node = %gamemanger

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D :
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 40):
			print("destroy enemy")
			queue_free()
			body.jump()
		else:
			print("decrease a heart")
			gamemanger.decrease_health()
			if (x_delta > 0):
				body.jump_aside(500)
			else:
				body.jump_aside(-500)
			
