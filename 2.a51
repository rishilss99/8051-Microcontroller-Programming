;16-bit multiplication
ORG 0000H
	MOV R0,#42H
	MOV R1,#41H
	MOV R3,#02H
	MOV A,30H	
	MOV B,31H
	ACALL MULTIPLY
	MOV A,31H
	MOV B,30H
	ACALL MULTIPLY
	MOV A,30H
	MOV B,31H
	INC R3
	ACALL MULTIPLY
	MOV A,31H
	MOV B,30H
	ACALL MULTIPLY

ORG 000BH
	MULTIPLY:
	MOV R4,A
	MOV A,R3
	ADD A,R0
	MOV R0,A
	MOV A,R3
	ADD A,R1
	MOV R1,A
	MOV A,R4
	MUL AB
	ADD A,@ R0
	MOV @ R0,A
	MOV A,B
	ADDC A,@ R1
	MOV @ R1,A
	DEC R3
	RET
	

END


;ORG 0H
;	MOV A,33H
;	MOV B,31H
;	MUL AB
;	MOV 43H,A
;	MOV 42H,B
;	MOV A,33H
;	MOV B,30H
;	MUL AB
;	ADD A,42H
;	MOV 42H,A
;	MOV A,B
;	ADDC A,#00H
;	MOV 41H,A
;	MOV A,32H
;	MOV B,31H
;	MUL AB
;	ADD A,42H
;	MOV 42H,A
;	MOV A,B
;	ADDC A,41H
;	MOV 41H,A
;	MOV A,32H
;	MOV B,30H
;	MUL AB
;	ADD A,41H
;	MOV 41H,A
;	MOV A,B
;	ADDC A,40H
;	MOV 40H,A
;END