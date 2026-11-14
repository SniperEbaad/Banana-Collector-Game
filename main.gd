extends Node2D

var score = 0

func _ready():
	RenderingServer.set_default_clear_color(Color(0.2, 0.45, 0.2))
	$Player/ScoreLabel.add_theme_font_size_override("font_size", 28)
	$Player/ScoreLabel.add_theme_color_override("font_color", Color.YELLOW)
	$Player/ScoreLabel.text = "🍌 Bananas: 0"

func _draw():
	var box = Rect2(0, -100, 1200, 850)
	draw_rect(box, Color(0.28, 0.6, 0.28))
	draw_rect(box, Color(1, 0, 0, 0.3), false, 24)
	draw_rect(box, Color(1, 0.1, 0.1), false, 8)

func add_point():
	score += 1
	$CoinSound.play()
	$Player/ScoreLabel.text = "🍌 Bananas: " + str(score)
