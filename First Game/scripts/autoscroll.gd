extends Control

@onready var credits_label = %Credits  # Use %Credits to reference the node
var scroll_speed = 20
var timer = 0.0

func _ready() -> void:
	credits_label.bbcode_enabled = true
	credits_label.visible_characters = 0
	credits_label.text = """
	.............................................
	
	
[font_size=10][b][color=#FFD700]★ PODZIĘKOWANIA ★[/color][/b][/font_size]

[font_size=10][color=#FFFFFF]Gra wykorzystuje zasoby Creative Commons:[/color][/font_size]

[font_size=10][color=#FFFFFF]🎵 [b]Muzyka:[/b][/color]  
[url=https://freemusicarchive.org]Free Music Archive[/url] – Darmowa muzyka  

[font_size=10][color=#FFFFFF]🎨 [b]Grafika:[/b][/color]  
[url=https://opengameart.org]OpenGameArt[/url] – Darmowe grafiki do gier  

[font_size=10][color=#FFFFFF]🎤 [b]Efekty dźwiękowe:[/b][/color]  
[url=https://freesound.org]Freesound.org[/url] – Biblioteka efektów dźwiękowych  

[font_size=10][color=#FFFFFF]Dziękujemy wszystkim twórcom za udostępnienie swoich zasobów![/color][/font_size]
"""

func _process(delta):
	timer += scroll_speed * delta
	credits_label.visible_characters = int(timer)
	var scrollbar = credits_label.get_v_scroll_bar()
	if scrollbar:
		scrollbar.value = scrollbar.max_value
	if credits_label.visible_characters >= len(credits_label.text):
		timer = 0
