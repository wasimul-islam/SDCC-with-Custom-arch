;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___uitoa
	.globl ___itoa
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
;Allocation info for local variables in function '__uitoa'
;------------------------------------------------------------
;string                    Allocated to stack - sp +14
;radix                     Allocated to stack - sp +16
;value                     Allocated to stack - sp +10
;index                     Allocated to stack - sp +9
;i                         Allocated to stack - sp +8
;tmp                       Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__itoa.c: 42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 11 bytes.
___uitoa:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	../__itoa.c: 47: do {
	tsx
	lda	#0x00
	sta	0x109,x
00103$:
;	../__itoa.c: 48: string[index] = '0' + (value % radix);
	tsx
	lda	0x109,x
	sta	0x105,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x106,x
	lda	0x10e,x
	clc
	adc	0x105,x
	sta	0x105,x
	lda	0x10f,x
	adc	0x106,x
	sta	0x106,x
	lda	0x110,x
	sta	0x103,x
	lda	#0x00
	sta	0x104, x
	pha
	lda	0x103,x
	pha
	lda	0x10b,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10c,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__moduint
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	clc
	adc	#0x30
	sta	*(__TEMP+0)
	tsx
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../__itoa.c: 49: if (string[index] > '9')
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	cmp	#0x39
	beq	00102$
	bcc	00102$
;	../__itoa.c: 50: string[index] += 'A' - '9' - 1;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	clc
	adc	#0x07
	sta	*(__TEMP+0)
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
00102$:
;	../__itoa.c: 51: value /= radix;
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x10b,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10c,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__divuint
	stx	*(__TEMP+0)
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
;	../__itoa.c: 52: ++index;
	tsx
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
;	../__itoa.c: 53: } while (value != 0);
	lda	0x10a,x
	ora	0x10b,x
	beq	00135$
	jmp	00103$
00135$:
;	../__itoa.c: 56: string[index--] = '\0';
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x109,x
	sta	0x105,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x106,x
	lda	0x10e,x
	clc
	adc	0x105,x
	pha
	lda	0x10f,x
	adc	0x106,x
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../__itoa.c: 59: while (index > i) {
	tsx
	sta	0x108,x
00106$:
	tsx
	lda	0x108,x
	sec
	sbc	0x103,x
	bvc	00137$
	bpl	00136$
	bmi	00138$
00137$:
	bmi	00136$
00138$:
	jmp	00109$
00136$:
;	../__itoa.c: 60: char tmp = string[i];
	lda	0x108,x
	sta	0x105,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x106,x
	lda	0x10e,x
	clc
	adc	0x105,x
	sta	0x105,x
	lda	0x10f,x
	adc	0x106,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
;	../__itoa.c: 61: string[i] = string[index];
	lda	0x103,x
	sta	0x101,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	lda	0x10e,x
	clc
	adc	0x101,x
	sta	0x101,x
	lda	0x10f,x
	adc	0x102,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../__itoa.c: 62: string[index] = tmp;
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	0x107,x
	sta	[__DPTR],y
;	../__itoa.c: 63: ++i;
	lda	0x108,x
	clc
	adc	#0x01
	sta	0x108,x
;	../__itoa.c: 64: --index;
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	jmp	00106$
00109$:
;	../__itoa.c: 66: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0b
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated to stack - sp +7
;radix                     Allocated to stack - sp +9
;value                     Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__itoa.c: 68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___itoa:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
;	../__itoa.c: 70: if (value < 0 && radix == 10) {
	tsx
	lda	0x104,x
	sec
	sbc	#0x00
	bvc	00115$
	bpl	00114$
	bmi	00102$
00115$:
	bpl	00102$
00114$:
	lda	0x109,x
	cmp	#0x0a
	bne	00102$
;	../__itoa.c: 71: *string++ = '-';
	lda	0x107,x
	sta	0x101,x
	lda	0x108,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x2d
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x102,x
	adc	#0x00
	sta	0x108,x
;	../__itoa.c: 72: value = -value;
	tya
	sec
	sbc	0x103,x
	sta	0x103,x
	tya
	sbc	0x104,x
	sta	0x104,x
00102$:
;	../__itoa.c: 74: __uitoa(value, string, radix);
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___uitoa
	sta	*(__TEMP+0)
	pla
	pla
	pla
;	../__itoa.c: 75: }
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
