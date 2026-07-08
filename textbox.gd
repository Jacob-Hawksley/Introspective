extends Sprite2D

func _process(delta: float) -> void:
	if Main.text == '':
		visible = false
	else:
		visible = true
