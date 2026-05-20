extends Node2D

@onready var introduction = $Introduction
@onready var animation_player = $AnimationPlayer 

var current_panel = "Introduction"

func _on_ready() -> void:
	introduction.show()
	animation_player.play("Introduction")


func changePanel(new_panel: String) -> void:
	#print("CHANGE PANEL: " + new_panel)
	var current_node = get_node(current_panel)
	current_node.hide()
	
	var new_node = get_node(new_panel)
	new_node.show()
	
	if (animation_player.has_animation(new_panel)):
		animation_player.play(new_panel)

	current_panel = new_panel
	#pass
