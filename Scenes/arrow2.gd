extends Node2D

# Define the enum for rotation directions
enum Direction {
	BOTTOM,
	RIGHT,
	TOP, 
	LEFT
}

enum Size {
	SMALL,
	MEDIUM,
	LARGE
}

@onready var setaSprite = $Seta
var currentDirection: Direction = Direction.BOTTOM;

# Expose the enum to the property inspector
@export var direction: Direction = Direction.BOTTOM:
	set(value):
		direction = value

@export var size: Size = Size.MEDIUM:
	set(value):
		size = value

@export var newScene: String

func _ready():
	# Initialize rotation based on the selected direction
	self.rotation = get_rotation_for_direction(direction)
	setaSprite.scale = get_size(size)
	print(newScene)

# Helper function to convert Direction enum to rotation in radians
func get_rotation_for_direction(dir: Direction) -> float:
	match dir:
		Direction.BOTTOM: 
			return 0.0
		Direction.RIGHT: 
			return deg_to_rad(270.0)
		Direction.TOP: 
			return deg_to_rad(180.0)
		Direction.LEFT: 
			return deg_to_rad(90.0)
		_:
			push_error("Invalid direction!")
	
	return 0.0

func get_size(size: Size) -> Vector2:
	match size:
		Size.SMALL:
			return Vector2(0.14, 0.14)
		Size.MEDIUM:
			return Vector2(0.17, 0.17)
		Size.LARGE:
			return Vector2(0.22, 0.22)
		_:
			return Vector2(0.22, 0.22)

func _on_button_pressed() -> void: 
	var parent_found = false
	var parent = get_parent()
	# Checks if parent has method, if not, checks parent's parent || Comment of the year
	while !parent_found:
		if parent.has_method("changePanel"):
			parent_found = true
		else:
			parent = parent.get_parent()
			
	parent.changePanel(newScene)
	newScene = "SecondHallBoss"
	print(newScene)


func _on_button_mouse_entered() -> void:
	$AnimationPlayer.play("arrow")
	pass # Replace with function body.


func _on_button_mouse_exited() -> void:
	$AnimationPlayer.pause()
	pass # Replace with function body.
