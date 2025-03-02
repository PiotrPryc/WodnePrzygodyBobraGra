extends Control


@onready var close_button: Button = $Button
@onready var canvas_czywieszze = %CzyWieszZeCanvas

func _ready() -> void:
	# Hide the entire popup initially
	canvas_czywieszze.visible = false
	visible = false
	close_button.pressed.connect(_on_close_pressed)

# Function to show the entire popup window
func show_popup() -> void:
	canvas_czywieszze.visible = true
	visible = true

# Function to hide the entire popup window
func _on_close_pressed() -> void:
	canvas_czywieszze.visible = false
	visible = false

func toggle_visible() -> void:
	canvas_czywieszze.visible = !canvas_czywieszze.visible
	visible = !visible
