extends Node2D
func _ready() -> void:
	if Main.song != "Home.mp3":
		Main.song = "Home.mp3"
		Main.songplaying = true
		Main.songreset = true
	if Main.story == 0:
		Main.text = ["¬ Alis sweetie, you need to get up, or you'll be late for school."]

func _process(delta: float) -> void:
	if Main.clear:
		queue_free()

	


func _on_entry_1_area_entered(area: Area2D) -> void:
	Main.room = "Home-Corridor"
	Main.entry = "Entry2"
	Main.loaded = false
	if Main.story == 0:
		Main.text = ["¬ I'll be waiting outside to drive you, ok?"]
		Main.story = 1
