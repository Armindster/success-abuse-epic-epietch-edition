extends Node

export (String, FILE) var filepath
var file = File.new()
var dict = {}
var already_played = false
var mousebutton = InputEventMouseButton
var mousemotion = InputEventMouseMotion
onready var popup = get_node("Panel")
onready var timer = get_node("Timer")
onready var tween = get_node("Tween")

func _ready():
	read_achievements()

func read_achievements():
	var text
	if file.file_exists("user://achievements.json"):
		file.open("user://achievements.json", file.READ)
		text = file.get_as_text()
		dict = parse_json(text)
		file.close()
	else:
		file.open(filepath, file.READ)
		text = file.get_as_text()
		dict = parse_json(text)
		write_achievements()

func write_achievements():
	if file.file_exists("user://achievements.json"):
		file.open("user://achievements.json", file.WRITE)
		file.store_string(dict.to_json())
		file.close()

func modify_achievement(achievement, value):
	if value == 0:
		dict[achievement].accomplished = 0
	if dict[achievement].accomplished < dict[achievement].total:
		dict[achievement].accomplished += value
		if dict[achievement].accomplished >= dict[achievement].total:
			popup.get_node("Name").set_text(dict[achievement].name)
			popup.get_node("Description").set_text(dict[achievement].description)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print(event.position)
		popup.hide()

func animation():
	popup.show()
	tween.interpolate_property(popup, "rect_position", popup.rect_global_position, Vector2(popup.rect_global_position[0] + 300, popup.rect_global_position[1]), tween.TRANS_ELASTIC, tween.EASE_OUT)
	tween.start()
	yield(tween, "tween_completed")
	timer.start()

func _hide_popup():
	tween.interpolate_property(popup, "rect_position", popup.rect_global_position, Vector2(popup.rect_global_position[0] - 300, popup.rect_global_position[1]), tween.TRANS_ELASTIC, tween.EASE_IN)
	tween.start()
	yield(tween, "tween_completed")
	popup.hide()

func _on_Timer_timeout():
	_hide_popup()
