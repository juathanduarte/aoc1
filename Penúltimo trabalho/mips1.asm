.data
	end1Text: .asciiz "Digite o primeiro endere�o:\n"
	end2Text: .asciiz "Digite o segundo endere�o:\n"
	end3Text: .asciiz "Digite o terceiro endere�o:\n"
	endEnd: .asciiz "A m�dia entre os tr�s valores �: "

.text
	li $v0, 4 #C�digo de imprimir a String
	la $a0, end1Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #C�digo para ler o inteiro
	syscall #Invoca o SO
	
	move $a1, $v0 #Mover o primeiro inteiro para o registrador a1
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #C�digo de imprimir a String
	la $a0, end2Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #C�digo para ler o inteiro
	syscall
	
	move $a2, $v0 #Mover o segundo inteiro para o registrador a2
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #C�digo de imprimir a String
	la $a0, end3Text #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 5 #C�digo para ler o inteiro
	syscall
	
	move $a3, $v0 #Mover o terceiro inteiro para o registrador a3
	
	#-------------------------------------------------------------#
	
	addi $t4, $zero, 3 #Total de valores
	add $t5, $a1, $a2  #Soma dos valores
	add $t5, $t5, $a3 #Soma dos valores
	div $t5, $t4 #Divis�o
	mflo $t5 #M�dia
	lui $s0, 0x1001
	ori $s0, 0x0080
	sw $t5, 0($s0)
	
	#-------------------------------------------------------------#
	
	li $v0, 4 #C�digo de imprimir a String
	la $a0, endEnd #Imprime a String
	syscall #Invoca o SO
	
	li $v0, 1 #C�digo para imprimir um Inteiro
	li $a0, 0
	syscall #Invoca o SO
	
	move $a1, $v0 #Mover o primeiro inteiro para o registrador a1
	
	#-------------------------------------------------------------#
	
	li $v0, 10 #C�digo para sair
	syscall #Invoca o SO