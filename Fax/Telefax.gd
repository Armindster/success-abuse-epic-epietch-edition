extends Node2D

signal fax

onready var tmr = get_node("Timer")

var faxes = ["XDdL", "le_laissez_passer_a_38_!"]
var fax_name

func _ready():
	start_timer()

func start_timer():
	if faxes.size() > 0:
		var time = randi() % 10 + 1
		tmr.set_wait_time(time)
		tmr.start()

func _on_Timer_timeout():
	if not get_node("Fax") and faxes.size() > 0:
		var name = faxes.pop_at(randi() % (faxes.size()))
		add_child(load("res://Fax/Fax.tscn").instance())
		var fax = get_node("Fax")
		fax.set_fax(name)
		fax.connect("fax", self, "retrieve_fax")
	start_timer()

func retrieve_fax():
	var fax = get_node("Fax")
	fax_name = fax.get_fax()
	fax.queue_free()
	emit_signal("fax")

func get_fax():
	return fax_name
