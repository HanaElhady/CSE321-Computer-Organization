# Task 2: Write an assembly program to print the following information: 
# Name: Your Name 
# ID:   Your ID 
# Course: CSE321-Computer-Organization
.data 
  name:   .asciiz "Name: Hana Ahmed Elhady"
  id:     .asciiz "ID: 123"
  course: .asciiz "Course: CSE321-Computer-Organization"
  newline:.asciiz "\n"

.text 
main:
  li $v0, 4
  la $a0, name
  syscall

  li $v0, 4
  la $a0, newline
  syscall

  li $v0, 4
  la $a0, id
  syscall

  li $v0, 4
  la $a0, newline
  syscall

  li $v0, 4
  la $a0, course
  syscall

  li $v0, 10
  syscall
