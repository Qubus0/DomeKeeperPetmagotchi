extends Node

# Adds a speedrun timer
const MOD_DIR := "Ste-Petmagotchi" # Name of the directory that this file is in
const MODNAME_LOG_NAME := "Petmagotchi:Main"

var mod_dir_path := ""
var extensions_dir_path := ""


func _init(modLoader = ModLoader) -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(MOD_DIR)

	# Add extensions
	install_script_extensions()


func install_script_extensions() -> void:
	# Any script extensions should go in this directory, and should follow the same directory structure as vanilla
	extensions_dir_path = mod_dir_path.plus_file("extensions")
#	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file(""))
	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("content/gamemode/relichunt/Relichunt.gd"))
	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("content/gamemode/prestige/Prestige.gd"))


