		.CSEG


			.ORG 0x0000			; (RESET) External Pin, Power-on Reset, Brown-out Reset, Watchdog Reset and JTAG AVR Reset
			RJMP	Reset

			.ORG 0x0001 
			RETI 				; (INT0) External Interrupt Request 0

			.ORG 0x0002 
			RETI 				; (PCINT0) External Interrupt Request 1

			.ORG 0x0003 
			RETI            	; (TIM0_OVF) Timer0 Overflow

			.ORG 0x0004
			RETI 				; (EE_RDY) EEPROM Ready

			.ORG 0x0005 
			RETI 				; (ANA_COMP) Analog Comparator

			.ORG 0x0006
			RETI            	; (TIM0_COMPA) Timer0 Compare Match A

			.ORG 0x0007
			RETI 				; (TIM0_COMPB) Timer0 Compare Match B

			.ORG 0x0008
			RETI 				; (WATCHDOG) Watchdog Interrupt

			.ORG 0x0009
			RETI				; (ADC) ADC Conversion

			.ORG INT_VECTORS_SIZE	; Конец таблицы прерываний



		
			

