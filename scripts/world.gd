extends Node2D


var score = 0

func _physics_process(_delta):
	$UI/Label.text = str(Global.score)


func _on_area_2d_body_entered(body):
	if body.is_in_group("Enemy"):
		get_tree().change_scene_to_file("res://scenes/lose_menu.tscn")
