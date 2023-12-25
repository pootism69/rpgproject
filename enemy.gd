extends CharacterBody2D

var speed = 50
var chase = false
var player = null


func _physics_process(_delta):
	if chase:
		position += (player.position - position)/speed


func _on_area_2d_body_entered(_body):
	player = _body
	chase = true



func _on_area_2d_body_exited(_body):
	player = null
	chase = false
