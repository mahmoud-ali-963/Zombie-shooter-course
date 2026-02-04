# ============================================
# Godotology - تم توليد هذا الكود من قبل غودوتولوجي 
# YouTube: https://www.youtube.com/@godotology
# Instagram: @godotology
# ============================================
#   ________           .___      __        .__                       
#  /  _____/  ____   __| _/_____/  |_ ____ |  |   ____   ____ ___.__.
# /   \  ___ /  _ \ / __ |/  _ \   __/  _ \|  |  /  _ \ / ___<   |  |
# \    \_\  (  <_> / /_/ (  <_> |  |(  <_> |  |_(  <_> / /_/  \___  |
#  \______  /\____/\____ |\____/|__| \____/|____/\____/\___  // ____|
#         \/            \/                            /_____/ \/     
# ============================================

extends Node2D


var score = 0

func _physics_process(_delta):
	$UI/Label.text = str(Global.score)


func _on_area_2d_body_entered(body):
	if body.is_in_group("Enemy"):
		get_tree().change_scene_to_file("res://scenes/lose_menu.tscn")
