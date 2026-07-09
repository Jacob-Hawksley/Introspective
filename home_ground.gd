extends Node2D


func _ready() -> void:
	if Main.song != "Home.mp3":
		Main.song = "Home.mp3"
		Main.songplaying = true
		Main.songreset = true
func _process(delta: float) -> void:
	if Main.clear:
		queue_free()
		


func _on_entry_2_body_entered(body: Node2D) -> void:
	Main.room = "Home-Corridor"
	Main.entry = "Entry1"
	Main.loaded = false
	


func _on_entry_1_area_entered(area: Area2D) -> void:
	if Main.story == 1:
		Main.text = ["Are you ready to leave?"]
		Main.decision = ["Yes","Not yet"]
