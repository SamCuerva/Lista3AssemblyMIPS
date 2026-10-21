.data
    msg: .asciiz "Digite um numero inteiro: "
    maiorMsg: .asciiz "\nMaior valor: "
    menorMsg: .asciiz "\nMenor valor: "

.text

main:
    li $s0, 0      
    li $s1, 0       
    li $s2, 0       

loop:

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    beq $s0, $zero, primeiro

    bgt $t0, $s1, atualiza_maior

verifica_menor:

    blt $t0, $s2, atualiza_menor
    j proximo

atualiza_maior:
    move $s1, $t0
    j verifica_menor

atualiza_menor:
    move $s2, $t0
    j proximo

primeiro:
    move $s1, $t0
    move $s2, $t0

proximo:
    addi $s0, $s0, 1
    blt $s0, 10, loop

    li $v0, 4
    la $a0, maiorMsg
    syscall

    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 4
    la $a0, menorMsg
    syscall

    li $v0, 1
    move $a0, $s2
    syscall

