extends Node

@onready var points_label: Label = %pointslabel
@export var hearts : Array[Node]
var points = 0
var lives = 3
func decrease_health():
	lives -= 1 
	print(lives)
	for h in 3 :
		if (h< lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if(lives==0):
		print("DEAD!!!")
		get_tree().call_deferred("reload_current_scene")
func add_point() -> void:
	points += 1
	print("Points: ", points)
	points_label.text = "Points: " + str(points)
