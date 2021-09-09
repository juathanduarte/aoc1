.data
	a: .half 30
	b: .half 5
	Q: .space 2
	P: .space 4
	
.text
	lui $t0, 0x1001
	lhu $t1, 0x0($t0)
	lhu $t2, 0x2($t0)
	mult $t1, $t2
	mflo $t3
	sw $t3, 4($t0)
	div $t1, $t2
	mflo $t4
	sh $t4, 8($t0)
