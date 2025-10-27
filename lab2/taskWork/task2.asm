.data
prompt:   .asciiz "Enter N: "
numbers:  .asciiz "Enter number: "
result:   .asciiz "Average is: "

.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5         
    syscall
    move $t0,$v0      # t0 -> N

    li $t1,0          # t1 -> counter
    li $t2,0          # t2 -> sum = 0

loop:
    beq $t1,$t0,end 

    li $v0,4
    la $a0,numbers
    syscall

    li $v0,5
    syscall
    move $t3,$v0      # t3 -> input number

    add $t2,$t2,$t3

    addi $t1,$t1,1

    j loop

end:
    div $t2,$t0       
    mflo $a0         

    li $v0,4
    la $a0,result
    syscall

    li $v0,1
    mflo $a0
    syscall

    li $v0,10
    syscall
