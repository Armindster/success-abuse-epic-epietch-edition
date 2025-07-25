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
signal end

var achiOn = true
var achiOff = true
var achiGorille = true
var achiFanta = true
var achiVero = true
var achiMonique = true
var achiAlpha = true
var achiUsul = true
var achiBriag = true
var achiFelix = true
var achiMalo = true
var achiNoe = true

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

var index = 0
var index2 = 0

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
	if (cpt == 26 && index == 0):
		index = 1
		emit_signal("alphabet")
		return Types.wrap_system_text("Unrecognized command - please try again.")
	
	if (words == "on" && index2 == 0):
		index2 = 1
		return godot()
	
	if (words == "off" && index2 == 1):
		index2 = 0
		return end()
	
	if (index2 == 1):
		match words:
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
	return Types.wrap_location_text("The minitel is not running")

func end() -> String:
	if achiOff:
		emit_signal("end")
		achiOff = false
	return PoolStringArray([
		Types.wrap_location_text("The minitel is not running")
	]).join("\n")

func godot() -> String:
	if achiOn:
		emit_signal("godot")
		achiOn = false
	return PoolStringArray([
		Types.wrap_location_text(" The minitel is running "),
		Types.wrap_system_text("Now you can type '3615 annuaire' to see available number.")
	]).join("\n")

func usul() -> String:
	if achiUsul:
		emit_signal("usul")
		achiUsul = false
	return PoolStringArray([
		Types.wrap_location_text(" Hey Usul ! I'm sending you this message to tell you that I'm a big fan of your work! You're a little too left for me but it does not matter! ")
	]).join("\n")
	
func gorille() -> String:
	if achiGorille:
		emit_signal("gorille")
		achiGorille = false
	return PoolStringArray([
		Types.wrap_location_text(" MONKEY FLIP LETS GOOOOOOOOO ")
	]).join("\n")
	
func fanta() -> String:
	if achiFanta:
		emit_signal("fanta")
		achiFanta = false
	return PoolStringArray([
		Types.wrap_location_text(" Hello Fanta! I saw what you told me about recently... \"Bitcoin\" right? Honestly I think it's a waste of time, we should focus on something else. Like coal! This is the energy of the FUTURE! ")
	]).join("\n")
	
func veronique() -> String:
	if achiVero:
		emit_signal("veronique")
		achiVero = false
	return PoolStringArray([
		Types.wrap_location_text(" Your music is not good. ")
	]).join("\n")

func monique() -> String:
	if achiMonique:
		emit_signal("monique")
		achiMonique = false
	return PoolStringArray([
		Types.wrap_location_text(" NO MONIQUE WE WILL NOT F*** TOGETHER! ")
	]).join("\n")
	
func briag() -> String:
	if achiBriag:
		emit_signal("briag")
		achiBriag = false
	return PoolStringArray([
		Types.wrap_location_text(" Damn man! I can't believe you got caught in Keimyung! I'm so happy for you! Remember to bring me back a souvenir! ")
	]).join("\n")

func malo() -> String:
	if achiMalo:
		emit_signal("malo")
		achiMalo = false
	return PoolStringArray([
		Types.wrap_location_text(" Dude there is a friend of mine, Axel, who lost his goldfish... do you know where he is? ")
	]).join("\n")

func noe() -> String:
	if achiNoe:
		emit_signal("noe")
		achiNoe = false
	return PoolStringArray([
		Types.wrap_location_text(" Hey ! Just to tell you that working with you has been a great experience! Not sure we have the opportunity to work together again but if the opportunity arises, count on me! ")
	]).join("\n")
	
func felix() -> String:
	if achiFelix:
		emit_signal("felix")
		achiFelix = false
	return PoolStringArray([
		Types.wrap_location_text(" You'll never guess what I found in an old box! Roboraptor! And the best part is that it still works! ")
	]).join("\n")

func help() -> String:
	return PoolStringArray([
		"You can use these commands: ",
		Types.wrap_item_text(" on "),
		Types.wrap_item_text(" off "),
		Types.wrap_item_text(" 3615 usul "),
		Types.wrap_item_text(" 3615 gorille "),
		Types.wrap_item_text(" 3615 fanta "),
		Types.wrap_item_text(" 3615 véronique "),
		Types.wrap_item_text(" 3615 monique "),
		Types.wrap_item_text(" 3615 annuaire "),
		Types.wrap_item_text(" 3615 briag "),
		Types.wrap_item_text(" 3615 malo "),
		Types.wrap_item_text(" 3615 noé "),
		Types.wrap_item_text(" 3615 félix "),
	]).join("\n")
