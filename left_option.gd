extends Button

func _process(delta: float) -> void:
	if Main.decision == []:
		visible = false
		disabled = true
	else:
		visible = true
		disabled = false
		text = Main.decision[0]
	if has_focus() and Input.is_action_just_pressed("accept"):
		if Main.story == 1:
			Main.decision = []
			Main.decisionresponse = null
			Main.story = 2
			Main.room = "School-Corridor"
			Main.entry = "Entry1"
			Main.loaded = false
			Main.song = "School.mp3"
			Main.songreset = true
