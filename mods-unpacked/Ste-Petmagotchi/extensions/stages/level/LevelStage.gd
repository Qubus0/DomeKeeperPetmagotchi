extends "res://stages/level/LevelStage.gd"


func build(data: Array):
	.build(data) # Call original func
	yield(get_tree(), "idle_frame") # wait, otherwise we can't find the pet nodes

	var pets := get_tree().get_nodes_in_group("pets")
	if pets.size() > 0:
		var pet_display := load("res://mods-unpacked/Ste-Petmagotchi/pet_display.gd")
		pet_display.create(pets.front())


