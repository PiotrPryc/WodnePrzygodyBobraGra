extends Control


@onready var close_button: Button = $Button
@onready var pytanie_label: RichTextLabel = $RichTextLabel
@onready var canvas_czywieszze = %CzyWieszZeCanvas
@onready var hud = %Hud

func _ustaw_pytanie() -> void:
	var ciekawostka_text = ""

	match self.name:
		"Wiedza1":
			ciekawostka_text = "Najgłębsze jezioro na świecie, Bajkał, ma aż 1642 metry głębokości i zawiera około 20% niezamarzniętej słodkiej wody na Ziemi!"
		"Wiedza2":
			ciekawostka_text = "Źródła artezyjskie to podziemne zbiorniki wody, które wypływają na powierzchnię dzięki naturalnemu ciśnieniu. W Polsce znajdziesz je m.in. w Nałęczowie i Ciechocinku."
		"Wiedza3":
			ciekawostka_text = "Lodowce, które kiedyś pokrywały Polskę, zostawiły po sobie jeziora polodowcowe, wzgórza morenowe i wielkie doliny. Przykładem jest Pojezierze Mazurskie!"
		_:
			ciekawostka_text = "Brak ciekawostki"

	var ciekawostka_template = "[center][b]Czy wiesz, że...[/b]\n\n" + ciekawostka_text + "[/center]"

	pytanie_label.text = ciekawostka_template
			
func _ready() -> void:
	pytanie_label.bbcode_enabled = true
	_ustaw_pytanie()
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
	hud.increase_score(1)
	

func toggle_visible() -> void:
	canvas_czywieszze.visible = !canvas_czywieszze.visible
	visible = !visible
