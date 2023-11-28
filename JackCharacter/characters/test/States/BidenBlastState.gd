extends CharacterState

export (PackedScene) var BidenBlastScene
export var projPosX = 0
export var projPosY = 0

func _frame_6():
	var object = host.spawn_object(BidenBlastScene, projPosX, projPosY,true , data)
