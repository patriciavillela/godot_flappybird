extends Node

func _ready():
	pass

func get_main_node():
	return get_tree().get_root().get_child("Node")
