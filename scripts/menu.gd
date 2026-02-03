extends Control


func _ready():
	if $score :
		$score.text = str(Global.score)

func _on_play_pressed():
	play_swich_sfx()
	Global.score = 0
	get_tree().change_scene_to_file("res://scenes/world.tscn")


func _on_exite_pressed():
	get_tree().quit()



func play_swich_sfx():
	var new_audio = AudioStreamPlayer.new()
	new_audio.stream = load("res://game assets/Sounds/switch21.ogg")
	get_tree().root.add_child(new_audio)
	new_audio.pitch_scale = randf_range(0.8,1.2)
	new_audio.play()
