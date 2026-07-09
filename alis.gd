extends CharacterBody2D
var speed = 5000

	
func _process(delta: float) -> void:
	if Main.text[0] == '' and Main.decision == []:
		if Input.is_action_pressed("up"):
			velocity.y = -1*speed * delta
			velocity.x = 0
		elif Input.is_action_pressed("down"):
			velocity.y = speed * delta
			velocity.x = 0
		elif Input.is_action_pressed("left"):
			velocity.x = -1*speed * delta
			velocity.y = 0
		elif Input.is_action_pressed("right"):
			velocity.x = speed * delta
			velocity.y = 0
		else:
			velocity = Vector2(0,0)
	else:
		velocity = Vector2(0,0)
func _physics_process(delta: float) -> void:
	move_and_slide()
