;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ltoa_PARM_3
	.globl ___ltoa_PARM_2
	.globl ___ltoa_PARM_1
	.globl ___ultoa_PARM_3
	.globl ___ultoa_PARM_2
	.globl ___ultoa_PARM_1
	.globl ___ultoa
	.globl ___ltoa
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___ultoa_sloc0_1_0:
	.ds 1
___ultoa_sloc1_1_0:
	.ds 4
___ultoa_sloc2_1_0:
	.ds 4
___ltoa_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ultoa_PARM_1:
	.ds 4
___ultoa_PARM_2:
	.ds 2
___ultoa_PARM_3:
	.ds 1
___ultoa_buffer_65536_37:
	.ds 32
___ltoa_PARM_1:
	.ds 4
___ltoa_PARM_2:
	.ds 2
___ltoa_PARM_3:
	.ds 1
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
;sloc0                     Allocated with name '___ultoa_sloc0_1_0'
;sloc1                     Allocated with name '___ultoa_sloc1_1_0'
;sloc2                     Allocated with name '___ultoa_sloc2_1_0'
;value                     Allocated with name '___ultoa_PARM_1'
;string                    Allocated with name '___ultoa_PARM_2'
;radix                     Allocated with name '___ultoa_PARM_3'
;buffer                    Allocated with name '___ultoa_buffer_65536_37'
;index                     Allocated to registers 
;c                         Allocated to registers y 
;------------------------------------------------------------
;	../__ltoa.c: 58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ultoa:
;	../__ltoa.c: 63: do {
	ldx	#0x20
	stx	*___ultoa_sloc0_1_0
00103$:
;	../__ltoa.c: 64: unsigned char c = '0' + (value % radix);
	lda	___ultoa_PARM_3
	sta	*___ultoa_sloc1_1_0
	ldx	#0x00
	stx	*(___ultoa_sloc1_1_0 + 1)
	stx	*(___ultoa_sloc1_1_0 + 2)
	stx	*(___ultoa_sloc1_1_0 + 3)
	lda	___ultoa_PARM_1
	sta	__modulong_PARM_1
	lda	(___ultoa_PARM_1 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	(___ultoa_PARM_1 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	(___ultoa_PARM_1 + 3)
	sta	(__modulong_PARM_1 + 3)
	lda	*___ultoa_sloc1_1_0
	sta	__modulong_PARM_2
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*___ultoa_sloc2_1_0
	stx	*(___ultoa_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ultoa_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ultoa_sloc2_1_0 + 3)
	lda	*___ultoa_sloc2_1_0
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
	dec	*___ultoa_sloc0_1_0
	lda	*___ultoa_sloc0_1_0
	tax
	tya
	sta	(___ultoa_buffer_65536_37+0+0x0000),x
;	../__ltoa.c: 68: value /= radix;
	lda	___ultoa_PARM_1
	sta	__divulong_PARM_1
	lda	(___ultoa_PARM_1 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	(___ultoa_PARM_1 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	(___ultoa_PARM_1 + 3)
	sta	(__divulong_PARM_1 + 3)
	lda	*___ultoa_sloc1_1_0
	sta	__divulong_PARM_2
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__divulong_PARM_2 + 1)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__divulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__divulong_PARM_2 + 3)
	jsr	__divulong
	sta	___ultoa_PARM_1
	stx	(___ultoa_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ultoa_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
;	../__ltoa.c: 69: } while (value);
	sta	(___ultoa_PARM_1 + 3)
	ora	(___ultoa_PARM_1 + 2)
	ora	(___ultoa_PARM_1 + 1)
	ora	___ultoa_PARM_1
	beq	00134$
	jmp	00103$
00134$:
;	../__ltoa.c: 71: do {
	lda	___ultoa_PARM_2
	sta	*___ultoa_sloc2_1_0
	lda	(___ultoa_PARM_2 + 1)
	sta	*(___ultoa_sloc2_1_0 + 1)
	lda	*___ultoa_sloc0_1_0
	sta	*___ultoa_sloc1_1_0
00106$:
;	../__ltoa.c: 72: *string++ = buffer[index];
	lda	*___ultoa_sloc1_1_0
	ldx	#0x00
	tay
	lda	(___ultoa_buffer_65536_37+0+0x0000),y
	ldy	#0x00
	sta	[*___ultoa_sloc2_1_0],y
	inc	*___ultoa_sloc2_1_0
	bne	00135$
	inc	*(___ultoa_sloc2_1_0 + 1)
00135$:
;	../__ltoa.c: 73: } while ( ++index != NUMBER_OF_DIGITS );
	inc	*___ultoa_sloc1_1_0
	lda	*___ultoa_sloc1_1_0
	cmp	#0x20
	bne	00106$
;	../__ltoa.c: 75: *string = 0;  /* string terminator */
	tya
	sta	[*___ultoa_sloc2_1_0],y
;	../__ltoa.c: 76: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ltoa_sloc0_1_0'
;value                     Allocated with name '___ltoa_PARM_1'
;string                    Allocated with name '___ltoa_PARM_2'
;radix                     Allocated with name '___ltoa_PARM_3'
;------------------------------------------------------------
;	../__ltoa.c: 78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ltoa:
;	../__ltoa.c: 80: if (value < 0 && radix == 10) {
	lda	(___ltoa_PARM_1 + 3)
	sec
	sbc	#0x00
	bvc	00115$
	bpl	00114$
	bmi	00102$
00115$:
	bpl	00102$
00114$:
	lda	___ltoa_PARM_3
	cmp	#0x0a
	bne	00102$
;	../__ltoa.c: 81: *string++ = '-';
	lda	___ltoa_PARM_2
	sta	*___ltoa_sloc0_1_0
	lda	(___ltoa_PARM_2 + 1)
	sta	*(___ltoa_sloc0_1_0 + 1)
	lda	#0x2d
	ldy	#0x00
	sta	[*___ltoa_sloc0_1_0],y
	lda	*___ltoa_sloc0_1_0
	clc
	adc	#0x01
	sta	___ltoa_PARM_2
	lda	*(___ltoa_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___ltoa_PARM_2 + 1)
;	../__ltoa.c: 82: value = -value;
	tya
	sec
	sbc	___ltoa_PARM_1
	sta	___ltoa_PARM_1
	tya
	sbc	(___ltoa_PARM_1 + 1)
	sta	(___ltoa_PARM_1 + 1)
	tya
	sbc	(___ltoa_PARM_1 + 2)
	sta	(___ltoa_PARM_1 + 2)
	tya
	sbc	(___ltoa_PARM_1 + 3)
	sta	(___ltoa_PARM_1 + 3)
00102$:
;	../__ltoa.c: 84: __ultoa(value, string, radix);
	lda	___ltoa_PARM_1
	sta	___ultoa_PARM_1
	lda	(___ltoa_PARM_1 + 1)
	sta	(___ultoa_PARM_1 + 1)
	lda	(___ltoa_PARM_1 + 2)
	sta	(___ultoa_PARM_1 + 2)
	lda	(___ltoa_PARM_1 + 3)
	sta	(___ultoa_PARM_1 + 3)
	lda	___ltoa_PARM_2
	sta	___ultoa_PARM_2
	lda	(___ltoa_PARM_2 + 1)
	sta	(___ultoa_PARM_2 + 1)
	lda	___ltoa_PARM_3
	sta	___ultoa_PARM_3
;	../__ltoa.c: 85: }
	jmp	___ultoa
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
