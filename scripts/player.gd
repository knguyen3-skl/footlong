extends CharacterBody2D

@export var animation: AnimationPlayer
@export var centre_to_left: Timer
@export var centre_to_right: Timer

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


func _centre_to_left() -> void:
	centre_to_left.stop()
	Global.left = true
	Global.centre = false


func _centre_to_right() -> void:
	centre_to_right.stop()
	Global.right = true
	Global.centre = false
