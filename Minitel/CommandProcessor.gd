extends Node

var current_room = null
var user = null

signal godot
signal gorille
signal fanta
signal veronique
signal monique
signal usul
signal alphabet
signal briag
signal felix
signal malo
signal noe

var cpt = 0

var ca = 0
var cb = 0
var cc = 0
var cd = 0
var ce = 0
var cf = 0
var cg = 0
var ch = 0
var ci = 0
var cj = 0
var ck = 0
var cl = 0
var cm = 0
var cn = 0
var co = 0
var cp = 0
var cq = 0
var cr = 0
var cs = 0
var ct = 0
var cu = 0
var cv = 0
var cw = 0
var cx = 0
var cy = 0
var cz = 0

var Types = load("res://Minitel/globals/Types.gd").new()

func initialize(user):
	self.user = user


func process_command(input: String) -> String:
	var words = input
	var l = words.length()
	
	for i in l:
		if (words[i] == "a" && ca == 0):
			cpt += 1
			ca = 1
		if (words[i] == "b" && cb == 0):
			cpt += 1
			cb = 1
		if (words[i] == "c" && cc == 0):
			cpt += 1
			cc = 1
		if (words[i] == "d" && cd == 0):
			cpt += 1
			cd = 1
		if (words[i] == "e" && ce == 0):
			cpt += 1
			ce = 1
		if (words[i] == "f" && cf == 0):
			cpt += 1
			cf = 1
		if (words[i] == "g" && cg == 0):
			cpt += 1
			cg = 1
		if (words[i] == "h" && ch == 0):
			cpt += 1
			ch = 1
		if (words[i] == "i" && ci == 0):
			cpt += 1
			ci = 1
		if (words[i] == "j" && cj == 0):
			cpt += 1
			cj = 1
		if (words[i] == "k" && ck == 0):
			cpt += 1
			ck = 1
		if (words[i] == "l" && cl == 0):
			cpt += 1
			cl = 1
		if (words[i] == "m" && cm == 0):
			cpt += 1
			cm = 1
		if (words[i] == "n" && cn == 0):
			cpt += 1
			cn = 1
		if (words[i] == "o" && co == 0):
			cpt += 1
			co = 1
		if (words[i] == "p" && cp == 0):
			cpt += 1
			cp = 1
		if (words[i] == "q" && cq == 0):
			cpt += 1
			cq = 1
		if (words[i] == "r" && cr == 0):
			cpt += 1
			cr = 1
		if (words[i] == "s" && cs == 0):
			cpt += 1
			cs = 1
		if (words[i] == "t" && ct == 0):
			cpt += 1
			ct = 1
		if (words[i] == "u" && cu == 0):
			cpt += 1
			cu = 1
		if (words[i] == "v" && cv == 0):
			cpt += 1
			cv = 1
		if (words[i] == "w" && cw == 0):
			cpt += 1
			cw = 1
		if (words[i] == "x" && cx == 0):
			cpt += 1
			cx = 1
		if (words[i] == "y" && cy == 0):
			cpt += 1
			cy = 1
		if (words[i] == "z" && cz == 0):
			cpt += 1
			cz = 1
	if (cpt == 26):
		emit_signal("alphabet")
		return Types.wrap_system_text("Unrecognized command - please try again.")
	
	match words:
		"3615 godot":
			return godot()
		"3615 usul":
			return usul()
		"3615 gorille":
			return gorille()
		"3615 fanta":
			return fanta()
		"3615 véronique":
			return veronique()
		"3615 monique":
			return monique()
		"3615 briag":
			return briag()
		"3615 malo":
			return malo()
		"3615 noé":
			return noe()
		"3615 félix":
			return felix()
		"3615 annuaire":
			return help()
		_:
			return Types.wrap_system_text("Unrecognized command - please try again.")

func godot() -> String:
	emit_signal("godot")
	return PoolStringArray([
		Types.wrap_location_text(" Minitel is start "),
		Types.wrap_system_text("Now you can type '3615 annuaire' to see available number.")
	]).join("\n")

func usul() -> String:
	emit_signal("usul")
	return PoolStringArray([
		Types.wrap_location_text(" Usul ")
	]).join("\n")
	
func gorille() -> String:
	emit_signal("gorille")
	return PoolStringArray([
		Types.wrap_location_text(" Gorille ")
	]).join("\n")
	
func fanta() -> String:
	emit_signal("fanta")
	return PoolStringArray([
		Types.wrap_location_text(" Fanta ")
	]).join("\n")
	
func veronique() -> String:
	emit_signal("veronique")
	return PoolStringArray([
		Types.wrap_location_text(" Véronique ")
	]).join("\n")

func monique() -> String:
	emit_signal("monique")
	return PoolStringArray([
		Types.wrap_location_text(" Monique ")
	]).join("\n")
	
func briag() -> String:
	emit_signal("briag")
	return PoolStringArray([
		Types.wrap_location_text(" A été pris à Keimyung ")
	]).join("\n")

func malo() -> String:
	emit_signal("malo")
	return PoolStringArray([
		Types.wrap_location_text(" A eu grade A au DevOps ")
	]).join("\n")

func noe() -> String:
	emit_signal("noe")
	return PoolStringArray([
		Types.wrap_location_text(" A un chien et un chat ")
	]).join("\n")
	
func felix() -> String:
	emit_signal("felix")
	return PoolStringArray([
		Types.wrap_location_text(" A crée EPIETCH ")
	]).join("\n")

func help() -> String:
	return PoolStringArray([
		"You can use these commands: ",
		Types.wrap_item_text(" 3615 godot "),
		Types.wrap_item_text(" 3615 usul "),
		Types.wrap_item_text(" 3615 gorille "),
		Types.wrap_item_text(" 3615 fanta "),
		Types.wrap_item_text(" 3615 véronique "),
		Types.wrap_item_text(" 3615 monique "),
		Types.wrap_item_text(" 3615 annuaire "),
	]).join("\n")
