extends KinematicBody2D

var speed = 100

func _ready():
	# Passando o physics process para verdadeiro
	set_physics_process(true)


func _process(delta):
	# Adicionando o move_and_collide para a movimentação horizontal.
	move_and_collide(Vector2(speed * delta, 0))
