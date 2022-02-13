extends Node2D

onready var Telefax = get_node("Telefax")
onready var Minitel = get_node("Minitel")
onready var Carton = get_node("Carton")

var toast_count = 0
var success_count = 0
var too_much_toasts = false
var achmenu = true

func _ready():
	randomize()
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("hello_world", true, true)
	toast_count += 1
	success_count += 1

func _process(delta):
	var toast
	if toast_count == 7 and not too_much_toasts:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("trop_de_toast_tue_le_toast", true, true)
		toast_count += 1
		success_count += 1
		too_much_toasts = true
	if success_count == 50:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("serious_dedication", true, true)
		toast_count += 1
		success_count += 1
	elif success_count == 100:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("how_did_we_get_here?", true, true)
		toast_count += 1
		success_count += 1

func toast_end(node):
	node.queue_free()
	toast_count -= 1

func _on_Carton_empty():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("unpacked", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_alphabet():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("le_larousse", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_briag():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("briag", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_fanta():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("salut_a_tous,_c'est_fanta", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_felix():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("felix", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_godot():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("3615_godot", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_gorille():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("monke", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_malo():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("malo", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_monique():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("ha_bah_quelle_productivite", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_noe():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("noe", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_usul():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("3615_usul", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_veronique():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("veronique_nique_nique", true, true)
	toast_count += 1
	success_count += 1

func _on_Bouton_achievement():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement(get_node("Bouton").get_achievement(), true, true)
	toast_count += 1
	success_count += 1

func _on_Carton_achievement():
	var toast
	var object = get_node("Carton").return_unpacked_object()
	if object == "deadCat":
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("schrodinger_cat_is_a_lie", true, true)
		toast_count += 1
		success_count += 1
	elif object == "aliveCat":
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("schrodinger_cat_is_alive", true, true)
		toast_count += 1
		success_count += 1
	elif object == "airplane":
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("mh370", true, true)
		toast_count += 1
		success_count += 1
	elif object == "jam":
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("vous_l'avez,_non_?", true, true)
		toast_count += 1
		success_count += 1
	else:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("maintenant,_oui", true, true)
		toast_count += 1
		success_count += 1

func _on_Telefax_fax():
	var fax = get_node("Telefax").get_fax()
	if fax == "XDdL":
		get_node("Carton").add_Xav_in_Carton()
	else:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		var toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement(fax, true, true)
		toast_count += 1
		success_count += 1

func _on_Tableau_Isaac():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("isaac_success", true, true)
	toast_count += 1
	success_count += 1

func _on_Tableau_Jeff():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("my_name_is_Jeff", true, true)
	toast_count += 1
	success_count += 1

func _on_Tableau_Quote():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("you_feel_motivated", true, true)
	toast_count += 1
	success_count += 1

func _on_Minitel_end():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("travail_terminé", true, true)
	toast_count += 1
	success_count += 1

func _on_MainMenu_menu_quit():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("au_revoir_et_a_bientot", true, true)
	toast_count += 1
	success_count += 1

func _on_MainMenu_menu_wait():
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("c'est_un_beau_menu,_hein_?", true, true)
	toast_count += 1
	success_count += 1

func _on_MainMenu_start_game():
	get_node("MainMenu").visible = false
	get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
	var toast = get_node("ToastsContainer").get_child(toast_count)
	toast.connect("finished", self, "toast_end")
	toast.modify_achievement("bravo,_vous_etes_sur_sa:eee", true, true)
	toast_count += 1
	success_count += 1


func _on_Button_pressed():
	get_node("Achievement").visible = true
	if achmenu:
		get_node("ToastsContainer").add_child(load("res://Toasts/Toast.tscn").instance())
		var toast = get_node("ToastsContainer").get_child(toast_count)
		toast.connect("finished", self, "toast_end")
		toast.modify_achievement("megalomanie", true, true)
		toast_count += 1
		success_count += 1
		achmenu = false


func _on_Achievement_goback():
	get_node("Achievement").visible = false
