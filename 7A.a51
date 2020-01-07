ORG 0H
	MOV R0 , #40h
	MOV R1 , #30h
	MOV R2 , #02h
	X:
	MOV A , @ R1
	ANL A , #0F0H
	MOV @ R0 , A
	INC R0
	CLR A
	MOV A , @ R1
	ANL A , #0FH
	MOV @ R0 , A
	INC R0
	INC R1 
	DJNZ R2 ,X 	
END
	
;ORG 0H
;	MOV A,30h
;	ANL A,#0F0H
;	MOV 40h,A
;	CLR A
;	MOV A,30h
;	ANL A,#0FH
;	MOV 41h,A
;	CLR A
;	MOV A,31h
;	ANL A,#0F0H
;	MOV 42h,A
;	CLR A
;	MOV A,31h
;	ANL A,#0FH
;	MOV 43h,A
;END