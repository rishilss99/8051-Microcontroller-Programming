ORG 0000H
	LJMP MAIN

ORG 000BH
	SETB P1.3
	DJNZ R0,Z
	Y:
	CLR P1.3
	MOV R0,#04H
	Z:
	MOV TH0,#0FEH
	MOV TL0,#0CDH
	RETI

ORG 0300H
	MAIN:
	MOV R0,#04H
	MOV TMOD,#01H
	MOV TH0,#0FEH
	MOV TL0,#0CDH
	MOV IE,#82H
	SETB TR0
	X: SJMP X
	
END
	
	