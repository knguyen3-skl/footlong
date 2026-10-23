extends CharacterBody2D

var centre = Vector2(475,510)
var left = Vector2(85,510)
var right = Vector2(860,510)
var random_lane = 2

@export var bullet_scene: PackedScene
@export var bullet_spawn: Marker2D
@export var bullet_timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if random_lane == 1:
		global_position = left
	elif random_lane == 2:
		global_position = centre
	else:
		global_position = right


func _shoot() -> void:
	random_lane = randi_range(1,3)
	var bullet = bullet_scene.instantiate()
	bullet.monster = self
	bullet.global_position = bullet_spawn.global_position
	add_sibling(bullet)
	
