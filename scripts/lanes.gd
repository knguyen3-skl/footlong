extends ColorRect

@export var player: CharacterBody2D

var left = Vector2(98,35)
var right = Vector2(870,35)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.left == true:
		player.global_position = left
	elif Global.right == true:
		player.global_position = right


func _left_lane(area: Area2D) -> void:
	if area.is_in_group("player"):
		Global.left = true
		Global.centre = false
