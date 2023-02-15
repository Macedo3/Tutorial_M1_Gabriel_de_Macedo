extends Node2D

# Criação da lista pronta em referencia a 3 tipos de IA
var tipos_IA = ["Machine Learning", "Deep Learning", "Deep reinforcement learning"]

# Criação de uma lista para colocar os números do usuário
var lista_de_numeros = []

# Variáveis de números para o usuário
var numero1
var numero2
var numero3

# Lista pronta de números
func _on_Button_Numero_Pronto_pressed():
	$ColorRect/TextEdit.text = String(tipos_IA)
	
# Lista a ser criada usando os números a serem colocados pelo usuário
func _on_Button_pressed():
	numero1 = float($DADO1.text)
	lista_de_numeros.append(numero1)
	numero2 = float($DADO2.text)
	lista_de_numeros.append(numero2)
	numero3 = float($DADO3.text)
	lista_de_numeros.append(numero3)
	
	$ColorRect/TextEdit.text = String(lista_de_numeros)
	# Limpeza da lista para nenhum elemento
	lista_de_numeros = []

