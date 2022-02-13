extends Control

signal menu_wait
signal start_game
signal menu_quit

onready var tmr = get_node("Timer")

func _ready():
	start_timer()

func start_timer():
	tmr.set_wait_time(60)
	tmr.start()

func _on_Start_pressed():
	tmr.stop()
	emit_signal("start_game")

func _on_Quit_pressed():
	emit_signal("menu_quit")
	get_tree().quit()

func _on_Timer_timeout():
	emit_signal("menu_wait")
