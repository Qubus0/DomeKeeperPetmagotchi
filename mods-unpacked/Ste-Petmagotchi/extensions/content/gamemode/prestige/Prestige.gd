extends "res://content/gamemode/prestige/Prestige.gd"


func init() -> void:
	.init() # Call original init func
	Level.hud.addHudElement({"hud": "mods-unpacked/Ste-Petmagotchi/PetDisplay.tscn" })

