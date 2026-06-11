extends Node2D

@export var arrow: Node
@export var dialogue: AudioStreamPlayer2D
@export var btn: Node
@export var panel: Sprite2D

func buttonPressed() -> void:
	arrow.visible = false
	btn.visible = false
	panel.visible = false
	dialogue.play()
