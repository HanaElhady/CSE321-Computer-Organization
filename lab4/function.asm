.data
.text
multiply:
    addi $sp,$sp,-4
    sw $ra,0($sp)
    mul $v0,$a0,$a1
    lw $ra,0($sp)
    addi $sp,$sp,4
    jr $ra

main:
 addi $sp,$sp,-4
    sw $ra,0($sp)
    li $a0,5
    li $a1,12
    jal multiply
    move $a0, $v0         
    li $v0,1
    syscall
    lw $ra,0($sp)
    addi $sp,$sp,4
    jr $ra
