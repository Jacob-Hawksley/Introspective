extends RichTextLabel
var index = 0
func _process(delta: float) -> void:
	text = Main.text[index]
	if Input.is_action_just_pressed("accept"):
		if index < len(Main.text)-1:
			index += 1
		else:
			index = 0
			Main.text = ['']
			
