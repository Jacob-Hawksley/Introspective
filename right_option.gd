extends Button
var highlight = false
func _process(delta: float) -> void:
	if Main.decision == []:
		visible = false
		disabled = true
		highlight = false
	else:
		visible = true
		disabled = false
		text = Main.decision[1]
		if not highlight:
			grab_focus()
			highlight = true
	if has_focus() and Input.is_action_just_pressed("accept"):
		if Main.story == 1:
			Main.decision = []
			Main.decisionresponse = null
