extends CharacterState

export (PackedScene) var SummonEagleScene
export var projPosX = 0
export var projPosY = 0

func _frame_6():
	var object = host.spawn_object(SummonEagleScene, projPosX, projPosY - (data.count * 2),true)
