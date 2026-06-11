extends Node2D



func _on_play_button_pressed() -> void:
	$Title.visible = false
	$PlayButton.visible = false
	$ExitButton.visible = false
	get_tree().change_scene_to_file("res://game.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().quit()
