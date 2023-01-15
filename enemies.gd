extends Node2D

func _enter_tree():
	randomize()
	get_node("%SeamlessToggle").connect("toggled", toggled)
	
func toggled(pressed: bool):
	$Background.texture.seamless = pressed


