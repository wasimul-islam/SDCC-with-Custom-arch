;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf
	.globl _printf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'put_char_to_stdout'
;------------------------------------------------------------
;p                         Allocated to stack - sp +3
;c                         Allocated to registers a 
;------------------------------------------------------------
;	../vprintf.c: 34: put_char_to_stdout (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_put_char_to_stdout:
;	../vprintf.c: 37: putchar (c);
	ldx	#0x00
;	../vprintf.c: 38: }
	jmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap                        Allocated to stack - sp +5
;format                    Allocated to stack - sp +1
;------------------------------------------------------------
;	../vprintf.c: 41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_vprintf:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x00
	pha
	pha
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
	jsr	__print_format
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
;	../vprintf.c: 44: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format                    Allocated to stack - sp +3
;arg                       Allocated to registers a x 
;i                         Allocated to registers a x 
;------------------------------------------------------------
;	../vprintf.c: 47: printf (const char *format, ...)
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_printf:
;	../vprintf.c: 52: va_start (arg, format);
	tsx
	inx
	inx
	inx
	txa
	ldx	#0x01
	clc
	adc	#0x02
	bcc	00103$
	inx
00103$:
;	../vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	#0x00
	pha
	pha
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
	jsr	__print_format
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../vprintf.c: 56: return i;
;	../vprintf.c: 57: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
