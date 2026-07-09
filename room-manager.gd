extends Node
var player = preload("res://alis.tscn").instantiate()
func _ready() -> void:
	self.add_child(player)

func _process(delta: float) -> void:
	if not Main.loaded:
		Main.clear = true
		await get_tree().create_timer(0.01).timeout
		Main.clear = false
		if Main.room == "Home-Ground":
			Main.loaded = true
			var room = preload("res://Home-ground.tscn").instantiate()
			self.get_parent().add_child(room)
			player.position = room.find_child(Main.entry).find_child("Spawn").position
			
		elif Main.room == "Home-Corridor":
			Main.loaded = true
			var room = preload("res://home_corridor.tscn").instantiate()
			self.get_parent().add_child(room)
			player.position = room.find_child(Main.entry).find_child("Spawn").position
		elif Main.room == "Home-Alis":
			Main.loaded = true
			var room = preload("res://home_alis.tscn").instantiate()
			self.get_parent().add_child(room)
			player.position = room.find_child(Main.entry).find_child("Spawn").position
		elif Main.room == "School-Corridor":
			Main.loaded = true
			var room = preload("res://school_corridor.tscn").instantiate()
			self.get_parent().add_child(room)
			player.position = room.find_child(Main.entry).find_child("Spawn").position
			
