.data
	.word 1 #endereço 0x1001000
	.word 2 #endereço 0x1001004
	.word 3 #endereço 0x1001008
	.word 4 #endereço 0x1001012
	.word 5 #endereço 0x1001016

.text
	ori $t0, $zero, 0x1001
	ori $v0, $zero, 5
	sll $t0, $t0, 16
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	mult $t1, $t2
	mflo $a1
	add $t1, $t1, $t2
	lw $t2, 8($t0)
	mult $a1, $t2
	mflo $a1
	add $t1, $t1, $t2
	lw $t2, 0xc($t0)
	mult $a1, $t2
	mflo $a1
	add $t1, $t1, $t2
	lw $t2, 0x10($t0)
	mult $a1, $t2
	mflo $a1 #valor produto
	add $t1, $t1, $t2 #soma dos valores
	div $t1, $v0
	mflo $v1 #valor médio