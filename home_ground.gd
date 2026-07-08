extends Node2D

func _process(delta: float) -> void:
	if Main.clear:
		queue_free()


func _on_entry_2_body_entered(body: Node2D) -> void:
	Main.room = "Home-Corridor"
	Main.entry = "Entry1"
	Main.loaded = false
	
