extends Area2D

var mouse_pos
var player_pos
var attack_direction

@onready var sword: Sprite2D = $Sword
@onready var sword_timer: Timer = $SwordTimer

func _input(event):
	if event.is_action_pressed("attack"):
		$Sword.show()
		$SwordTimer.start()
		set_monitoring(true)
		mouse_pos = get_global_mouse_position()
		player_pos = global_position
		attack_direction = Vector2(mouse_pos.x - player_pos.x, mouse_pos.y - player_pos.y).normalized()
		print(attack_direction.angle())
		rotation = attack_direction.angle() + 4.71
		position = attack_direction * 15

func _on_sword_timer_timeout() -> void:
	$Sword.hide()
	set_monitoring(false)
