extends Node2D


@onready var enemy = preload("res://scenes/enemy.tscn")


func _ready():
	randomize()
	add_enemy()


func add_enemy():

	var new_enemy = enemy.instantiate()
	new_enemy.position.x = randi()% 1700 + 1280
	new_enemy.position.y = randi()% 430 + 110
	self.add_child(new_enemy)


func _on_timer_timeout():
	add_enemy()
	if $Timer.wait_time >= 0.3 :
		$Timer.wait_time *= 0.98
