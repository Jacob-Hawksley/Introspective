extends Node2D

func _process(delta: float) -> void:
	if Main.clear:
		queue_free()


func _on_entry_1_area_entered(area: Area2D) -> void:
	Main.room = "Home-Corridor"
	Main.entry = "Entry2"
	Main.loaded = false
