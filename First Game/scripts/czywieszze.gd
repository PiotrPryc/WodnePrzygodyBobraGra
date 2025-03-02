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
		"Wiedza4":
			ciekawostka_text = "Dolny Śląsk to jeden z najbardziej zasobnych w wody termalne regionów Polski – znajdują się tu m.in. Cieplice-Zdrój i Lądek-Zdrój!"
		"Wiedza5":
			ciekawostka_text = "We Wrocławiu znajduje się ponad 100 mostów, co czyni go jednym z najbardziej „wodnych” miast w Polsce!"
		"Wiedza6":
			ciekawostka_text = "Rzeka Odra jest drugą najdłuższą rzeką w Polsce i od wieków pełniła kluczową rolę w transporcie i handlu na Dolnym Śląsku."
		"Wiedza7":
			ciekawostka_text = "Dolny Śląsk posiada największą liczbę uzdrowisk w Polsce – są to miejsca, gdzie wykorzystuje się lecznicze wody mineralne!"
		"Wiedza8":
			ciekawostka_text = "W Sudetach znajdują się unikalne wodospady, takie jak Wodospad Kamieńczyka (27 m), który jest najwyższym wodospadem w polskich Sudetach!"
		"Wiedza9":
			ciekawostka_text = "Największe polskie podziemne jezioro znajduje się w kopalni uranu w Kowarach na Dolnym Śląsku!"
		"Wiedza10":
			ciekawostka_text = "Dolny Śląsk był kiedyś dnem morza, co sprawia, że można tu znaleźć liczne skamieniałości morskie!"
		"Wiedza11":
			ciekawostka_text = "Krasowe źródła wody w Dolinie Baryczy to naturalne zbiorniki wody, które zasilają największy kompleks stawów rybnych w Polsce!"
		"Wiedza12":
			ciekawostka_text = "Gejzery wód termalnych występują nie tylko na Islandii, ale także w Polsce – np. w uzdrowisku Cieplice-Zdrój na Dolnym Śląsku!"
		"Wiedza13":
			ciekawostka_text = "Sztuczne zbiorniki wodne Dolnego Śląska, takie jak Jezioro Mietkowskie, pomagają w regulacji poziomu wód rzeki Odry!"
		"Wiedza14":
			ciekawostka_text = "Wrocław leży na terenie dawnej delty Odry, co czyni jego gleby wyjątkowo żyznymi!"
		"Wiedza15":
			ciekawostka_text = "Najstarsze znane źródło mineralne na Dolnym Śląsku znajduje się w Lądku-Zdroju i ma ponad 750 lat historii!"
		"Wiedza16":
			ciekawostka_text = "W Sudetach można znaleźć unikalne formacje skalne utworzone przez wodę, takie jak Błędne Skały i Szczeliniec Wielki!"
		"Wiedza17":
			ciekawostka_text = "Wody termalne Dolnego Śląska powstały miliony lat temu w wyniku aktywności geotermalnej!"
		"Wiedza18":
			ciekawostka_text = "Niektóre dolnośląskie rzeki, jak Bóbr czy Kwisa, były wykorzystywane do transportu drewna już w średniowieczu!"
		"Wiedza19":
			ciekawostka_text = "W Sudetach występują wody mineralne o dużej zawartości siarki, które mają właściwości lecznicze!"
		"Wiedza20":
			ciekawostka_text = "Dolny Śląsk posiada jedne z największych złóż wód pitnych w Polsce, a podziemne warstwy wodonośne sięgają nawet 200 m głębokości!"
		"Wiedza21":
			ciekawostka_text = "Podziemne jeziora krasowe w Górach Kaczawskich powstały przez wietrzenie wapienia pod wpływem wód gruntowych!"
		"Wiedza22":
			ciekawostka_text = "Na Dolnym Śląsku występują wody radonowe, które wykorzystywane są w lecznictwie, np. w Świeradowie-Zdroju!"
		"Wiedza23":
			ciekawostka_text = "Wrocławskie kanały wodne powstały w XIX wieku, by chronić miasto przed powodziami i poprawić żeglowność Odry!"
		"Wiedza24":
			ciekawostka_text = "Stawy Milickie na Dolnym Śląsku to największy kompleks stawów rybnych w Europie, a ich historia sięga XIII wieku!"
		"Wiedza25":
			ciekawostka_text = "Jezioro Bystrzyckie w Zagórzu Śląskim powstało w wyniku spiętrzenia rzeki Bystrzycy tamą w latach 1911–1914!"
		"Wiedza26":
			ciekawostka_text = "Rzeka Nysa Kłodzka, przepływająca przez Dolny Śląsk, posiada jeden z największych systemów zapór wodnych w Polsce!"
		"Wiedza27":
			ciekawostka_text = "Niektóre rzeki Dolnego Śląska, jak Kaczawa, w przeszłości niosły złotonośny piasek!"
		"Wiedza28":
			ciekawostka_text = "Na Dolnym Śląsku znajdują się unikalne wąwozy wodne, takie jak Wąwóz Myśliborski z krasowymi źródłami!"
		"Wiedza29":
			ciekawostka_text = "Góry Stołowe na Dolnym Śląsku mają nietypowe kształty skał utworzone przez miliony lat erozji wodnej!"
		"Wiedza30":
			ciekawostka_text = "Dolina Baryczy to jedno z najczystszych miejsc w Polsce pod względem jakości wody – naturalna ostoja ptaków i rezerwat przyrody!"

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
