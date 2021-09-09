addi $t1, $zero, 3 #B
addi $t2, $zero, 2 #b
addi $t3, $zero, 5 #h
addi $t6, $zero, 2

add $t5, $t1, $t2
mult $t3, $t5
mflo $t5
div $t5, $t6
mflo $t4
