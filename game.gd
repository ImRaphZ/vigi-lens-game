extends Node2D

@onready var introduction = $Introduction

var current_panel = "Introduction"

func _on_ready() -> void:
	introduction.show()

func changePanel(new_panel: String) -> void:
	#print("CHANGE PANEL: " + new_panel)
	var current_node = get_node(current_panel)
	current_node.hide()
	
	var new_node = get_node(new_panel)
	new_node.show()
	
	if (new_node.has_node("AnimationPlayer")):
		new_node.get_node("AnimationPlayer").play(new_panel)
	
	if (new_node.has_node("AudioStreamPlayer")):
		new_node.get_node("AudioStreamPlayer").play()
	
	if (new_node.has_node("Cutscene")):
		new_node.get_node("Cutscene").play()

	current_panel = new_panel
	#pass
