extends Control

func _ready():
	while not Global.ready:
		yield(get_tree().create_timer(0.1), "timeout")
	get_tree().change_scene("res://Menu.tscn")
