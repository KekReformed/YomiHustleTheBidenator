extends "res://characters/BaseChar.gd"

var biden_art = "None"
var biden_art_ticks = 0
var move_speed_mod = 1
var jump_mod = 1
var opponent_original_damage_taken;

func tick():
	.tick()
	biden_art_ticks -= 1
	if biden_art_ticks <= 0 and biden_art != "None":
		biden_art_end()
	

func biden_art_end():
	if biden_art == "Shield" or biden_art == "Power":
		opponent.damage_taken_modifier = opponent_original_damage_taken
	biden_art = "None"
	biden_art_ticks = 0
	move_speed_mod = 1
	jump_mod = 1
	global_damage_modifier = "1.0"
	global_hitstun_modifier = "1.0"
	global_hitstop_modifier = "1.0"
	min_di_scaling = "1.0"
	max_di_scaling = "6.0"
	di_combo_limit = 15
