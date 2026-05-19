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
	setaSprite.global_rotation = get_rotation_for_direction(direction)
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
	print("Button touched")
	pass # Replace with function body.
