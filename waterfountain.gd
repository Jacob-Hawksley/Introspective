extends Area2D
var active = false
var text = ["¬ Its a water fountain, seems inconveniantly tall though."]
func _on_area_entered(area: Area2D) -> void:
	active = true


func _on_area_exited(area: Area2D) -> void:
	active = false
func _process(delta: float) -> void:
	if active and Input.is_action_just_pressed("accept") and Main.text == ['']:
		Main.text = text
		active = false
