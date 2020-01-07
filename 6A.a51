ORG 0H
	MOV R0 , #30h
	MOV R1 , #31h
	MOV R2 , #08h
	MOV 30h,#01h
	MOV 31h,#01h
	X:
	MOV A, @ R0
	MOV B, @ R1
	ADD A,B
	INC R1
	MOV @ R1,A
	INC R0
	DJNZ R2 , X
END