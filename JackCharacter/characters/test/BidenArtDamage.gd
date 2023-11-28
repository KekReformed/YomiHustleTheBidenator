extends CharacterState


func _frame_0():
	host.biden_art_end()
	host.biden_art = "Power"
	host.damage_taken_modifier = str(float(host.damage_taken_modifier) * 1.2)
	host.global_hitstop_modifier = str(float(host.global_hitstop_modifier) * 1.2)
	host.global_hitstun_modifier = str(float(host.global_hitstun_modifier) * 1.2)
	host.min_di_scaling = str(float(host.min_di_scaling) * 0.5)
	host.max_di_scaling = str(float(host.max_di_scaling) * 0.5)
	host.opponent_original_damage_taken = host.opponent.damage_taken_modifier
	host.opponent.damage_taken_modifier = str(float(host.opponent.damage_taken_modifier) * 1.2)
	host.biden_art_ticks = 100
