extends AnimatedSprite2D
func _process(delta: float) -> void:
	if Main.text[0] == '' and Main.decision == [] and not Main.paused:
		if Input.is_action_pressed('up'):
			play("back-walk")
		elif Input.is_action_just_released("up"):
			play("back")
		elif Input.is_action_pressed('down'):
			play("front-walk")
		elif Input.is_action_just_released("down"):
			play("front")
		elif Input.is_action_pressed('left'):
			play("left-walk")
		elif Input.is_action_just_released("left"):
			play("left")
		elif Input.is_action_pressed('right'):
			play("right-walk")
		elif Input.is_action_just_released("right"):
			play("right")
		
