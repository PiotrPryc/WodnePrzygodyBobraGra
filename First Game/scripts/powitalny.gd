extends Control


@onready var close_button: Button = $Button
@onready var pytanie_label: RichTextLabel = $RichTextLabel
@onready var objasnienie_label: RichTextLabel = $RichTextLabel2

@onready var canvas = %PowitalnyCanvas
@onready var hud = %Hud
			
func _ready() -> void:
	pytanie_label.bbcode_enabled = true
	pytanie_label.text = """
[font_size=12]Gra stworzona na konkurs:[/font_size]
[font_size=14][color=#FFD700]Błękitny krwiobieg Ziemi[/color][/font_size]

[font_size=12]Autorzy:[/font_size]
[font_size=14][b]Piotr Pryć[/b][/font_size]
[font_size=14][b]Tomasz Maślanka[/b][/font_size]

[font_size=14][b]Szkoła Podstawowa
numer 83 we Wrocławiu[/b][/font_size]
	"""

	objasnienie_label.bbcode_enabled = true
	objasnienie_label.text = """
[font_size=14][b][color=#FFD700]🌊 Witaj w wodnej przygodzie! 🌊[/color][/b][/font_size]

[font_size=12][color=#FFFFFF]Wcielasz się w bobra, który próbuje [b]posprzątać swój zanieczyszczony dom[/b].

Twoim zadaniem jest zbierać [b]ciekawostki geologiczne i wodne[/b], oraz ratować środowisko, [b]usuwając śmieci z wody i planety![/b][/color][/font_size]
[font_size=10][color=#FFFFFF]<przewiń w dół>[/color][/font_size]

[font_size=12][color=#FFFFFF]🕒 [b]Gra trwa 30 sekund[/b], ale możesz przedłużyć czas, zbierając śmieci![/color][/font_size]

[font_size=12][color=#FFFFFF]🎮 [b]Sterowanie:[/b][/color][/font_size]
[font_size=12][b][color=#FFD700]← →[/color][/b][color=#FFFFFF] - Ruch w lewo i prawo[/color][/font_size]
[font_size=12][b][color=#FFD700]↑ ↓[/color][/b][color=#FFFFFF] - Ruch w górę i dół[/color][/font_size]
[font_size=12][b][color=#FFD700]ESC[/color][/b][color=#FFFFFF] - Pauza[/color][/font_size]

[font_size=12][color=#FFFFFF]🎯 [b]Cel gry:[/b] Zbierz [b]30 ciekawostek[/b] zanim skończy się czas!  
Gra kończy się, gdy:[/color][/font_size]
[font_size=12][color=#FFFFFF]• Upłynie czas  
• Zbierzesz wszystkie ciekawostki
• Wejdziesz na stworka[/color][/font_size]

[font_size=12][color=#FFFFFF]Powodzenia! 🦫🌍[/color][/font_size]
	"""
	
	canvas.visible = true
	visible = true
	close_button.pressed.connect(_on_close_pressed)
	hud.is_paused = true
	

# Function to show the entire popup window
func show_popup() -> void:
	canvas.visible = true
	visible = true
	hud.is_paused = true

# Function to hide the entire popup window
func _on_close_pressed() -> void:
	canvas.visible = false
	visible = false
	hud.is_paused = false
	

func toggle_visible() -> void:
	canvas.visible = !canvas.visible
	visible = !visible
