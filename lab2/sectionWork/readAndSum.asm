# Do-While Loop Example Write a MIPS assembly program that reads numbers from the user and sums them until the user enters zero. 
# Display the final sum at the end.

.data
prompt: .asciiz "Enter a number (0 to stop): "
result: .asciiz "The sum is: "

.text
main:
li $t1,0
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall
move $t0,$v0
move $t1,$t0
loop: 
    beq $t0,0 , end 

    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $t0,$v0


    add $t1,$t0,$t1
    j loop

end : 
li $v0,4
la $a0,result
syscall
li $v0,1
move $a0,$t1
syscall
li $v0,10
syscall