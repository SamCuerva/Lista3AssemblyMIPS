.data

	msg1: .asciiz "Digite o primeiro valor: "
	msg2: .asciiz "Digite o segundo valor: "
	msg3: .asciiz "Digite o terceiro valor: "
	msg4: .asciiz "Digite o quarto valor: "
	msg5: .asciiz "APROVADO"
	msg6: .asciiz "EXAME"
	msg7: .asciiz "REPROVADO"

.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t2 $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t4, $v0
	
	add $t0, $t1, $t2
	add $t0, $t0, $t3
	add $t0, $t0, $t4
	div $t0, $t0, 4
	
	bge $t0, 6, aprovado
	bge $t0, 3, exame
	blt $t0, 3, reprovado
	
aprovado:

	li $v0, 4
	la $a0, msg5
	syscall
	j continuar

exame:

	blt $t0, 6, continuaExame
	
	continuaExame:
	
		li $v0, 4
		la $a0, msg6
		syscall
		j continuar

reprovado:

	li $v0, 4
	la $a0, msg7
	syscall
	j continuar

continuar:
	
	
	
	
	