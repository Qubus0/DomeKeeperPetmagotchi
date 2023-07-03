extends "res://content/drop/egg/Egg.gd"


func hatch() -> void:
	.hatch()

	var pets := get_tree().get_nodes_in_group("pets")
	if pets.size() == 1:  # don't add a second one
		var pet_display := load("res://mods-unpacked/Ste-Petmagotchi/pet_display.gd")
		pet_display.create(pets.front())


