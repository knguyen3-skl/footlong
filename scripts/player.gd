extends CharacterBody2D


@export var animation: AnimationPlayer
@export var centre_to_left: Timer
@export var centre_to_right: Timer
@export var left_to_centre: Timer
@export var right_to_centre: Timer
@export var coin: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_right") and Global.centre == true:
		animation.play("move_right")
		centre_to_right.start()
	elif Input.is_action_just_pressed("ui_left") and Global.centre == true:
		animation.play("move_left")
		centre_to_left.start()
	elif Input.is_action_just_pressed("ui_right") and Global.left == true:
		animation.play("left_centre")
		left_to_centre.start()
	elif Input.is_action_just_pressed("ui_left") and Global.right == true:
		animation.play("right_centre")
		right_to_centre.start()


func _centre_to_left() -> void:
	centre_to_left.stop()
	Global.left = true
	Global.centre = false


func _centre_to_right() -> void:
	centre_to_right.stop()
	Global.right = true
	Global.centre = false


func _left_to_centre() -> void:
	left_to_centre.stop()
	Global.left = false
	Global.centre = true


func _right_to_centre() -> void:
	right_to_centre.stop()
	Global.right = false
	Global.centre = true
	
func _take_damage() -> void:
	Global.health -= 1
	print(Global.health)
	if Global.health == 0:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/game_over.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("coin") and Global.coin_status == false:
		print("to")
		Global.coin_status = true
		body.hide()
