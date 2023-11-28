extends CharacterState


func _frame_0():
	host.biden_art_end()
	host.biden_art = "Shield"
	host.damage_taken_modifier = str(float(host.damage_taken_modifier) * 0.8)
	host.global_hitstop_modifier = str(float(host.global_hitstop_modifier) * 0.8)
	host.global_hitstun_modifier = str(float(host.global_hitstun_modifier) * 0.8)
	host.min_di_scaling = str(float(host.min_di_scaling) * 2)
	host.max_di_scaling = str(float(host.max_di_scaling) * 2)
	host.opponent_original_damage_taken = host.opponent.damage_taken_modifier
	host.opponent.damage_taken_modifier = str(float(host.opponent.damage_taken_modifier) * 0.8)
	host.di_combo_limit = 8
	host.biden_art_ticks = 100
