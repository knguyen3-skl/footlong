extends StaticBody2D

@export var area2D: Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.coin_status == false:
		area2D.monitorable = false
		area2D.monitoring = false
	else:
		area2D.monitorable = true
		area2D.monitoring = true
