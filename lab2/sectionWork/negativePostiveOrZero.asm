.data
prompt:       .asciiz "Enter a number: "
positive:     .asciiz " is a positive number.\n"
negative:     .asciiz " is a negative number.\n"
zero:         .asciiz " is zero.\n"

.text
main:
    li      $v0, 4
    la      $a0, prompt
    syscall

    li      $v0, 5
    syscall
    move    $t0, $v0         

    move    $a0, $t0
    li      $v0, 1
    syscall

    beq     $t0, $zero, print_zero
    bgtz    $t0, print_positive
    j       print_negative


print_zero:
    la      $a0, print_zero
    j final 

print_positive:
    la      $a0, positive
       j final 


print_negative:
    la      $a0, negative
    j final 

final:
li      $v0, 4
syscall
j print_end

print_end:
    li      $v0, 10
    syscall
