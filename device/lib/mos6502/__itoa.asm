;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___itoa_PARM_3
	.globl ___itoa_PARM_2
	.globl ___uitoa_PARM_3
	.globl ___uitoa_PARM_2
	.globl ___uitoa
	.globl ___itoa
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uitoa_sloc0_1_0:
	.ds 1
___uitoa_sloc1_1_0:
	.ds 2
___uitoa_sloc2_1_0:
	.ds 2
___uitoa_sloc3_1_0:
	.ds 2
___uitoa_sloc4_1_0:
	.ds 2
___itoa_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___uitoa_PARM_2:
	.ds 2
___uitoa_PARM_3:
	.ds 1
___uitoa_value_65536_36:
	.ds 2
___uitoa_tmp_131072_39:
	.ds 1
___itoa_PARM_2:
	.ds 2
___itoa_PARM_3:
	.ds 1
___itoa_value_65536_40:
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
;Allocation info for local variables in function '__uitoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uitoa_sloc0_1_0'
;sloc1                     Allocated with name '___uitoa_sloc1_1_0'
;sloc2                     Allocated with name '___uitoa_sloc2_1_0'
;sloc3                     Allocated with name '___uitoa_sloc3_1_0'
;sloc4                     Allocated with name '___uitoa_sloc4_1_0'
;string                    Allocated with name '___uitoa_PARM_2'
;radix                     Allocated with name '___uitoa_PARM_3'
;value                     Allocated with name '___uitoa_value_65536_36'
;index                     Allocated to registers 
;i                         Allocated to registers 
;tmp                       Allocated with name '___uitoa_tmp_131072_39'
;------------------------------------------------------------
;	../__itoa.c: 42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uitoa:
	sta	___uitoa_value_65536_36
	stx	(___uitoa_value_65536_36 + 1)
;	../__itoa.c: 47: do {
	ldx	#0x00
	stx	*___uitoa_sloc0_1_0
00103$:
;	../__itoa.c: 48: string[index] = '0' + (value % radix);
	lda	*___uitoa_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
	lda	___uitoa_PARM_3
	sta	*___uitoa_sloc2_1_0
	ldx	#0x00
	stx	*(___uitoa_sloc2_1_0 + 1)
	lda	*___uitoa_sloc2_1_0
	sta	__moduint_PARM_2
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__moduint_PARM_2 + 1)
	ldx	(___uitoa_value_65536_36 + 1)
	lda	___uitoa_value_65536_36
	jsr	__moduint
	clc
	adc	#0x30
	ldy	#0x00
;	../__itoa.c: 49: if (string[index] > '9')
	sta	[*___uitoa_sloc1_1_0], y
	cmp	#0x39
	beq	00102$
	bcc	00102$
;	../__itoa.c: 50: string[index] += 'A' - '9' - 1;
	lda	[*___uitoa_sloc1_1_0],y
	clc
	adc	#0x07
	sta	[*___uitoa_sloc1_1_0],y
00102$:
;	../__itoa.c: 51: value /= radix;
	lda	*___uitoa_sloc2_1_0
	sta	__divuint_PARM_2
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__divuint_PARM_2 + 1)
	ldx	(___uitoa_value_65536_36 + 1)
	lda	___uitoa_value_65536_36
	jsr	__divuint
	sta	___uitoa_value_65536_36
	stx	(___uitoa_value_65536_36 + 1)
;	../__itoa.c: 52: ++index;
	inc	*___uitoa_sloc0_1_0
;	../__itoa.c: 53: } while (value != 0);
	lda	(___uitoa_value_65536_36 + 1)
	ora	___uitoa_value_65536_36
	bne	00103$
;	../__itoa.c: 56: string[index--] = '\0';
	lda	*___uitoa_sloc0_1_0
	sec
	sbc	#0x01
	sta	*___uitoa_sloc2_1_0
	lda	*___uitoa_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
	lda	#0x00
	tay
	sta	[*___uitoa_sloc1_1_0],y
;	../__itoa.c: 59: while (index > i) {
	sta	*___uitoa_sloc1_1_0
00106$:
	lda	*___uitoa_sloc1_1_0
	sec
	sbc	*___uitoa_sloc2_1_0
	bvc	00137$
	bpl	00136$
	bmi	00109$
00137$:
	bmi	00136$
	rts
00136$:
;	../__itoa.c: 60: char tmp = string[i];
	lda	*___uitoa_sloc1_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc3_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc3_1_0 + 1)
	ldy	#0x00
	lda	[*___uitoa_sloc3_1_0],y
	sta	___uitoa_tmp_131072_39
;	../__itoa.c: 61: string[i] = string[index];
	lda	*___uitoa_sloc2_1_0
	pha
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	tax
	pla
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc4_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc4_1_0 + 1)
	lda	[*___uitoa_sloc4_1_0],y
	sta	[*___uitoa_sloc3_1_0],y
;	../__itoa.c: 62: string[index] = tmp;
	lda	___uitoa_tmp_131072_39
	sta	[*___uitoa_sloc4_1_0],y
;	../__itoa.c: 63: ++i;
	inc	*___uitoa_sloc1_1_0
;	../__itoa.c: 64: --index;
	dec	*___uitoa_sloc2_1_0
	jmp	00106$
00109$:
;	../__itoa.c: 66: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___itoa_sloc0_1_0'
;string                    Allocated with name '___itoa_PARM_2'
;radix                     Allocated with name '___itoa_PARM_3'
;value                     Allocated with name '___itoa_value_65536_40'
;------------------------------------------------------------
;	../__itoa.c: 68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___itoa:
	sta	___itoa_value_65536_40
	stx	(___itoa_value_65536_40 + 1)
;	../__itoa.c: 70: if (value < 0 && radix == 10) {
	lda	(___itoa_value_65536_40 + 1)
	sec
	sbc	#0x00
	bvc	00115$
	bpl	00114$
	bmi	00102$
00115$:
	bpl	00102$
00114$:
	lda	___itoa_PARM_3
	cmp	#0x0a
	bne	00102$
;	../__itoa.c: 71: *string++ = '-';
	lda	___itoa_PARM_2
	sta	*___itoa_sloc0_1_0
	lda	(___itoa_PARM_2 + 1)
	sta	*(___itoa_sloc0_1_0 + 1)
	lda	#0x2d
	ldy	#0x00
	sta	[*___itoa_sloc0_1_0],y
	lda	*___itoa_sloc0_1_0
	clc
	adc	#0x01
	sta	___itoa_PARM_2
	lda	*(___itoa_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___itoa_PARM_2 + 1)
;	../__itoa.c: 72: value = -value;
	tya
	sec
	sbc	___itoa_value_65536_40
	sta	___itoa_value_65536_40
	tya
	sbc	(___itoa_value_65536_40 + 1)
	sta	(___itoa_value_65536_40 + 1)
00102$:
;	../__itoa.c: 74: __uitoa(value, string, radix);
	lda	___itoa_PARM_2
	sta	___uitoa_PARM_2
	lda	(___itoa_PARM_2 + 1)
	sta	(___uitoa_PARM_2 + 1)
	lda	___itoa_PARM_3
	sta	___uitoa_PARM_3
	ldx	(___itoa_value_65536_40 + 1)
	lda	___itoa_value_65536_40
;	../__itoa.c: 75: }
	jmp	___uitoa
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
