; ��� ��������� ������������� �����
			
		CLEAR_RAM			     ; ������ ������� ���������� � ���������
;		TIMER2_INIT         	 ; ������������� ������� 2
;		OUTI TIMSK,0b10000000    ; ��������� ���������� �� ���������
        GPRFLUSH            	 ; ������� ���
;		USART_INIT				 ; ������ USART
	
	
;		OUTI ADMUX,1<<REFS0|1<<ADLAR|0<<MUX0		; 5v REF, ADC0, 8bit - ������������� ���
		
;		INIT_LCD				 ; ������������� � ������ �������. ������������ ������� � ��� ������� � �����
								 ; lcd4.asm � lcd4_macro.inc
	
;        OUTI GICR,1<<INT2	     ; ��������� ������� ���������� INT2
            
;�����: �� ����� ������ ������������ ��� ���������� ��������� � ����� ���������:
.def	temp	= R22
.def	temp1	= R19
.def	temp2	= R21
;.def	temp3	= R18	
;.def	temp4	= R19	
.def    OSRG    = R17
.def 	Counter	= R20
.def	ZERO	= R3	; ������� ���� - �� ������ ����
.def    ONE     = R25   ; ������� ������� - �� ������ 1
            LDI ONE,1   ; ����� � ������� R25 �������                               
			
;�������������� ��������� ��������� ������

;			LDI OSRG,1                                       			
;            STS UART_point,OSRG  ; ���������� � ��������� ����� 1	

;������������� ������ ����� ������.

   		    SBI DDRB,OUT1
   		    SBI DDRB,OUT2
            SBI PORTB,BUT1
            SBI PORTB,BUT2

            CBI DDRB,BUT1
			CBI DDRB,BUT2
			 
;����� � ����� �������������� ��������
			
			CBI PORTB,OUT1
			CBI PORTB,OUT2
                
;�������������� ��������� ���������.

            LDI temp1,anti1_0	;����� � �������� ������������ �������������� �������� (��������) 
			STS Ant1,temp1
			STS Ant2,temp1



			
