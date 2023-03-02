extends Node2D

# Criação de variáveis importantes para o resto do desenvolvimento
var teste = false
var valor = 0
var numero = 0
var lista = []
var nome
var cont
var i = 0
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	nome = $LineEdit.text
	numero = int($LineEdit2.text)
	nome = String(nome)


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	# Modificação da lista de números para string
	$Label.text = String(lista)
	


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while i < (len(lista)):
		cont=0
		# Verificação de números, se é par ou ímpar
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			# Mostra o nome na tela com Baldo
			$Label2.text = str(nome) + " Baldo"
		i += 1
		
