; Omar Galal Eldin Abd Elkader
;  2025002474
; Section 3
; Q3 

LDA 2500H; N
MOV C, A; counter
LXI H, 2501H; start of array
MVI D, 00H; even count
MVI E, 00H      ; odd count
NEXT_ELEM:  MOV A, M; get element
        ANI 01H; check last bit
        JZ IS_EVEN; 0 means even
        INR E; odd
        JMP ADVANCE
IS_EVEN:    INR D  ; even
ADVANCE:    INX H; next element
DCR C
JNZ NEXT_ELEM; loop until C = 0

MOV A, D
STA 2600H; save even count
MOV A, E
STA 2601H; save odd count
HLT
