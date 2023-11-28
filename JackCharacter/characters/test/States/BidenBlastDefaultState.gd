extends ObjectState

var hit_something = false
var velX = 0
var velY = 0
var velMult = 1
var launched = false

func _enter():
	if !launched:
		if data.y == -1:
			velX = 6
			velY = -6
			host.rotate(deg2rad(-45 * host.get_facing_int()))
		elif data.y == 1:
			velX = 6
			velY = 6
			host.rotate(deg2rad(45  * host.get_facing_int()))
		else :
			velX = 12
		launched = true

func _frame_0():
	if host.get_facing_int() == -1:
		host.sprite.flip_h = true
	if host.creator.combo_count >= 1:
		 velMult = 4
	else: 
		velMult = 1

func _tick():
	if not hit_something:
		host.move_directly(velX * host.get_facing_int() * velMult, velY * velMult)
	var pos = host.get_pos()
	if pos.x <= -host.stage_width or pos.x >= host.stage_width or pos.y >= 0 or pos.y <= -host.ceiling_height:
		hit_something = true
		host.disable()


func _on_hit_something(obj,hitbox):
	._on_hit_something(obj,hitbox)
	hit_something = true
	host.disable()
