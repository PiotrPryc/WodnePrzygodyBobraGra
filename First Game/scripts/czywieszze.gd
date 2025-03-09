extends Control


@onready var close_button: Button = $Button
@onready var pytanie_label: RichTextLabel = $RichTextLabel
@onready var canvas_czywieszze = %CzyWieszZeCanvas
@onready var hud = %Hud

func _ustaw_pytanie() -> void:
	var ciekawostka_text = ""

	match self.name:
		"Wiedza1":
			ciekawostka_text = "Wrocław rozwinął się przy ujściu Oławy do Odry, a najstarszy Ostrów Tumski założony został na odrzańskich wyspach."
		"Wiedza2":
			ciekawostka_text = "Odra – druga co do wielkości rzeka w Polsce bierze swój początek w Górach Odrzańskich w Sudetach Wschodnich na terytorium Republiki Czeskiej."
		"Wiedza3":
			ciekawostka_text = "Przewóz towarów Odrą ma długą historię. Jeszcze w XIX wieku łodzie i tratwy przepływały przez środek miasta, pokonując liczne śluzy."
		"Wiedza4":
			ciekawostka_text = "Oława wpada do Odry na Przedmieściu Oławskim, koło mostu Grunwaldzkiego. Ta rzeka płynie także z wrocławskich kranów…"
		"Wiedza5":
			ciekawostka_text = "Ślęza do Odry wpada na styku Maślic, Pilczyc i Rędzina, koło mostu Rędzińskiego."
		"Wiedza6":
			ciekawostka_text = "Bystrzyca ujście do Odry ma na Praczach Odrzańskich."
		"Wiedza7":
			ciekawostka_text = "Widawa wpada do Odry na styku Rędzina i Pracz Odrzańskich."
		"Wiedza8":
			ciekawostka_text = "Nie wszystkim wiadomo, że we Wrocławiu jest w sumie nie pięć, a siedem rzek. Dwie pozostałe to Dobra i Zielona."
		"Wiedza9":
			ciekawostka_text = "Najstarszy używany most we Wrocławiu to most Świętej Klary z 1799 roku, łączący Wyspę Młyńską i Wyspę Słodową."
		"Wiedza10":
			ciekawostka_text = "Most Tumski chętnie odwiedzają szczególnie zakochani – kojarzy się z przypinaniem kłódek i wyrzucaniem kluczyka do wody, co symbolizuje miłość na zawsze."
		"Wiedza11":
			ciekawostka_text = "Most Rędziński jest najdłuższym żelbetowym mostem podwieszonym w Polsce – część podwieszona ma 512 metrów długości."
		"Wiedza12":
			ciekawostka_text = "Wrocław to miasto mostów – szacuje się, że jest ich grubo ponad 100, czyli najwięcej w Polsce."
		"Wiedza13":
			ciekawostka_text = "Wrocławski węzeł wodny (WWW) obejmuje Odrę, jej dopływy, kanały oraz urządzenia hydrotechniczne chroniące miasto przed powodziami."
		"Wiedza14":
			ciekawostka_text = "WWW to największy w Polsce i jeden z największych w Europie system dróg wodnych i budowli hydrotechnicznych w obrębie miasta."
		"Wiedza15":
			ciekawostka_text = "Wzmianki o pierwszym porcie miejskim we Wrocławiu pochodzą z 1358 roku."
		"Wiedza16":
			ciekawostka_text = "Wrocławska Gondola to statek idealny na romantyczne rejsy – ma dach i zamykane boki na wypadek niepogody."
		"Wiedza17":
			ciekawostka_text = "Na początku XX wieku we Wrocławiu pływały gondole – cumowały przy dzisiejszym Wzgórzu Polskim, w tzw. Zatoce Gondoli."
		"Wiedza18":
			ciekawostka_text = "Hydropolis to pierwsze w Polsce centrum nauki poświęcone całkowicie wodzie."
		"Wiedza19":
			ciekawostka_text = "Sieć wodociągowa MPWiK we Wrocławiu ma długość aż 2210 km i ciągle się rozrasta."
		"Wiedza20":
			ciekawostka_text = "Woda dostarczana mieszkańcom Wrocławia pochodzi z rzeki Oławy i Nysy Kłodzkiej – trafia do ZUW „Mokry Dwór” i „Na Grobli”."
		"Wiedza21":
			ciekawostka_text = "Czy wiesz, że Odra jest drugą co do długości rzeką w Polsce, a jej dolnośląski odcinek był wielokrotnie regulowany, by zapobiegać powodziom?"
		"Wiedza22":
			ciekawostka_text = "Czy wiesz, że Wrocław był wielokrotnie nawiedzany przez powodzie, a największa z nich w 1997 roku nazwana została „powodzią tysiąclecia”?"
		"Wiedza23":
			ciekawostka_text = "Czy wiesz, że aż 75% słodkiej wody jest uwięzione w lodowcach i pokrywach lodowych?"
		"Wiedza24":
			ciekawostka_text = "Czy wiesz, że większość polskich rzek należy do zlewiska Bałtyku, ale są też takie, które wpadają do Morza Czarnego i Północnego."
		"Wiedza25":
			ciekawostka_text = "Czy wiesz, że najgłębsze jezioro świata to Bajkał, którego głębokość wynosi 1642 m?"
		"Wiedza26":
			ciekawostka_text = "Czy wiesz, że w Dolinie Kłodzkiej znajdują się jedne z najbardziej tajemniczych podziemnych rzek krasowych w Polsce?"
		"Wiedza27":
			ciekawostka_text = "Czy wiesz, że wody mineralne z Polanicy-Zdroju, Kudowy-Zdroju i Lądka-Zdroju są znane w całej Polsce i mają lecznicze właściwości?"
		"Wiedza28":
			ciekawostka_text = "Czy wiesz, że w Górach Sowich można znaleźć ślady dawnych jezior polodowcowych, które zanikły na skutek erozji?"
		"Wiedza29":
			ciekawostka_text = "Czy wiesz, że pod Wrocławiem istnieją podziemne korytarze wodne, które były wykorzystywane do obrony miasta w dawnych czasach?"
		"Wiedza30":
			ciekawostka_text = "Czy wiesz, że na Dolnym Śląsku znajdują się unikalne formy moren czołowych, które są pozostałością po lodowcu?"

	var ciekawostka_template = """
[center][font_size=30][b][color=#FFD700]🌟 Czy wiesz, że... 🌟[/color][/b][/font_size]

[font_size=25][color=#FFFFFF]""" + ciekawostka_text + """[/color][/font_size][/center]
"""
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
