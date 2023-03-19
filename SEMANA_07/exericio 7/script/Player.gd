extends KinematicBody2D

var bullet = preload("res://Assets/caracter-removebg-preview.png")
var speed = 400



# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process(true)


func _process(delta):
	# Spawnando a bala
	if Input.is_action_just_pressed("fire"):
		var Bullet_Instance = bullet.instance()
		bullet.instance().position = Vector2(position.x, position.y - 60)
		get_tree().get_root().add_child(Bullet_Instance)


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))


func _on_BackButtom_pressed():
	get_tree().change_scene("res://scenes/tela_inicial.tscn")
