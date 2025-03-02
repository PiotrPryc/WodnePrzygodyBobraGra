extends Control


@onready var close_button: Button = $Button

func _ready() -> void:
	# Hide the entire popup initially
	visible = true
	close_button.pressed.connect(_on_close_pressed)

# Function to show the entire popup window
func show_popup() -> void:
	visible = true

# Function to hide the entire popup window
func _on_close_pressed() -> void:
	visible = false
