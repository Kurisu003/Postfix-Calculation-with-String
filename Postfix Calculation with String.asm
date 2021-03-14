#Postfix Rechnungen mit STRING.asm
#Rechnet in der Postfix schreibweise indem alles in einen String geschrieben wird

.data

	Z1: .byte 0
	Z2: .byte 0
	OP: .asciiz "0"


.text
main:

	
	li $v0, 8					#Befehl 8 auf $v0
	la $a0, OP					#Adresse von OP auf $a0
	li $a1, 100					#Leange auf $a1
	move $t0, $a0					#Schreibt den eingelesene String auf $t3
	syscall
	
	la $t0, OP
	lb $a0, ($t0)
	li $v0, 11
	syscall

li $v0, 10
syscall
