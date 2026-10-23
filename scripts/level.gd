extends Node2D

var random_coin = 1

@export var health_1: Sprite2D
@export var health_2: Sprite2D
@export var health_3: Sprite2D
@export var coin_1: StaticBody2D
@export var timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.health == 3:
		health_1.show()
		health_2.show()
		health_3.show()
	elif Global.health == 2:
		health_3.hide()
	elif Global.health == 1:
		health_2.hide()


func _coin_spawn() -> void:
	random_coin = randi_range(1,3)
	Global.coin_status = true
	
