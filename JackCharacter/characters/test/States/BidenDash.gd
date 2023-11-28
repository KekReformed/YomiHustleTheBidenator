extends CharacterState

export var dash_speed = 10
var dash_force = 0

func _frame_0():
	print(data)
	dash_force = (dash_speed * (float(data.x) / 65) * host.move_speed_mod) * host.get_facing_int()
	host.apply_force(int(dash_force), 0)
	print(dash_speed)
	print(dash_force)
