extends Area2D
var active = false
var text = ["???¬ Did you hear about the dissapearance?", "???¬ Yeah, I think it was that blue haired kid.", "???¬ Wasn't he kinda annoying though.", "???¬ Do you know where he's gone?", "???¬ Probably jumped off a bridge, I would too if I was him."]
func _on_area_entered(area: Area2D) -> void:
	active = true


func _on_area_exited(area: Area2D) -> void:
	active = false
func _process(delta: float) -> void:
	if active and Input.is_action_just_pressed("accept") and Main.text == ['']:
		if not Main.happened["doorconfrontation"]:
			Main.text = text
			Main.decisionevent = "doorconfrontation"
			active = false
