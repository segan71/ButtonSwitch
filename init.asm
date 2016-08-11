; Тут первичная инициализация всего
			
		CLEAR_RAM			     ; Полная очистка оперативки и регистров
;		TIMER2_INIT         	 ; Инициализация таймера 2
;		OUTI TIMSK,0b10000000    ; Разрешить прерывание по сравнению
        GPRFLUSH            	 ; Очистка РОН
;		USART_INIT				 ; Запуск USART
	
	
;		OUTI ADMUX,1<<REFS0|1<<ADLAR|0<<MUX0		; 5v REF, ADC0, 8bit - конфигурируем АЦП
		
;		INIT_LCD				 ; Инициализация и запуск дисплея. Конфигурация дисплея и его выводов в файле
								 ; lcd4.asm и lcd4_macro.inc
	
;        OUTI GICR,1<<INT2	     ; Разрешаем внешнее прерывание INT2
            
;Совет: вы также можете использовать эти псевдонимы регистров в своей программе:
.def	temp	= R22
.def	temp1	= R19
.def	temp2	= R21
;.def	temp3	= R18	
;.def	temp4	= R19	
.def    OSRG    = R17
.def 	Counter	= R20
.def	ZERO	= R3	; Регистр нуля - он всегда ноль
.def    ONE     = R25   ; Регистр единицы - он всегда 1
            LDI ONE,1   ; Пишем в регистр R25 единицу                               
			
;Первоначальная установка указателя усарта

;			LDI OSRG,1                                       			
;            STS UART_point,OSRG  ; Записываем в указатель усарт 1	

;Инициализация портов ввода вывода.

   		    SBI DDRB,OUT1
   		    SBI DDRB,OUT2
            SBI PORTB,BUT1
            SBI PORTB,BUT2

            CBI DDRB,BUT1
			CBI DDRB,BUT2
			 
;Пишем в порты первоначальные значения
			
			CBI PORTB,OUT1
			CBI PORTB,OUT2
                
;Первоначальная установка счетчиков.

            LDI temp1,anti1_0	;Пишем в счетчики антидребезга первоначальное значение (середину) 
			STS Ant1,temp1
			STS Ant2,temp1



			
