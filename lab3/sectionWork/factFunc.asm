.data

.text
factorial:
    addi $sp,$sp,-4
    sw $ra,0($sp)
    li $t0,1
    while: beq $a0,$zero,exit
        mul $t0,$t0,$a0 
        addi $a0,$a0,-1
        j while
    exit:
        move $v0,$t0
        lw $ra,0($sp)
        addi $sp,$sp,4
        jr $ra


main:
    li $a0,3
    jal factorial

    move $a0,$v0
    li $v0,1
    syscall
    li $v0,10
    syscall