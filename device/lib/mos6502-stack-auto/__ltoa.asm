;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ultoa
	.globl ___ltoa
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;value                     Allocated to stack - sp +46
;string                    Allocated to stack - sp +50
;radix                     Allocated to stack - sp +52
;buffer                    Allocated to stack - sp +1
;index                     Allocated to stack - sp +43
;c                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +41
;sloc1                     Allocated to stack - sp +37
;sloc2                     Allocated to stack - sp +33
;------------------------------------------------------------
;	../__ltoa.c: 58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 43 bytes.
___ultoa:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xd5
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../__ltoa.c: 63: do {
	tsx
	inx
	txa
	sta	0x128,x
	lda	#0x01
	sta	0x129,x
	lda	#0x20
	sta	0x12a,x
00103$:
;	../__ltoa.c: 64: unsigned char c = '0' + (value % radix);
	tsx
	lda	0x134,x
	sta	0x125,x
	lda	#0x00
	sta	0x126,x
	sta	0x127,x
	sta	0x128, x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x131,x
	pha
	lda	0x130,x
	pha
	lda	0x12f,x
	pha
	lda	0x12e,x
	pha
	jsr	__modulong
	stx	*(__TEMP+0)
	tsx
	sta	0x129,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x12a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x12b,x
	lda	*___SDCC_m6502_ret3
	sta	0x12c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x121,x
	clc
	adc	#0x30
	tay
;	../__ltoa.c: 65: if (c > (unsigned char)'9')
	cpy	#0x39
	beq	00102$
	bcc	00102$
;	../__ltoa.c: 66: c += 'A' - '9' - 1;
	tya
	clc
	adc	#0x07
	tay
00102$:
;	../__ltoa.c: 67: buffer[--index] = c;
	tsx
	lda	0x12b,x
	sec
	sbc	#0x01
	sta	0x12b,x
	lda	0x129,x
	clc
	adc	0x12b,x
	pha
	lda	0x12a,x
	adc	#0x00
	tax
	pla
	sty	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	../__ltoa.c: 68: value /= radix;
	tsx
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x131,x
	pha
	lda	0x130,x
	pha
	lda	0x12f,x
	pha
	lda	0x12e,x
	pha
	jsr	__divulong
	stx	*(__TEMP+0)
	tsx
	sta	0x136,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x137,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x138,x
	lda	*___SDCC_m6502_ret3
	sta	0x139,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../__ltoa.c: 69: } while (value);
	tsx
	lda	0x131,x
	ora	0x130,x
	ora	0x12f,x
	ora	0x12e,x
	beq	00134$
	jmp	00103$
00134$:
;	../__ltoa.c: 71: do {
	lda	0x132,x
	sta	0x121,x
	lda	0x133,x
	sta	0x122,x
00106$:
;	../__ltoa.c: 72: *string++ = buffer[index];
	tsx
	lda	0x129,x
	clc
	adc	0x12b,x
	pha
	lda	0x12a,x
	adc	#0x00
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	tsx
	lda	0x121,x
	sta	*(__DPTR+0)
	lda	0x122,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	lda	0x121,x
	clc
	adc	#0x01
	sta	0x121,x
	lda	0x122,x
	adc	#0x00
	sta	0x122,x
;	../__ltoa.c: 73: } while ( ++index != NUMBER_OF_DIGITS );
	lda	0x12b,x
	clc
	adc	#0x01
	sta	0x12b, x
	cmp	#0x20
	bne	00106$
;	../__ltoa.c: 75: *string = 0;  /* string terminator */
	lda	0x121,x
	sta	*(__DPTR+0)
	lda	0x122,x
	sta	*(__DPTR+1)
	tya
	sta	[__DPTR],y
;	../__ltoa.c: 76: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x2b
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;value                     Allocated to stack - sp +5
;string                    Allocated to stack - sp +9
;radix                     Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__ltoa.c: 78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
___ltoa:
	pha
	pha
;	../__ltoa.c: 80: if (value < 0 && radix == 10) {
	tsx
	lda	0x108,x
	sec
	sbc	#0x00
	bvc	00115$
	bpl	00114$
	bmi	00102$
00115$:
	bpl	00102$
00114$:
	lda	0x10b,x
	cmp	#0x0a
	bne	00102$
;	../__ltoa.c: 81: *string++ = '-';
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
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
	sta	0x109,x
	lda	0x102,x
	adc	#0x00
	sta	0x10a,x
;	../__ltoa.c: 82: value = -value;
	tya
	sec
	sbc	0x105,x
	sta	0x105,x
	tya
	sbc	0x106,x
	sta	0x106,x
	tya
	sbc	0x107,x
	sta	0x107,x
	tya
	sbc	0x108,x
	sta	0x108,x
00102$:
;	../__ltoa.c: 84: __ultoa(value, string, radix);
	tsx
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	___ultoa
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	pla
;	../__ltoa.c: 85: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
