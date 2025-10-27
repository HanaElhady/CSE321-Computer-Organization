# Task 3: Write an assembly language program using MIPS architecture to implement switch...case.
.data
prompt:   .asciiz "Choose a number (1-3) to get a quote: "
quote1:   .asciiz "\"Believe in yourself and all that you are.\"\n"
quote2:   .asciiz "\"Never give up. Great things take time.\"\n"
quote3:   .asciiz "\"Dream big, work hard, stay humble.\"\n"
defaultQ: .asciiz "\"Every day is a new beginning.\"\n"

.text
main:
li $v0,4
la $a0,prompt
syscall

li $v0,5
syscall
move $a0,$v0
li $t1,1
li $t2,2
li $t3,3
beq $a0,$t1,case_1
beq $a0,$t2,case_2
beq $a0,$t3,case_3
j default_case

case_1:
    li $v0,4
    la $a0,quote1
    syscall
    j end
case_2:
    li $v0,4    
    la $a0,quote2
    syscall
    j end  
case_3:
    li $v0,4    
    la $a0,quote3
    syscall
    j end
default_case:
    li $v0,4    
    la $a0,defaultQ
    syscall
end:
    li $v0,10 
    syscall    