;Fibonnaci series
ORG 0H
	MOV R2,#9
	MOV R0,#30H
	MOV R1,#31H
	MOV 30H,#01H
	MOV 31H,#01H
	LOOP: MOV A,@ R1
		  MOV B,@ R0
		  ADD A,B
		  INC R0
		  INC R1
		  MOV @ R1,A
		  DJNZ R2,LOOP
END
	