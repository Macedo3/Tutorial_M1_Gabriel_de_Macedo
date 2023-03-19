extends Node2D


func _on_areaCasa_body_entered(body):
	# Ao entrar na area2D da casa ele ira ser transferido para o space invaders
	get_tree().change_scene("res://scenes/main.tscn")
