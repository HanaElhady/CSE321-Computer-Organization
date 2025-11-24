.data
prompt: .asciiz "Enter number: "
result: .asciiz "The average is: "

.text
main:

    la $a0,prompt
    li $v0,4
    syscall

    li $v0,5
    syscall
    move $t0,$v0        

    la $a0,prompt
    li $v0,4
    syscall

    li $v0,5
    syscall
    move $t1,$v0         

    la $a0,prompt
    li $v0,4
    syscall

    li $v0,5
    syscall
    move $t2,$v0         

    la $a0,prompt
    li $v0,4
    syscall

    li $v0,5
    syscall
    move $t3,$v0         

    add $t0,$t0,$t1
    add $t0,$t0,$t2
    add $t0,$t0,$t3

    li $t1,4
    div $t0,$t1
    mflo $t0

    la $a0,result
    li $v0,4
    syscall

    move $a0,$t0
    li $v0,1
    syscall

    li $v0,10
    syscall
