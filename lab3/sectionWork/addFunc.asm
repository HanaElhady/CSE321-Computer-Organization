.data
.text

add_func:
    addi $sp,$sp,-4
    sw $ra,0($sp)
    add $v0,$a1,$a0
    jr $ra

    lw $ra,0($sp)
    addi $sp,$sp,4

main:
    li $a0,5
    li $a1,4
    jal add_func

    move $a0,$v0
    li $v0,1
    syscall
    li $v0,10
    syscall



