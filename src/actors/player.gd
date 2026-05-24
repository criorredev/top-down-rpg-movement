extends CharacterBody2D

@export var speed = 100

func _physics_process(delta):
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input * speed
	
	
	if Input.is_action_pressed("player_run"):
		velocity = input * (speed * 1.828)
	move_and_slide()
