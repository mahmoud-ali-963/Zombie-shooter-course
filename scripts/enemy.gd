extends CharacterBody2D


var Speed = 75

var health = 100

func _physics_process(delta):
	position.x -= Speed*delta
	
	if health <= 0:
		Global.score = Global.score + 1
		play_die_sfx()
		queue_free()


func _on_area_2d_body_entered(body):
	if body.is_in_group("Bullets"):
		body.queue_free()
		health -= 25
		print("entered")


func play_die_sfx():
	var new_audio = AudioStreamPlayer.new()
	new_audio.stream = load("res://game assets/Sounds/juicy.ogg")
	get_tree().root.add_child(new_audio)
	new_audio.pitch_scale = randf_range(0.8,1.2)
	new_audio.play()
