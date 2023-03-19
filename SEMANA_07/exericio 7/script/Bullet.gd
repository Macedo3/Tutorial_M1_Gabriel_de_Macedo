extends KinematicBody2D

var speed = 600


func _ready():
	set_physics_process(true)


func _physics_process(delta):
	# Movimentação da bala em sentido vertical
	var CollidedObject = move_and_collide(Vector2(0, -speed*delta))
	# Deletando o inimigo após ele receber dano
	if CollidedObject:
		CollidedObject.get_collider().queue_free()
	# Deletando a bala
	queue_free()
