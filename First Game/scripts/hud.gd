extends Control

@onready var timer_label: RichTextLabel = $TimerLabel
@onready var score_label: RichTextLabel = $ScoreLabel
@onready var game_timer: Timer = $GameTimer
@onready var canvas_czywieszze = %CzyWieszZeCanvas
@onready var canvas_pauza = %PauzaCanvas
@onready var koniec_gry = %koniec

var time_left: int = 30
var score: int = 0
var max_score: int = 30
var is_paused: bool = false
var is_counter_paused: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer_label.bbcode_enabled = true
	score_label.bbcode_enabled = true
	score_label.position = Vector2(10, 5)
	timer_label.position = Vector2(10, 35)
	update_timer_display()
	update_score_display()
	
	# Setup the game timer
	game_timer.wait_time = 1.0  # Timer ticks every second
	game_timer.timeout.connect(_on_timer_tick)
	game_timer.start()

# Updates the timer every second
func _on_timer_tick() -> void:
	if not canvas_pauza.visible and not canvas_czywieszze.visible and not is_paused and time_left > 0:
		is_counter_paused = false
		time_left -= 1
		update_timer_display()
		
		if time_left <= 0:
			game_over()
	else:
		is_counter_paused = true

# Updates the timer display in the HUD
func update_timer_display() -> void:
	timer_label.text = "[font_size=25][center][color=yellow]Czas: [/color][color=red]%ds[/color][/center][/font_size]" % time_left

# Updates the score display in the HUD
func update_score_display() -> void:
	score_label.text = "[font_size=25][center][color=yellow]Ciekawostki: [/color][color=green]" + str(score) + "[/color] z [color=green]" + str(max_score) + "[/color][/center][/font_size]"
	if score >= max_score:
		game_over()
# Adds time when collecting special items
func add_time(amount: int) -> void:
	time_left += amount
	update_timer_display()

# Increases score when collecting items
func increase_score(points: int) -> void:
	score += points
	update_score_display()

# Stops the game when time runs out
func game_over() -> void:
	koniec_gry.show_popup()
	game_timer.stop()
	timer_label.text = "[font_size=25][center][color=yellow]Czas: [/color][color=red]%d[/color][/center][/font_size]" % time_left

# Called every frame. Listens for ESC key to pause.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):  # ESC key
		toggle_pause()

# Toggles pause state
func toggle_pause() -> void:
	is_paused = !is_paused
	game_timer.set_paused(is_paused)
	
func is_game_paused() -> bool:
	return is_counter_paused
	
	
	
	
