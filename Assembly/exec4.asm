.text
# Armazenar x no registrador $t5
ori $t5, $zero, -5

# Atribuição dos multiplicadores
or $t0, $zero, 3
or $t1, $zero, 5

# Quadrado
mult $t5, $t5
mflo $s0

# Equação
mult $t0, $s0 # 3 * x²
mflo $s1
mult $t1, $t5 # 5 * x
mflo $s2

# Resultado de y
sub $t6, $s1, $s2
addi $t6, $t6, 7 

# Substituindo addi por ori, ambos números (negativos & positivos) são funcionais, porém nos negativos com ori, inicia-se o registrador $at com -65536, tem-se o a soma (-65536 + 65531) e
# o resto (-5) é armazenado no registrador $t5, logo após a execução segue normalmente.