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

extends CharacterBody2D


@onready var bullet = preload("res://scenes/bullet.tscn")
@onready var audio_stream_player = $audio_stream_player



func _physics_process(_delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("fire"):
		audio_stream_player.pitch_scale = randf_range(0.8,1.2)
		audio_stream_player.play()
		var new_bullet = bullet.instantiate()
		new_bullet.position = $gun_tip.get_global_position()
		new_bullet.apply_impulse(Vector2(2500,0).rotated(rotation),Vector2.ZERO)
		get_tree().get_root().add_child(new_bullet)
	
