extends Node2D

@export var exec_obj: Node
@export var exec_func: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	exec_obj.call(exec_func)
	pass # Replace with function body.
