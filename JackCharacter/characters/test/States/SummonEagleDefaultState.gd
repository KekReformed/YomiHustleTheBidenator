extends ObjectState

var hit_something = false
var velX = 8
var velY = 0
var origHeight
var velSet = false
var tickCount = 1
var hitboxActive = true
onready var hitbox = $Hitbox

func _enter():
	if !velSet:
		velX = -10
		velY = 5
		origHeight = host.get_pos().y
		velSet = true
		if host.get_facing_int() == -1:
			host.sprite.flip_h = true

func _frame_0():
	if !hitboxActive:
		hitbox.deactivate()

func _tick():
	if not hit_something:
		host.move_directly(velX * host.get_facing_int(), velY)
		if tickCount >= 3:
			velY -= 1
			tickCount = 1
		else:
			tickCount += 1
	
	
	var pos = host.get_pos()
	if pos.y <= origHeight - 50:
		hit_something = true
		host.disable()
	
	if pos.x <= -host.stage_width or pos.x >= host.stage_width or pos.y >= 0 or pos.y <= -host.ceiling_height :
		hit_something = true
		host.disable()


func _on_hit_something(obj,hitbox):
	._on_hit_something(obj,hitbox)
	if obj.is_in_group("Fighter"):
		hitboxActive = false
	else:
		hit_something = true
		host.disable()
