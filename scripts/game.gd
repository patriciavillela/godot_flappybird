extends Node

const GROUP_PIPES = "pipes"
const GROUP_GROUNDS = "grounds"
const GROUP_BIRDS = "birds"

const MEDAL_BRONZE = 10
const MEDAL_SILVER = 20
const MEDAL_GOLD = 30
const MEDAL_PLATINUM = 40

var score = 0 setget _set_score
var highscore = 0 setget _set_highscore

signal score_changed
signal highscore_changed

func _set_score(new_value):
	score = new_value
	emit_signal("score_changed")

func _set_highscore(new_value):
	highscore = max(new_value,highscore)
	emit_signal("highscore_changed")

func _ready():
	stage_manager.connect("stage_changed",self,"_on_stage_changed")
	
func _on_stage_changed():
	score = 0
