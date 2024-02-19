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
	.globl _vprintf_PARM_2
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
_vprintf_PARM_2:
	.ds 2
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
;ap                        Allocated with name '_vprintf_PARM_2'
;format                    Allocated to registers 
;------------------------------------------------------------
;	../vprintf.c: 41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vprintf:
	sta	__print_format_PARM_3
	stx	(__print_format_PARM_3 + 1)
;	../vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
	ldx	#0x00
	stx	__print_format_PARM_2
	stx	(__print_format_PARM_2 + 1)
	lda	_vprintf_PARM_2
	sta	__print_format_PARM_4
	lda	(_vprintf_PARM_2 + 1)
	sta	(__print_format_PARM_4 + 1)
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
;	../vprintf.c: 44: }
	jmp	__print_format
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format                    Allocated to stack - sp +3
;arg                       Allocated to registers 
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
	sta	__print_format_PARM_4
	txa
	adc	#0x00
	sta	(__print_format_PARM_4 + 1)
;	../vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	dex
	stx	__print_format_PARM_2
	stx	(__print_format_PARM_2 + 1)
	tsx
	lda	0x103,x
	sta	__print_format_PARM_3
	lda	0x104,x
	sta	(__print_format_PARM_3 + 1)
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
;	../vprintf.c: 56: return i;
;	../vprintf.c: 57: }
	jmp	__print_format
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
