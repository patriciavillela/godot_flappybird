extends Camera2D

onready var bird = get_node("/root/world/bird")

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	set_pos(Vector2(bird.get_pos().x,get_pos().y))

func get_total_pos():
	return get_pos() + get_offset()