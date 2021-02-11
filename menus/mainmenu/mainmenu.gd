extends Control

func _ready():
	network.connect("server_created", self, "_on_ready_to_play")
	network.connect("join_success", self, "_on_ready_to_play")
	network.connect("join_fail", self, "_on_join_fail")


func _on_joingame_pressed():
	network.join()

func _on_ready_to_play():
	get_tree().change_scene("res://gameworld.tscn")

func _on_join_fail():
	print("Failed to join server")

