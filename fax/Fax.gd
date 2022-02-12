extends Node2D

onready var tmr = get_node("Timer")
onready var START_Y = position.y

func _ready():
	start_timer()

func start_timer():
	tmr.set_wait_time(1)
	tmr.start()

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		queue_free()

func _on_Timer_timeout():
	if position.y > START_Y - 50:
		position.y -= 10
		start_timer()
