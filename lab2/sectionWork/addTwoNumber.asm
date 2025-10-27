	# Exercise 1: Add Two Numbers
	# Write a MIPS assembly program that performs the following tasks:
	# Prompts the user to enter two integers.
	# Reads both numbers from the console.
	# Adds the two numbers together.
	# Displays the result with an appropriate message.

.data
msg1:       .asciiz "Enter the first integer: "
msg2:       .asciiz "Enter the second integer: "
outputted:  .asciiz "The sum is:"

.text
main:
	li      $v0,    4
	la      $a0,    msg1
	syscall

	li      $v0,    5
	syscall
	move    $t0,    $v0

	li      $v0,    4
	la      $a0,    msg2
	syscall

	li      $v0,    5
	syscall
	move    $t1,    $v0

	add     $t2,    $t0,        $t1

	li      $v0,    4
	la      $a0,    outputted
	syscall

	li      $v0,    1
	move    $a0,    $t2
	syscall

	li      $v0,    10
	syscall



