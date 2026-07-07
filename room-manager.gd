extends Node
func _process(delta: float) -> void:
	if Main.room == "Home-Ground" and not Main.loaded:
		var room = preload("res://Home-ground.tscn").instantiate()
		self.get_parent().add_child(room)
		if Main.entry == 1:
			var player = preload("res://alis.tscn").instantiate()
			self.add_child(player)
			player.position = room.find_child("Entry1").find_child("CollisionShape2D").position
			Main.loaded = true
