;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _sprintf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_vsprintf_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_vsprintf_PARM_2:
	.ds 2
_vsprintf_PARM_3:
	.ds 2
_vsprintf_buf_65536_13:
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p                         Allocated to stack - sp +10
;c                         Allocated to stack - sp +7
;buf                       Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../sprintf.c: 34: put_char_to_string (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_put_char_to_string:
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	../sprintf.c: 36: char **buf = (char **)p;
	tsx
	lda	0x10a,x
	sta	0x105,x
	lda	0x10b,x
	sta	0x106,x
;	../sprintf.c: 37: *(*buf)++ = c;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x104,x
	adc	#0x00
	sta	0x102,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	0x101,x
	dey
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	0x107,x
	dey
	sta	[__DPTR],y
;	../sprintf.c: 38: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_vsprintf_sloc0_1_0'
;format                    Allocated with name '_vsprintf_PARM_2'
;ap                        Allocated with name '_vsprintf_PARM_3'
;buf                       Allocated with name '_vsprintf_buf_65536_13'
;i                         Allocated to registers a x 
;------------------------------------------------------------
;	../sprintf.c: 41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vsprintf:
	sta	_vsprintf_buf_65536_13
	stx	(_vsprintf_buf_65536_13 + 1)
;	../sprintf.c: 44: i = _print_format (put_char_to_string, &buf, format, ap);
	lda	#_vsprintf_buf_65536_13
	sta	__print_format_PARM_2
	lda	#>_vsprintf_buf_65536_13
	sta	(__print_format_PARM_2 + 1)
	lda	_vsprintf_PARM_2
	sta	__print_format_PARM_3
	lda	(_vsprintf_PARM_2 + 1)
	sta	(__print_format_PARM_3 + 1)
	lda	_vsprintf_PARM_3
	sta	__print_format_PARM_4
	lda	(_vsprintf_PARM_3 + 1)
	sta	(__print_format_PARM_4 + 1)
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
;	../sprintf.c: 45: *buf = 0;
	ldy	_vsprintf_buf_65536_13
	sty	*_vsprintf_sloc0_1_0
	ldy	(_vsprintf_buf_65536_13 + 1)
	sty	*(_vsprintf_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	lda	#0x00
	tay
	sta	[*_vsprintf_sloc0_1_0],y
	lda	*(__TEMP+0)
;	../sprintf.c: 46: return i;
;	../sprintf.c: 47: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - sp +5
;format                    Allocated to stack - sp +7
;arg                       Allocated to registers 
;i                         Allocated to stack - sp +1
;------------------------------------------------------------
;	../sprintf.c: 50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_sprintf:
	pha
	pha
;	../sprintf.c: 55: va_start (arg, format);
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
	clc
	adc	#0x02
	sta	__print_format_PARM_4
	txa
	adc	#0x00
	sta	(__print_format_PARM_4 + 1)
;	../sprintf.c: 56: i = _print_format (put_char_to_string, &buf, format, arg);
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	__print_format_PARM_2
	stx	(__print_format_PARM_2 + 1)
	tsx
	lda	0x107,x
	sta	__print_format_PARM_3
	lda	0x108,x
	sta	(__print_format_PARM_3 + 1)
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x102,x
;	../sprintf.c: 57: *buf = 0;
	tsx
	lda	0x105,x
	sta	*(__TEMP+0)
	lda	0x106,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../sprintf.c: 60: return i;
	tsx
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../sprintf.c: 61: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
