.text
ori $t0, $zero, 0x7000 #0x7000 no registrador $t0
sll $t0, $t0, 16 #Deslocamento a esquerda de 16 bits
addu $t0, $t0, $t0 #Resultado final: 1879048192 + 1879048192: 3758096384

# b)
# Resultado final: 3758096384
# O resultado está corredo, se convertermos os hexadecimais em decimais, o resultado da soma da exatamente o mesmo código hexadecimal.

# c)
# Se substituirmos a instrução addu por add da overflow, pois são dois números grandes somados.