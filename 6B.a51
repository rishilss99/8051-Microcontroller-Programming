ORG 0H
	MOV R0 ,#04h
	MOV B, #01h
	X:
	MOV A , R0
	MUL AB
	MOV B , A
	DJNZ R0 , X
	
END