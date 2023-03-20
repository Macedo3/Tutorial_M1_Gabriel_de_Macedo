extends KinematicBody2D

# Transformando a bala em objeto do game
var bullet = preload("res://scenes/Bullet.tscn")
var speed = 400


func _ready():
	# Valores verdadeiros a funções que serão usadas.
	set_physics_process(true)
	set_process(true)


func _process(delta):
	# Spawnando a bala
	# Comando adcionado com o "space"
	if Input.is_action_just_pressed("fire"):
		var Bullet_Instance = bullet.instance()
		# Usando o vector2 para que a bala nasça na mesma posição x, porém acima do personagem
		Bullet_Instance.position = Vector2(position.x, position.y - 60)
		get_tree().get_root().add_child(Bullet_Instance)


func _physics_process(delta):
	# Verificando se o botão pressionado foi o esquerdo
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	# Verificando se o botão pressionado foi o direito.
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))

