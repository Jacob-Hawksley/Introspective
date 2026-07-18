extends Node2D
signal isready
var advance1 = false
func cutscene(delta):
	Main.happened["doorconfrontation"] = true
	Main.decisionevent = ''
	Main.paused = true
	Main.movementoverride = Vector2(5000*delta,0)
	await get_tree().create_timer(2).timeout
	Main.movementoverride = Vector2(0,0)
	$Sprite2D.play("open")
	$Interactions/classdoor/jerod.global_position = $Interactions/classdoor/CollisionShape2D.global_position
	$Interactions/classdoor/jerod.visible = true
	await get_tree().create_timer(3).timeout
	$Interactions/classdoor/jerod.play("point")
	Main.text = ["Jerod ¬Hey, you there. Whatcha looking at.", "Jerod ¬Want me to take it back...","Jerod ¬In your dreams.","Jerod ¬Did I strike a nerve?"]
	advance1 = true
	
func _ready() -> void:
	$Sprite2D.play("closed")
func _process(delta: float) -> void:
	if Main.text == [''] and advance1:
		isready.emit()
	if Main.decisionevent == "doorconfrontation" and Main.text == ['']:
		await cutscene(delta)
		


func _on_isready() -> void:
	advance1 = false
	$Interactions/classdoor/jerod.play("flick")
	Main.text = ["Jerod ¬Whatcha gonna do bout it?", "Jerod ¬Cry home to your big brother?"]
	await get_tree().create_timer(4).timeout
	Main.movementoverride = Vector2(100,100)
	Main.text = ["Jerod ¬Hey, where are you running off to"]
	await get_tree().create_timer(0.25).timeout
	Main.movementoverride = Vector2(100,0)
	await get_tree().create_timer(2).timeout
	Main.movementoverride = Vector2(0,0)
	Main.text = ["Jerod ¬Get back here!"]
	Main.room = "Closet"
	Main.entry = "Entry1"
	Main.loaded = false
