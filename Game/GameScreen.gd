extends Node2D

onready var Telefax = get_node("Telefax")
onready var Minitel = get_node("Minitel")
onready var Carton = get_node("Carton")

func _ready():
	randomize()

func _process(delta):
	pass
