
			
; CPU Config
        .equ MainClock   = 8000000               ; CPU Clock
		.equ baudrate 		= 9600
        .equ bauddivider 	= MainClock/(16*baudrate)-1

; Ports
        .equ OUT1         = 1   ;����� �� ���� 1
		.equ OUT2         = 2	;����� �� ���� 2
        .equ BUT1         = 3	;���� ������ 1
        .equ BUT2         = 4	;���� ������ 2

; ������ ���������       
        .equ anti1        = 200
		.equ anti1_0      = anti1-5
; ����������� �������� ������
		.equ dev          = 255


