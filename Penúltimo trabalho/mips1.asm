.data
	end1Text: .asciiz "Digite o primeiro endereço:\n"
	end2Text: .asciiz "Digite o segundo endereço:\n"
	end3Text: .asciiz "Digite o terceiro endereço:\n"
	endEnd: .asciiz "A média entre os três valores é: "

.text
	li $v0, 4 #Código de imprimir a String
	la $a0, end1Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #Código para ler o inteiro
	syscall #Invoca o SO
	
	move $a1, $v0 #Mover o primeiro inteiro para o registrador a1
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #Código de imprimir a String
	la $a0, end2Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #Código para ler o inteiro
	syscall
	
	move $a2, $v0 #Mover o segundo inteiro para o registrador a2
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #Código de imprimir a String
	la $a0, end3Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #Código para ler o inteiro
	syscall
	
	move $a3, $v0 #Mover o terceiro inteiro para o registrador a3
	
	#-------------------------------------------------------------#
	
	addi $t4, $zero, 3 #Total de valores
	add $t5, $a1, $a2  #Soma dos valores
	add $t5, $t5, $a3 #Soma dos valores
	div $t5, $t4 #Divisão
	mflo $t5 #Média
	lui $s0, 0x1001
	ori $s0, 0x0080
	sw $t5, 0($s0)
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #Código de imprimir a String
	la $a0, endEnd #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 1 #Código para imprimir um Inteiro
	li $a0, 0
	syscall #Invoca o SO
	
	move $a1, $v0 #Mover o primeiro inteiro para o registrador a1
	
	#-------------------------------------------------------------#
	
	li $v0, 10 #Código para sair
	syscall #Invoca o SO