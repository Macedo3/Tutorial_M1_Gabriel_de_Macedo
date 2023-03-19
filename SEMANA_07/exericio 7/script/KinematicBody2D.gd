extends KinematicBody2D


# Variavel velocidade para movimentação do personagem
var velocity = Vector2.ZERO


# Função para fazer a movimentação do pernsonagem
func _physics_process(delta):
	# Verificando se o botão pressionado é para direita ou esquerda, para seguir com a movimentação.
	if Input.is_action_pressed("ui_right"):
		velocity.x = 350
	if Input.is_action_pressed("ui_left"):
		velocity.x = -350
	
	# Movimentação do personagem.
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = 0
