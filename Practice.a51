ORG 0H 
	MOV 30H,#0ABH
	MOV 31H,#0FFH
	MOV A,31H
	MOV B,31H
	MUL AB 
	MOV 4AH,A
	MOV 49H,B
	MOV A,30H
	MOV B,31H
	MUL AB
	ADD A,49H
	MOV 49H,A
	MOV A,B
	ADDC A,#00H
	MOV 48H,A
	MOV A,30H
	MOV B,31H
	MUL AB
	ADD A,49H
	MOV 49H,A
	MOV A,B
	ADDC A,48H
	MOV 48H,A
	MOV A,30H
	MOV B,30H
	MUL AB
	ADDC A,48H
	MOV 48H,A
	MOV A,B
	ADDC A,#00H
	MOV 47H,A
END