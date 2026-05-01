extends Area2D

@export var move_diraction : Vector2
@export var move_speed : float = 20

@onready var start_pos : Vector2 = global_position
@onready var target_pos : Vector2 = global_position + move_diraction

func _physics_process(delta):
	global_position = global_position.move_toward(target_pos, move_speed * delta)
	
