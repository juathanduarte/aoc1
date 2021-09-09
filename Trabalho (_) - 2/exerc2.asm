.data
a: .word 2
b: .word 4
c: .word 8

.text 
	#Carrega a posição B
	ori $t0, $zero, 0x1001
	sll $t0, $t0, 16
	lw $t2, 4($t0)

	#Guarda o conteudo na posição requirida
	ori $t3, $zero, 0x1001
	sll $t3, $t3, 16
	ori $t3, $t3, 0xd000
	sw $t2, 0($t3)