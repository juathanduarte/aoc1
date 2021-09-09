.text 
#Atribuição de x,y, e z
or $t1, $zero, 10
or $t2, $zero, 5
or $t3, $zero, 8

#Atribuição dos multiplicadores
or $t4, $zero, 6
or $t5, $zero, 4
or $t6, $zero, 6

#Multiplicações
mult $t1, $t4
mflo $s0
mult $t2, $t5
mflo $s1
mult $t3, $t6
mflo $s2

#Somas e subtrações
sub $t7, $s0, $s1
add $t7, $t7, $s2

