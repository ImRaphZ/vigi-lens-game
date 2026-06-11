extends Node2D



func _on_play_button_pressed() -> void:
	$Title.visible = false
	$PlayButton.visible = false
	$ExitButton.visible = false
	get_tree().change_scene_to_file("res://game.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().quit()



func _on_play_button_mouse_entered() -> void:
	$Play.scale = Vector2(0.18, 0.18)
	pass # Replace with function body.


func _on_play_button_mouse_exited() -> void:
	$Play.scale = Vector2(0.173, 0.173)



func _on_exit_button_mouse_entered() -> void:
	$Exit.scale = Vector2(0.098, 0.098)
	pass # Replace with function body.


func _on_exit_button_mouse_exited() -> void:
	$Exit.scale = Vector2(0.092, 0.092)
	pass # Replace with function body.
