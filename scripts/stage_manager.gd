extends CanvasLayer

const STAGE_GAME = "res://stages/game_stage.tscn"

var is_changing = false

signal stage_changed

func _ready():
	pass

func change_stage(stage_path):
	if is_changing: return
	is_changing = true
	get_tree().get_root().set_disable_input(true)
	get_node("anim").play("fade_in")
	yield(get_node("anim"),"finished")
	get_tree().change_scene(stage_path)
	emit_signal("stage_changed")
	get_node("anim").play("fade_out")
	is_changing = false
	get_tree().get_root().set_disable_input(false)