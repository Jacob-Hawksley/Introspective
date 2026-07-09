extends Node2D
func _ready() -> void:
	if Main.song != "Home.mp3":
		Main.song = "Home.mp3"
		Main.songplaying = true
		Main.songreset = true
	if not Main.happened["wakeup"]:
		Main.text = ["Mum¬ Alis sweetie, you need to get up, or you'll be late for school."]
		Main.happened["wakeup"] = true

func _process(delta: float) -> void:
	if Main.clear:
		queue_free()

	


func _on_entry_1_area_entered(area: Area2D) -> void:
	Main.room = "Home-Corridor"
	Main.entry = "Entry2"
	Main.loaded = false
	if not Main.happened["waitingoutside"]:
		Main.text = ["Mum¬ I'll be waiting outside to drive you, ok?"]
		Main.happened["waitingoutside"] = true
