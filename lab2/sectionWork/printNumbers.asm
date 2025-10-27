.data
newline: .asciiz "\n"
.text
main:
 li $t0,1

 loop: 
    li $v0,1
    move $a0,$t0
    syscall

    li $v0,4
    la $a0,newline
    syscall

    add $t0,$t0,1

    beq $t0,11 , end
    j loop

end : 
li $v0,10
syscall

