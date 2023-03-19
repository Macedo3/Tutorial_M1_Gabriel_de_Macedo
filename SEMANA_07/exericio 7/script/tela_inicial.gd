extends Node2D


func _on_botaoJogar_pressed():
	# Função que enviará o jogador a primeira parte do jogo.
	get_tree().change_scene("res://scenes/inside.tscn")


func _on_botaoSair_pressed():
	# Função que fechará o jogo.
	get_tree().quit()
