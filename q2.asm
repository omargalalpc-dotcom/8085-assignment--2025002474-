; Omar Galal Eldin Abd Elkader
;  2025002474
; Section 3
; Q2 

LDA 2500H; load number
CMA; flip bits
STA 2501H; save 1's comp
ADI 01H; add 1
STA 2502H; save 2's comp
HLT
