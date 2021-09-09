.text
#Atribuição de x,y (atribui números aleatórios, depois testei com 0 & 8)
addi $t1, $zero, 2 # t1 = 2
addi $t2, $zero, 3 # t2 = 3

#----------------------------------------#

#Atribuição dos multiplicadores | numerador
addi $v0, $zero, 9 # v0 = 9
addi $v1, $zero, 3 # v1 = 3

#Multiplicações | numerador
mult $v0, $t1 # 9 * 2 = 18
mflo $a0 # a0 = 18
mult $v1, $t2 # 3 * 3 = 9
mflo $a1 # a1 = 9

#Somas e subtrações | numerador
add $s0, $a0, $a1 # s0 = 18 + 9
sub $s0, $s0, 7 # s0 = 27 - 7

#----------------------------------------#

#Atribuição dos multiplicadores | denominador

addi $v0, $zero, 2 # v0 = 2
addi $v1, $zero, 1 # v1 = 1

#Multiplicações | denominador

mult $v0, $t1 # 2 * 2 = 4
mflo $a0 # a0 = 4
mult $v1, $t2 # 1 * 3 = 3
mflo $a1 # a1 = 3

#Somas e subtrações | denominador

sub $s1, $a0, $a1 # s1 = 4 - 3 = 1
addi $s1, $s1, 8 # s1 = 1 + 8 = 9

#----------------------------------------#

#Divisão

div $s0, $s1
mfhi $t4 # Resto da divisão
mflo $t3 # Quociente da divisão


#  Responda o que acontece quando x = 0 e y = 8.
# R: Com essex x, y fica uma divisão por 0!