extends RichTextLabel

func _process(delta: float) -> void:
	text = Main.text
	if Input.is_action_just_pressed("accept") and Main.text != '':
		Main.text = ''
