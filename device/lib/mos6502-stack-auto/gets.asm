;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module gets
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
	.globl _putchar
	.globl _getchar
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated to stack - sp +3
;c                         Allocated to registers y 
;count                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../gets.c: 32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_gets:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
;	../gets.c: 35: unsigned int count = 0;
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
;	../gets.c: 37: while (1)
00109$:
;	../gets.c: 39: c = getchar ();
	jsr	_getchar
	tay
;	../gets.c: 40: switch(c)
	cpy	#0x08
	beq	00101$
	cpy	#0x0a
	beq	00105$
	cpy	#0x0d
	beq	00105$
	jmp	00106$
;	../gets.c: 42: case '\b': /* backspace */
00101$:
;	../gets.c: 43: if (count)
	tsx
	lda	0x101,x
	ora	0x102,x
	beq	00109$
;	../gets.c: 45: putchar ('\b');
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	../gets.c: 46: putchar (' ');
	ldx	#0x00
	lda	#0x20
	jsr	_putchar
;	../gets.c: 47: putchar ('\b');
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	../gets.c: 48: --s;
	tsx
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	../gets.c: 49: --count;
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	../gets.c: 51: break;
	jmp	00109$
;	../gets.c: 54: case '\r': /* CR or LF */
00105$:
;	../gets.c: 55: putchar ('\r');
	ldx	#0x00
	lda	#0x0d
	jsr	_putchar
;	../gets.c: 56: putchar ('\n');
	ldx	#0x00
	lda	#0x0a
	jsr	_putchar
;	../gets.c: 57: *s = 0;
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../gets.c: 58: return s;
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00111$
;	../gets.c: 60: default:
00106$:
;	../gets.c: 61: *s++ = c;
	sty	*(__TEMP+0)
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	../gets.c: 62: ++count;
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	../gets.c: 63: putchar (c);
	tya
	ldx	#0x00
	jsr	_putchar
;	../gets.c: 65: }
	jmp	00109$
00111$:
;	../gets.c: 67: }
	sta	*(__TEMP+0)
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
