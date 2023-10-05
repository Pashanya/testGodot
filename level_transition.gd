extends CanvasLayer

@onready var animation_player = $AnimationPlayer
@onready var level_transition = $"."

func _ready():
	pass

func fade_from_black():
	animation_player.play("fade_from_black")
	await animation_player.animation_finished
	level_transition.hide()
	
func fade_to_black():
	level_transition.show()
	animation_player.play("fade_to_black")
	await animation_player.animation_finished
