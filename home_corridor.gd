extends Node2D

func _process(delta: float) -> void:
	if Main.clear:
		queue_free()



func _on_entry_1_area_entered(area: Area2D) -> void:
	Main.room = "Home-Ground"
	Main.entry = "Entry2"
	Main.loaded = false


func _on_entry_2_area_entered(area: Area2D) -> void:
	Main.room = "Home-Alis"
	Main.entry = "Entry1"
	Main.loaded = false
