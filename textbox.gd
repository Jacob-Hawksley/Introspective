extends Sprite2D

func _process(delta: float) -> void:
	if Main.text[0] == '':
		visible = false
	else:
		visible = true
