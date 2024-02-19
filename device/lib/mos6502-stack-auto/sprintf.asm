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
	.globl _vsprintf
	.globl _sprintf
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
;format                    Allocated to stack - sp +9
;ap                        Allocated to stack - sp +11
;buf                       Allocated to stack - sp +5
;i                         Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../sprintf.c: 41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_vsprintf:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
;	../sprintf.c: 44: i = _print_format (put_char_to_string, &buf, format, ap);
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x10d, x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../sprintf.c: 45: *buf = 0;
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
;	../sprintf.c: 46: return i;
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
;	../sprintf.c: 47: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - sp +9
;format                    Allocated to stack - sp +11
;arg                       Allocated to stack - sp +5
;i                         Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../sprintf.c: 50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_sprintf:
	pha
	pha
	pha
	pha
	pha
	pha
;	../sprintf.c: 55: va_start (arg, format);
	tsx
	txa
	clc
	adc	#0x0b
	ldx	#0x01
	clc
	adc	#0x02
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	#0x01
	txa
	adc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x106,x
;	../sprintf.c: 56: i = _print_format (put_char_to_string, &buf, format, arg);
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x107, x
	pha
	lda	0x106,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../sprintf.c: 57: *buf = 0;
	tsx
	lda	0x109,x
	sta	*(__TEMP+0)
	lda	0x10a,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../sprintf.c: 60: return i;
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
;	../sprintf.c: 61: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
