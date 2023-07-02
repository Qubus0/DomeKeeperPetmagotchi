extends HudElement


var pet_sprite: AnimatedSprite
var hud_sprite: AnimatedSprite


func _ready() -> void:
	for pet in get_tree().get_nodes_in_group("pets"):
		pet = pet as Node2D
		pet_sprite = pet.get_node("Sprite")

		hud_sprite = pet_sprite.duplicate(0)
		hud_sprite.playing = false  # disabled to keep both srites in synch
		hud_sprite.position = Vector2.ZERO  # reset any offsets

		pet_sprite.connect("frame_changed", self, "_on_pet_sprite_frame_changed")
		$CenterContainer/SpriteOrigin.add_child(hud_sprite)
		break  # make sure to only ever handle one pet


func _on_pet_sprite_frame_changed():
	hud_sprite.animation = pet_sprite.animation
	hud_sprite.flip_h = pet_sprite.flip_h
	hud_sprite.frame = pet_sprite.frame


# useful to debug the layout properties of HudElement
#func _process(delta: float) -> void:
#	emit_signal("request_rebuild")

