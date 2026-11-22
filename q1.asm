;Omar Galal eldin abd elkader
; 2025002474
; Section 3
; Q1 

LDA 2500H  ; first num
MOV B, A   ; keep it in b
LDA 2501H     ; second num
ADD B; add them
STA 2502H   ; save sum
MVI A, 00H  ; clear A andd carry flag stays
ACI 00H ; A = carry
STA 2503H ; save carry
HLT