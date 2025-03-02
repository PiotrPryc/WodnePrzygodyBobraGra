extends Control


@onready var close_button: Button = $Button
@onready var pytanie_label: RichTextLabel = $RichTextLabel

@onready var pause_canvas = %KoniecCanvas
@onready var hud = %Hud
			
func _ready() -> void:
	pytanie_label.bbcode_enabled = true
	pytanie_label.text = """
[font_size=16]Gra stworzona na konkurs:[/font_size]
[font_size=20][color=#FFD700]Błękitny krwiobieg Ziemi[/color][/font_size]

[font_size=16]Autorzy:[/font_size]
[font_size=20][b]Piotr Pryć[/b][/font_size]
[font_size=20][b]Tomasz Maślanka[/b][/font_size]
	"""
	
	pause_canvas.visible = false
	visible = false
	close_button.pressed.connect(_on_close_pressed)
	hud.is_paused = true

# Function to show the entire popup window
func show_popup() -> void:
	pause_canvas.visible = true
	visible = true
	hud.is_paused = true

# Function to hide the entire popup window
func _on_close_pressed() -> void:
	pause_canvas.visible = false
	visible = false
	hud.is_paused = false
	get_tree().reload_current_scene()
	

func toggle_visible() -> void:
	pause_canvas.visible = !pause_canvas.visible
	visible = !visible
