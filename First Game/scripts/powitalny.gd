extends Control


@onready var close_button: Button = $Button
@onready var pytanie_label: RichTextLabel = $RichTextLabel
@onready var canvas = %PowitalnyCanvas
@onready var hud = %Hud
			
func _ready() -> void:
	pytanie_label.bbcode_enabled = true
	canvas.visible = true
	visible = true
	close_button.pressed.connect(_on_close_pressed)
	hud.toggle_pause()
	

# Function to show the entire popup window
func show_popup() -> void:
	canvas.visible = true
	visible = true
	hud.toggle_pause()

# Function to hide the entire popup window
func _on_close_pressed() -> void:
	canvas.visible = false
	visible = false
	hud.toggle_pause()
	

func toggle_visible() -> void:
	canvas.visible = !canvas.visible
	visible = !visible
