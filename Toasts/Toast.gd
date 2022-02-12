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

func locked_style():
	var new_style = StyleBoxFlat.new()
	popup.get_node("Name").add_color_override("font_color",  Color(0.4, 0.4, 0.4))
	popup.set("custom_styles/panel", new_style)
	new_style.border_color = Color(0.4, 0.4, 0.4)
	new_style.bg_color = Color(0.15, 0.15, 0.15)
	new_style.set_border_width_all(2)
	new_style.set_corner_radius_all(8)
	new_style.corner_detail = 8

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

func modify_achievement(achievement, validate):
	if (validate == false and dict[achievement].accomplished == 0):
		locked_style()
		popup.get_node("Name").set_text(dict[achievement].name)
		popup.get_node("Description").set_text("? ? ? ? ? ? ? ? ? ?")
	else:
		popup.get_node("Name").set_text(dict[achievement].name)
		popup.get_node("Description").set_text(dict[achievement].description)
		dict[achievement].accomplished = 1

#func _on_Area2D_input_event(viewport, event, shape_idx):
	#if event is InputEventMouseButton:
		#popup.hide()

func animation():
	popup.show()
	tween.interpolate_property(popup, "rect_position", popup.rect_position,
	Vector2(popup.rect_position[0] - 300, popup.rect_position[1]), tween.TRANS_ELASTIC, tween.EASE_OUT)
	tween.start()
	yield(tween, "tween_completed")
	timer.start()

func _hide_popup():
	tween.interpolate_property(popup, "rect_position", popup.rect_position,
	Vector2(popup.rect_position[0] + 300, popup.rect_position[1]), tween.TRANS_ELASTIC, tween.EASE_IN)
	tween.start()
	yield(tween, "tween_completed")

func _on_Timer_timeout():
	_hide_popup()
