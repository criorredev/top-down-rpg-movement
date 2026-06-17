extends CharacterBody2D

@export var speed = 60
@export var player: CharacterBody2D

func _physics_process(_delta):
	var input = Input.get_vector("left", "right", "up", "down")
	velocity = input * speed
	if Input.is_action_pressed("player_run"):
		velocity = input * (speed * 1.828)
	move_and_slide()
