extends Node

const COLOR_ITEM = Color("#94b9ff")
const COLOR_SYSTEM = Color("#ffd394")
const COLOR_LOCATION = Color("#faff94")

func wrap_item_text(text: String) -> String:
	return "[color=#%s]%s[/color]" % [COLOR_ITEM.to_html(), text]
	
func wrap_system_text(text: String) -> String:
	return "[color=#%s]%s[/color]" % [COLOR_SYSTEM.to_html(), text]

func wrap_location_text(text: String) -> String:
	return "[color=#%s]%s[/color]" % [COLOR_LOCATION.to_html(), text]
