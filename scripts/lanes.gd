extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _left_lane(area: Area2D) -> void:
	if area.is_in_group("player"):
		Global.left = true
		Global.centre = false
		print("left")
