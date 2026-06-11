extends AudioStreamPlayer2D

@export var panel: Node

func start() -> void:
	play()

func _on_finished() -> void:
	panel.visible = false
