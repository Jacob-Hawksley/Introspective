extends Node2D
func cutscene(delta):
	Main.paused = true
	Main.movementoverride = Vector2(5000*delta,0)
	await get_tree().create_timer(2).timeout
	Main.movementoverride = Vector2(0,0)
	$Sprite2D.play("open")
	$Interactions/classdoor/jerod.global_position = $Interactions/classdoor/CollisionShape2D.global_position
	$Interactions/classdoor/jerod.visible = true
	$Interactions/classdoor/jerod.play("new_animation")
func _ready() -> void:
	$Sprite2D.play("closed")
func _process(delta: float) -> void:
	if Main.happened["doorconfrontation"] and Main.text == ['']:
		await cutscene(delta)
		Main.movementoverride = null
		
