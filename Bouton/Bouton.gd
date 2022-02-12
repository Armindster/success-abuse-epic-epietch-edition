extends Control

var pressed = 0
var ach = [
	"vous_avez_appuyez_1_fois_sur_le_bouton",
	"vous_avez_appuyez_2_fois_sur_le_bouton",
	"vous_avez_appuyez_3_fois_sur_le_bouton",
	"vous_avez_appuyez_4_fois_sur_le_bouton",
	"vous_avez_appuyez_5_fois_sur_le_bouton",
	"vous_avez_appuyez_6_fois_sur_le_bouton",
	"vous_avez_appuyez_7_fois_sur_le_bouton",
	"vous_avez_appuyez_8_fois_sur_le_bouton",
	"vous_avez_appuyez_9_fois_sur_le_bouton",
	"vous_avez_appuyez_10_fois_sur_le_bouton",
	"vous_avez_appuyez_11_fois_sur_le_bouton",
	"vous_avez_appuyez_12_fois_sur_le_bouton",
	"vous_avez_appuyez_13_fois_sur_le_bouton",
	"vous_avez_appuyez_14_fois_sur_le_bouton",
	"vous_avez_appuyez_15_fois_sur_le_bouton",
	"vous_avez_appuyez_16_fois_sur_le_bouton",
	"vous_avez_appuyez_17_fois_sur_le_bouton",
	"vous_avez_appuyez_18_fois_sur_le_bouton",
	"vous_avez_appuyez_19_fois_sur_le_bouton",
	"vous_avez_appuyez_20_fois_sur_le_bouton",
	"la_reponse_a_la_vie,_a_l'univers_et_tout_le_reste",
	"tu_t'es_crus_sur_cookie_clicker_?",
	"le_triple_neuf"
]
var count = -1

signal achievement

func _on_Button_pressed():
	pressed += 1
	if pressed >= 1 and pressed <= 20 or pressed == 42 or pressed == 50 or pressed == 999:
		count += 1
		print(pressed)
		emit_signal("achievement")

func get_achievement():
	return ach[count]
