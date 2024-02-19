;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulonglong2fs_PARM_1
	.globl ___ulonglong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___ulonglong2fs_sloc0_1_0:
	.ds 1
___ulonglong2fs_sloc1_1_0:
	.ds 4
___ulonglong2fs_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ulonglong2fs_PARM_1:
	.ds 8
___ulonglong2fs_fl_65536_21:
	.ds 4
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ulonglong2fs_sloc0_1_0'
;sloc1                     Allocated with name '___ulonglong2fs_sloc1_1_0'
;sloc2                     Allocated with name '___ulonglong2fs_sloc2_1_0'
;a                         Allocated with name '___ulonglong2fs_PARM_1'
;exp                       Allocated to registers 
;fl                        Allocated with name '___ulonglong2fs_fl_65536_21'
;------------------------------------------------------------
;	../_ulonglong2fs.c: 61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulonglong2fs:
;	../_ulonglong2fs.c: 66: if (!a)
	lda	(___ulonglong2fs_PARM_1 + 7)
	ora	(___ulonglong2fs_PARM_1 + 6)
	ora	(___ulonglong2fs_PARM_1 + 5)
	ora	(___ulonglong2fs_PARM_1 + 4)
	ora	(___ulonglong2fs_PARM_1 + 3)
	ora	(___ulonglong2fs_PARM_1 + 2)
	ora	(___ulonglong2fs_PARM_1 + 1)
	ora	___ulonglong2fs_PARM_1
	bne	00102$
;	../_ulonglong2fs.c: 68: return 0.0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_ulonglong2fs.c: 71: if (a == 0xffffffffffffffffull)
	lda	___ulonglong2fs_PARM_1
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 4)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 5)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 6)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 7)
	cmp	#0xff
	bne	00118$
;	../_ulonglong2fs.c: 73: return 18446744073709551616.0f;
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x5f
	sty	*___SDCC_m6502_ret3
	rts
;	../_ulonglong2fs.c: 76: while (a < HIDDEN)
00118$:
	ldx	#0x96
	stx	*___ulonglong2fs_sloc0_1_0
00105$:
	lda	(___ulonglong2fs_PARM_1 + 2)
	sec
	sbc	#0x80
	lda	(___ulonglong2fs_PARM_1 + 3)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 4)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 5)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 6)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 7)
	sbc	#0x00
	bcs	00121$
;	../_ulonglong2fs.c: 78: a <<= 1;
	lda	___ulonglong2fs_PARM_1
	sta	__rlulonglong_PARM_1
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	___ulonglong2fs_PARM_1
	stx	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___ulonglong2fs_PARM_1 + 7)
;	../_ulonglong2fs.c: 79: exp--;
	dec	*___ulonglong2fs_sloc0_1_0
	jmp	00105$
;	../_ulonglong2fs.c: 82: while (a & NORM)
00121$:
00110$:
	lda	(___ulonglong2fs_PARM_1 + 3)
	bne	00157$
	jmp	00112$
00157$:
;	../_ulonglong2fs.c: 85: if (a & 1)
	lda	#0x01
	and	___ulonglong2fs_PARM_1
	beq	00109$
;	../_ulonglong2fs.c: 86: a += 2;
	lda	___ulonglong2fs_PARM_1
	clc
	adc	#0x02
	sta	___ulonglong2fs_PARM_1
	bcc	00160$
	inc	(___ulonglong2fs_PARM_1 + 1)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 2)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 3)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 4)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 5)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 6)
	bne	00160$
	inc	(___ulonglong2fs_PARM_1 + 7)
00160$:
00109$:
;	../_ulonglong2fs.c: 87: a >>= 1;
	lda	___ulonglong2fs_PARM_1
	sta	__rrulonglong_PARM_1
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	___ulonglong2fs_PARM_1
	stx	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___ulonglong2fs_PARM_1 + 7)
;	../_ulonglong2fs.c: 88: exp++;
	inc	*___ulonglong2fs_sloc0_1_0
	jmp	00110$
00112$:
;	../_ulonglong2fs.c: 91: a &= ~HIDDEN ;
	lda	(___ulonglong2fs_PARM_1 + 2)
	and	#0x7f
	sta	(___ulonglong2fs_PARM_1 + 2)
	ldx	#0x00
	stx	(___ulonglong2fs_PARM_1 + 4)
	stx	(___ulonglong2fs_PARM_1 + 5)
	stx	(___ulonglong2fs_PARM_1 + 6)
	stx	(___ulonglong2fs_PARM_1 + 7)
;	../_ulonglong2fs.c: 93: fl.l = PACK(0,(unsigned long)exp, a);
	lda	*___ulonglong2fs_sloc0_1_0
	sta	*___ulonglong2fs_sloc1_1_0
	stx	*(___ulonglong2fs_sloc1_1_0 + 1)
	stx	*(___ulonglong2fs_sloc1_1_0 + 2)
	stx	*(___ulonglong2fs_sloc1_1_0 + 3)
	lda	*___ulonglong2fs_sloc1_1_0
	ldx	*(___ulonglong2fs_sloc1_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	sta	*(___ulonglong2fs_sloc1_1_0 + 2)
	stx	*(___ulonglong2fs_sloc1_1_0 + 3)
	ldx	#0x00
	stx	*___ulonglong2fs_sloc1_1_0
	stx	*(___ulonglong2fs_sloc1_1_0 + 1)
	lda	___ulonglong2fs_PARM_1
	sta	*___ulonglong2fs_sloc2_1_0
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	lda	*___ulonglong2fs_sloc1_1_0
	ora	*___ulonglong2fs_sloc2_1_0
	sta	*___ulonglong2fs_sloc2_1_0
	lda	*(___ulonglong2fs_sloc1_1_0 + 1)
	ora	*(___ulonglong2fs_sloc2_1_0 + 1)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	*(___ulonglong2fs_sloc1_1_0 + 2)
	ora	*(___ulonglong2fs_sloc2_1_0 + 2)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	*(___ulonglong2fs_sloc1_1_0 + 3)
	ora	*(___ulonglong2fs_sloc2_1_0 + 3)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	sta	(___ulonglong2fs_fl_65536_21 + 3)
	lda	*(___ulonglong2fs_sloc2_1_0 + 2)
	sta	(___ulonglong2fs_fl_65536_21 + 2)
	lda	*(___ulonglong2fs_sloc2_1_0 + 1)
	sta	(___ulonglong2fs_fl_65536_21 + 1)
	lda	*___ulonglong2fs_sloc2_1_0
	sta	___ulonglong2fs_fl_65536_21
;	../_ulonglong2fs.c: 95: return (fl.f);
	lda	(___ulonglong2fs_fl_65536_21 + 3)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	lda	(___ulonglong2fs_fl_65536_21 + 2)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	(___ulonglong2fs_fl_65536_21 + 1)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	___ulonglong2fs_fl_65536_21
	sta	*___ulonglong2fs_sloc2_1_0
	lda	*(___ulonglong2fs_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___ulonglong2fs_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	*___ulonglong2fs_sloc2_1_0
;	../_ulonglong2fs.c: 96: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
