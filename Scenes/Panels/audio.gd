extends AudioStreamPlayer2D

@export var arrow: Node

func start() -> void:
	play()

func _on_finished() -> void:
	arrow.visible = true
