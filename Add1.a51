ORG 0H
	
	MOV 30h,#0FFH
	MOV 31h,#0FEH
	MOV A,30h
	MOV B,31h
	ADD A,B
	JNC X
	MOV 40h,#01H
	X:
	MOV 41h,A
	
END