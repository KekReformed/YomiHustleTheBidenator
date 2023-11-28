extends CharacterState




func _frame_0():
	host.biden_art_end()
	host.biden_art = "Speed"
	host.move_speed_mod = 1.5
	host.chara.set_max_ground_speed(str(int(host.max_ground_speed) * host.move_speed_mod))
	host.biden_art_ticks = 150
