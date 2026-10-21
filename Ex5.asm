.data

	msg1: .asciiz "Digite o primeiro valor: "
	msg2: .asciiz "Digite o segundo valor: "
	msg3: .asciiz "A soma é: "

.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	bgt $t0, $t1, primeiroMaior
	move $t2, $t1
	move $t3, $t0
	j iniciar
	
primeiroMaior:

	move $t2, $t0
	move $t3, $t1
	
iniciar:

	addi $t3, $t3, 1
	li $t4, 0
	
loop:

	bge $t3, $t2, fimLoop
	andi $t5, $t3, 1
	beq $t5, $zero, proximo
	add $t4, $t4, $t3
	
proximo:

	addi $t3, $t3, 1
	j loop
	
fimLoop:

	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall

	
	
	