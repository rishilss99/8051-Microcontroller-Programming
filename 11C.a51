ORG 0H
	MOV P2,#00H
	Z:
	JNB P2.1, Z
	CPL P1.1
	ACALL DELAY	
	SJMP Z
	
DELAY:
	MOV TMOD,#01H
	MOV TL0,#00H
	MOV TH0,#0F4H
	SETB TR0
	X: 
	JNB TF0,X
	CLR TF0
	CLR TR0
RET

END
		