;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module vprintf
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf_PARM_2
	.globl _vprintf
	.globl _printf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_vprintf_PARM_2:
	.ds 2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'put_char_to_stdout'
;------------------------------------------------------------
;p                         Allocated to stack - sp +3
;c                         Allocated to registers a 
;------------------------------------------------------------
;../vprintf.c:34: put_char_to_stdout (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_put_char_to_stdout:
;../vprintf.c:37: putchar (c);
	clrx
;../vprintf.c:38: }
	jmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap                        Allocated with name '_vprintf_PARM_2'
;format                    Allocated to registers 
;------------------------------------------------------------
;../vprintf.c:41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vprintf:
	sta	(__print_format_PARM_3 + 1)
	stx	__print_format_PARM_3
;../vprintf.c:43: return _print_format (put_char_to_stdout, NULL, format, ap);
	clrh
	clrx
	sthx	__print_format_PARM_2
	ldhx	_vprintf_PARM_2
	sthx	__print_format_PARM_4
	lda	#_put_char_to_stdout
	ldx	#>_put_char_to_stdout
;../vprintf.c:44: }
	jmp	__print_format
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format                    Allocated to stack - sp +3
;arg                       Allocated to registers 
;i                         Allocated to registers a x 
;------------------------------------------------------------
;../vprintf.c:47: printf (const char *format, ...)
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_printf:
;../vprintf.c:52: va_start (arg, format);
	tsx
	aix	#2
	aix	#2
	sthx	__print_format_PARM_4
;../vprintf.c:53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	clrh
	clrx
	sthx	__print_format_PARM_2
	tsx
	lda	2,x
	sta	__print_format_PARM_3
	lda	3,x
	sta	(__print_format_PARM_3 + 1)
	lda	#_put_char_to_stdout
	ldx	#>_put_char_to_stdout
;../vprintf.c:56: return i;
;../vprintf.c:57: }
	jmp	__print_format
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
