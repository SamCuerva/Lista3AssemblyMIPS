.data

	msg1: .asciiz "Digite o raio: "
	msg2: .asciiz "O comprimento é: "

.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	mul $t1, $t0, 2
	mul $t1, $t1, 3
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	