ORG 0H
LED:
CPL P1.1
ACALL DELAY10MS
SJMP LED
DELAY10MS:
Y: MOV R3, #60D
DELAY: MOV R2, #255D
X: DJNZ R2, X
DJNZ R3, DELAY
RET
END