extends CharacterBody2D

@export var speed = 60
@export var player: CharacterBody2D

var mouse_pos
var player_pos
var attack_direction

func _physics_process(_delta):
	var input = Input.get_vector("left", "right", "up", "down")
	velocity = input * speed
	if Input.is_action_pressed("player_run"):
		velocity = input * (speed * 1.828)
	move_and_slide()


func _input(event):
	if event.is_action_pressed("attack"):
		mouse_pos = get_global_mouse_position()
		player_pos = global_position
		attack_direction = Vector2(mouse_pos.x - player_pos.x, mouse_pos.y - player_pos.y).normalized() * 30
		print(attack_direction)
		var attack_angle = attack_direction.angle()
		#Area2D.rotation = attack_angle
		#Area2D.position = attack_direction * 30
