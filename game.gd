extends Node2D

@onready var introduction = $Introduction

var current_panel = "Introduction"

func _on_ready() -> void:
	introduction.show()
	introduction.get_node("AnimationPlayer").play("Introduction")


func changePanel(new_panel: String) -> void:
	#print("CHANGE PANEL: " + new_panel)
	var current_node = get_node(current_panel)
	current_node.hide()
	
	var new_node = get_node(new_panel)
	new_node.show()
	
	if (new_node.has_node("AnimationPlayer")):
		new_node.get_node("AnimationPlayer").play(new_panel)

	current_panel = new_panel
	#pass
