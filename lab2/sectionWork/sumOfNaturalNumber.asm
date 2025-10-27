# Lab Exercise 5: For Loop Example Task: 
# Write a MIPS program that calculates the sum of the first n natural numbers using a for loop structure.

.data
prompt: .asciiz "Enter a positive integer n: "

.text 
main:
li $v0,4
la $a0,prompt
syscall
li $v0,5
syscall
move $t0,$v0  # $t0 -> n
li $t1,0  # $t1 -> sum
li $t2,0 # $t2 -> i

loop: 
add $t1,$t1,$t2
beq $t2,$t0, end
add $t2,$t2,1
j loop

end:
li $v0,1
move $a0,$t1
syscall
li $v0,10
syscall
