extends CharacterBody2D

@onready var player := $"../Player"

@export var speed = 60

var enemy_pathfind

func _physics_process(_delta):
	var player_pos: Vector2 = $"../Player".global_position
	enemy_pathfind = Vector2(player_pos.x - global_position.x, player_pos.y - global_position.y).normalized()
	# print(enemy_pathfind)
	velocity = enemy_pathfind * speed
	move_and_slide()
