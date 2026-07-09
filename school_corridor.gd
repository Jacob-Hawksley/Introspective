extends Node2D
func _ready() -> void:
	$Sprite2D.play("closed")
func _process(delta: float) -> void:
	if Main.happened["doorconfrontation"]:
		$Sprite2D.play("open")
