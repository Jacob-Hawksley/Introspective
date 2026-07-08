extends AudioStreamPlayer2D
func _process(delta: float) -> void:
	if Main.songreset:
		stream = load("res://Music/"+Main.song)
		play()
		Main.songreset = false
	if not playing and Main.songplaying:
		play()
