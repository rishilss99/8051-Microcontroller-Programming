ORG 0H
	MOV A,30h
	MOV B,31h 
	CJNE A,B,X
	ORL A,B
	SJMP Z
	X:
		JC Y
		ANL A,B
		SJMP Z
	Y:
		XRL A,B
		CPL A
	Z:
		MOV 40h,A
END
	