.data
	a: .word -3
	b: .word 6
	c: .word 4
	d: .word -2
	e: .word 8
	x: .word 3
	y: .space 4

.text

#Carregamento dos dados
	lui $t0, 0x1001
	lw $t1, 0($t0) #a
	lw $t2, 4($t0) #b
	lw $t3, 8($t0) #c
	lw $t4, 0xc($t0) #d
	lw $t5, 0x10($t0) #e
	lw $t6, 0x14($t0) #x
	lw $t7, 0x18($t0) #y

#Cálculos

## bx^3
	mult $t6, $t6
	mflo $s0
	mult $t6, $s0
	mflo $s0
	mult $t2, $s0
	mflo $s0

## a^4
	mult $t1, $t1
	mflo $s1
	mult $t1, $s1
	mflo $s1
	mult $t1, $s1
	mflo $s1

## cx^2
	mult $t6, $t6
	mflo $s2
	mult $s2, $t3
	mflo $s2

## dx
	mult $t4, $t6
	mflo $s3

## Somas
	add $s4, $s0, $s1
	add $s4, $s4, $s2
	add $s4, $s4, $s3

# Guardar
	sh $s4, 0x18($t0)
