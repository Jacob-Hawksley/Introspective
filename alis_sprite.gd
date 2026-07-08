extends AnimatedSprite2D
func _process(delta: float) -> void:
	if Main.text == '':
		if Input.is_action_pressed('left'):
			play("left-walk")
		if Input.is_action_just_released("left"):
			play("left")
		if Input.is_action_pressed('right'):
			play("right-walk")
		if Input.is_action_just_released("right"):
			play("right")
		if Input.is_action_pressed('up'):
			play("back-walk")
		if Input.is_action_just_released("up"):
			play("back")
		if Input.is_action_pressed('down'):
			play("front-walk")
		if Input.is_action_just_released("down"):
			play("front")
