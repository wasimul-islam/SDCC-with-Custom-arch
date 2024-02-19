;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv_PARM_1
	.globl ___fsdiv
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fsdiv_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsdiv_org_sloc0_1_0:
	.ds 4
___fsdiv_org_sloc1_1_0:
	.ds 4
___fsdiv_org_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsdiv_org_PARM_1:
	.ds 4
___fsdiv_org_PARM_2:
	.ds 4
___fsdiv_org_fl1_65536_21:
	.ds 4
___fsdiv_org_fl2_65536_21:
	.ds 4
___fsdiv_org_result_65536_21:
	.ds 4
___fsdiv_org_mask_65536_21:
	.ds 4
___fsdiv_org_mant1_65536_21:
	.ds 4
___fsdiv_org_mant2_65536_21:
	.ds 4
___fsdiv_org_diff_196608_26:
	.ds 4
___fsdiv_PARM_1:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_f_131072_30:
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
;Allocation info for local variables in function '__fsdiv_org'
;------------------------------------------------------------
;a1                        Allocated with name '___fsdiv_org_PARM_1'
;a2                        Allocated with name '___fsdiv_org_PARM_2'
;fl1                       Allocated with name '___fsdiv_org_fl1_65536_21'
;fl2                       Allocated with name '___fsdiv_org_fl2_65536_21'
;result                    Allocated with name '___fsdiv_org_result_65536_21'
;mask                      Allocated with name '___fsdiv_org_mask_65536_21'
;mant1                     Allocated with name '___fsdiv_org_mant1_65536_21'
;mant2                     Allocated with name '___fsdiv_org_mant2_65536_21'
;exp                       Allocated to registers a x 
;sign                      Allocated to registers x 
;diff                      Allocated with name '___fsdiv_org_diff_196608_26'
;sloc0                     Allocated with name '___fsdiv_org_sloc0_1_0'
;sloc1                     Allocated with name '___fsdiv_org_sloc1_1_0'
;sloc2                     Allocated with name '___fsdiv_org_sloc2_1_0'
;------------------------------------------------------------
;	../_fsdiv.c: 274: static float __fsdiv_org (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___fsdiv_org:
;	../_fsdiv.c: 283: fl1.f = a1;
	lda	(___fsdiv_org_PARM_1 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
	lda	(___fsdiv_org_PARM_1 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	(___fsdiv_org_PARM_1 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	___fsdiv_org_PARM_1
	sta	___fsdiv_org_fl1_65536_21
;	../_fsdiv.c: 285: exp = EXP (fl1.l);
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc0_1_0
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	ldx	*(___fsdiv_org_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsdiv_org_sloc0_1_0
	stx	*(___fsdiv_org_sloc0_1_0 + 1)
	ldy	#0x00
	sty	*(___fsdiv_org_sloc0_1_0 + 2)
	sty	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	*___fsdiv_org_sloc0_1_0
	ldx	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	*___fsdiv_org_sloc0_1_0
	sty	*(___fsdiv_org_sloc0_1_0 + 1)
;	../_fsdiv.c: 287: if (!exp)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	ora	*___fsdiv_org_sloc0_1_0
	bne	00102$
;	../_fsdiv.c: 288: return (0);
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_fsdiv.c: 290: fl2.f = a2;
	lda	(___fsdiv_org_PARM_2 + 3)
	sta	(___fsdiv_org_fl2_65536_21 + 3)
	lda	(___fsdiv_org_PARM_2 + 2)
	sta	(___fsdiv_org_fl2_65536_21 + 2)
	lda	(___fsdiv_org_PARM_2 + 1)
	sta	(___fsdiv_org_fl2_65536_21 + 1)
	lda	___fsdiv_org_PARM_2
	sta	___fsdiv_org_fl2_65536_21
;	../_fsdiv.c: 292: exp -= EXP (fl2.l);
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc1_1_0
	lda	*(___fsdiv_org_sloc1_1_0 + 2)
	ldx	*(___fsdiv_org_sloc1_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsdiv_org_sloc1_1_0
	stx	*(___fsdiv_org_sloc1_1_0 + 1)
	ldy	#0x00
	sty	*(___fsdiv_org_sloc1_1_0 + 2)
	sty	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	*___fsdiv_org_sloc1_1_0
	ldx	#0x00
	sta	*(__TEMP+0)
	lda	*___fsdiv_org_sloc0_1_0
	sec
	sbc	*(__TEMP+0)
	pha
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
;	../_fsdiv.c: 293: exp += EXCESS;
	clc
	adc	#0x7e
	sta	*___fsdiv_org_sloc1_1_0
	txa
	adc	#0x00
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
;	../_fsdiv.c: 296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc0_1_0
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	rol	a
	tya
	rol	a
	sta	*___fsdiv_org_sloc0_1_0
	sty	*(___fsdiv_org_sloc0_1_0 + 1)
	sty	*(___fsdiv_org_sloc0_1_0 + 2)
	sty	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	*___fsdiv_org_sloc0_1_0
	and	#0x01
	sta	*___fsdiv_org_sloc0_1_0
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	rol	a
	tya
	rol	a
	sta	*___fsdiv_org_sloc2_1_0
	sty	*(___fsdiv_org_sloc2_1_0 + 1)
	sty	*(___fsdiv_org_sloc2_1_0 + 2)
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*___fsdiv_org_sloc2_1_0
	and	#0x01
	eor	*___fsdiv_org_sloc0_1_0
	tax
;	../_fsdiv.c: 299: mant1 = MANT (fl1.l);
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant1_65536_21
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_mant1_65536_21 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	#0x80
	sta	(___fsdiv_org_mant1_65536_21 + 2)
	ldy	*(___fsdiv_org_sloc2_1_0 + 3)
	sty	(___fsdiv_org_mant1_65536_21 + 3)
;	../_fsdiv.c: 300: mant2 = MANT (fl2.l);
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	ldy	#0x00
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	#0x80
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant2_65536_21
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_mant2_65536_21 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_mant2_65536_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_mant2_65536_21 + 3)
;	../_fsdiv.c: 303: if (mant1 < mant2)
	lda	___fsdiv_org_mant1_65536_21
	sec
	sbc	___fsdiv_org_mant2_65536_21
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	sbc	(___fsdiv_org_mant2_65536_21 + 1)
	lda	(___fsdiv_org_mant1_65536_21 + 2)
	sbc	(___fsdiv_org_mant2_65536_21 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	sbc	(___fsdiv_org_mant2_65536_21 + 3)
	bcs	00104$
;	../_fsdiv.c: 305: mask = 0x1000000;
	sty	___fsdiv_org_mask_65536_21
	sty	(___fsdiv_org_mask_65536_21 + 1)
	sty	(___fsdiv_org_mask_65536_21 + 2)
	iny
	sty	(___fsdiv_org_mask_65536_21 + 3)
	jmp	00105$
00104$:
;	../_fsdiv.c: 309: mask = 0x0800000;
	ldy	#0x00
	sty	___fsdiv_org_mask_65536_21
	sty	(___fsdiv_org_mask_65536_21 + 1)
	sty	(___fsdiv_org_mask_65536_21 + 3)
	ldy	#0x80
	sty	(___fsdiv_org_mask_65536_21 + 2)
;	../_fsdiv.c: 310: exp++;
	inc	*___fsdiv_org_sloc1_1_0
	bne	00176$
	inc	*(___fsdiv_org_sloc1_1_0 + 1)
00176$:
00105$:
;	../_fsdiv.c: 313: if (exp < 1) /* denormal */
	lda	*___fsdiv_org_sloc1_1_0
	sec
	sbc	#0x01
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	sbc	#0x00
	bvc	00178$
	bpl	00177$
	bmi	00107$
00178$:
	bpl	00107$
00177$:
;	../_fsdiv.c: 314: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00107$:
;	../_fsdiv.c: 316: if (exp >= 255)
	lda	*___fsdiv_org_sloc1_1_0
	sec
	sbc	#0xff
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	sbc	#0x00
	bvs	00181$
	bpl	00180$
	bmi	00116$
00181$:
	bpl	00116$
00180$:
;	../_fsdiv.c: 318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
	cpx	#0x00
	beq	00120$
	ldx	#0x00
	stx	*___fsdiv_org_sloc0_1_0
	stx	*(___fsdiv_org_sloc0_1_0 + 1)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc0_1_0 + 2)
	ldx	#0xff
	stx	*(___fsdiv_org_sloc0_1_0 + 3)
	jmp	00121$
00120$:
	ldx	#0x00
	stx	*___fsdiv_org_sloc0_1_0
	stx	*(___fsdiv_org_sloc0_1_0 + 1)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc0_1_0 + 2)
	dex
	stx	*(___fsdiv_org_sloc0_1_0 + 3)
00121$:
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_fl1_65536_21
	jmp	00117$
00116$:
;	../_fsdiv.c: 323: result = 0;
	ldy	#0x00
	sty	___fsdiv_org_result_65536_21
	sty	(___fsdiv_org_result_65536_21 + 1)
	sty	(___fsdiv_org_result_65536_21 + 2)
	sty	(___fsdiv_org_result_65536_21 + 3)
;	../_fsdiv.c: 324: do
00110$:
;	../_fsdiv.c: 326: long diff = mant1 - mant2;
	lda	___fsdiv_org_mant1_65536_21
	sec
	sbc	*___fsdiv_org_sloc2_1_0
	sta	*___fsdiv_org_sloc0_1_0
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	sbc	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	(___fsdiv_org_mant1_65536_21 + 2)
	sbc	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	sbc	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_diff_196608_26
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_diff_196608_26 + 1)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_diff_196608_26 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
;	../_fsdiv.c: 327: if (diff >= 0)
	sta	(___fsdiv_org_diff_196608_26 + 3)
	sec
	sbc	#0x00
	bvs	00185$
	bpl	00184$
	bmi	00109$
00185$:
	bpl	00109$
00184$:
;	../_fsdiv.c: 329: mant1 = diff;
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_mant1_65536_21
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_mant1_65536_21 + 1)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_mant1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_mant1_65536_21 + 3)
;	../_fsdiv.c: 330: result |= mask;
	lda	___fsdiv_org_result_65536_21
	ora	___fsdiv_org_mask_65536_21
	sta	___fsdiv_org_result_65536_21
	lda	(___fsdiv_org_result_65536_21 + 1)
	ora	(___fsdiv_org_mask_65536_21 + 1)
	sta	(___fsdiv_org_result_65536_21 + 1)
	lda	(___fsdiv_org_result_65536_21 + 2)
	ora	(___fsdiv_org_mask_65536_21 + 2)
	sta	(___fsdiv_org_result_65536_21 + 2)
	lda	(___fsdiv_org_result_65536_21 + 3)
	ora	(___fsdiv_org_mask_65536_21 + 3)
	sta	(___fsdiv_org_result_65536_21 + 3)
00109$:
;	../_fsdiv.c: 332: mant1 <<= 1;
	asl	___fsdiv_org_mant1_65536_21
	rol	(___fsdiv_org_mant1_65536_21 + 1)
	rol	(___fsdiv_org_mant1_65536_21 + 2)
;	../_fsdiv.c: 333: mask >>= 1;
	rol	(___fsdiv_org_mant1_65536_21 + 3)
	lda	(___fsdiv_org_mask_65536_21 + 3)
	lsr	a
	sta	(___fsdiv_org_mask_65536_21 + 3)
	ror	(___fsdiv_org_mask_65536_21 + 2)
	ror	(___fsdiv_org_mask_65536_21 + 1)
;	../_fsdiv.c: 335: while (mask);
	ror	___fsdiv_org_mask_65536_21
	lda	(___fsdiv_org_mask_65536_21 + 3)
	ora	(___fsdiv_org_mask_65536_21 + 2)
	ora	(___fsdiv_org_mask_65536_21 + 1)
	ora	___fsdiv_org_mask_65536_21
	beq	00187$
	jmp	00110$
00187$:
;	../_fsdiv.c: 338: if (mant1 >= mant2)
	lda	___fsdiv_org_mant1_65536_21
	sec
	sbc	___fsdiv_org_mant2_65536_21
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	sbc	(___fsdiv_org_mant2_65536_21 + 1)
	lda	(___fsdiv_org_mant1_65536_21 + 2)
	sbc	(___fsdiv_org_mant2_65536_21 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	sbc	(___fsdiv_org_mant2_65536_21 + 3)
	bcc	00114$
;	../_fsdiv.c: 339: result += 1;
	inc	___fsdiv_org_result_65536_21
	bne	00189$
	inc	(___fsdiv_org_result_65536_21 + 1)
	bne	00189$
	inc	(___fsdiv_org_result_65536_21 + 2)
	bne	00189$
	inc	(___fsdiv_org_result_65536_21 + 3)
00189$:
00114$:
;	../_fsdiv.c: 341: result &= ~HIDDEN;
	lda	(___fsdiv_org_result_65536_21 + 2)
	and	#0x7f
	sta	(___fsdiv_org_result_65536_21 + 2)
;	../_fsdiv.c: 344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	cpx	#0x00
	beq	00122$
	ldx	#0x00
	stx	*___fsdiv_org_sloc2_1_0
	stx	*(___fsdiv_org_sloc2_1_0 + 1)
	stx	*(___fsdiv_org_sloc2_1_0 + 2)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc2_1_0 + 3)
	jmp	00123$
00122$:
	ldx	#0x00
	stx	*___fsdiv_org_sloc2_1_0
	stx	*(___fsdiv_org_sloc2_1_0 + 1)
	stx	*(___fsdiv_org_sloc2_1_0 + 2)
	stx	*(___fsdiv_org_sloc2_1_0 + 3)
00123$:
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	*___fsdiv_org_sloc1_1_0
	ldx	*(___fsdiv_org_sloc1_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	stx	*(___fsdiv_org_sloc1_1_0 + 3)
	ldx	#0x00
	stx	*___fsdiv_org_sloc1_1_0
	stx	*(___fsdiv_org_sloc1_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	ora	*___fsdiv_org_sloc1_1_0
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	*(___fsdiv_org_sloc1_1_0 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	*(___fsdiv_org_sloc1_1_0 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*___fsdiv_org_sloc2_1_0
	ora	___fsdiv_org_result_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	(___fsdiv_org_result_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	(___fsdiv_org_result_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	(___fsdiv_org_result_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_fl1_65536_21
00117$:
;	../_fsdiv.c: 346: return (fl1.f);
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
;	../_fsdiv.c: 347: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fsdiv_sloc0_1_0'
;a1                        Allocated with name '___fsdiv_PARM_1'
;a2                        Allocated with name '___fsdiv_PARM_2'
;p2                        Allocated to registers 
;f                         Allocated with name '___fsdiv_f_131072_30'
;p                         Allocated to registers 
;------------------------------------------------------------
;	../_fsdiv.c: 349: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsdiv:
;	../_fsdiv.c: 351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
;	../_fsdiv.c: 353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
	lda	(___fsdiv_PARM_2 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	(___fsdiv_PARM_2 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_PARM_2 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	___fsdiv_PARM_2
	sta	*___fsdiv_sloc0_1_0
	lda	*(___fsdiv_sloc0_1_0 + 2)
	ldx	*(___fsdiv_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsdiv_sloc0_1_0
	stx	*(___fsdiv_sloc0_1_0 + 1)
	ldy	#0x00
	sty	*(___fsdiv_sloc0_1_0 + 2)
	sty	*(___fsdiv_sloc0_1_0 + 3)
	lda	*___fsdiv_sloc0_1_0
	beq	00124$
	jmp	00108$
00124$:
;	../_fsdiv.c: 356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
;	../_fsdiv.c: 357: if (a1 > 0.0f)
	sty	___fslt_PARM_1
	sty	(___fslt_PARM_1 + 1)
	sty	(___fslt_PARM_1 + 2)
	sty	(___fslt_PARM_1 + 3)
	lda	___fsdiv_PARM_1
	sta	___fslt_PARM_2
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00105$
;	../_fsdiv.c: 358: *p = __INFINITY;           // +inf
	ldx	#0x7f
	stx	(___fsdiv_f_131072_30 + 3)
	inx
	stx	(___fsdiv_f_131072_30 + 2)
	ldx	#0x00
	stx	(___fsdiv_f_131072_30 + 1)
	stx	___fsdiv_f_131072_30
	jmp	00106$
00105$:
;	../_fsdiv.c: 359: else if (a1 < 0.0f)
	lda	___fsdiv_PARM_1
	sta	___fslt_PARM_1
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
;	../_fsdiv.c: 360: *p = SIGNBIT | __INFINITY; // -inf
	ldx	#0xff
	stx	(___fsdiv_f_131072_30 + 3)
	ldx	#0x80
	stx	(___fsdiv_f_131072_30 + 2)
	ldx	#0x00
	stx	(___fsdiv_f_131072_30 + 1)
	stx	___fsdiv_f_131072_30
	jmp	00106$
00102$:
;	../_fsdiv.c: 362: *p = __NAN;                // nan
	ldx	#0xff
	stx	(___fsdiv_f_131072_30 + 3)
	ldx	#0xc0
	stx	(___fsdiv_f_131072_30 + 2)
	ldx	#0x00
	stx	(___fsdiv_f_131072_30 + 1)
	stx	___fsdiv_f_131072_30
00106$:
;	../_fsdiv.c: 363: return f;
	lda	(___fsdiv_f_131072_30 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsdiv_f_131072_30 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsdiv_f_131072_30 + 1)
	lda	___fsdiv_f_131072_30
	rts
00108$:
;	../_fsdiv.c: 365: return __fsdiv_org (a1, a2);
	lda	___fsdiv_PARM_1
	sta	___fsdiv_org_PARM_1
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fsdiv_org_PARM_1 + 1)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fsdiv_org_PARM_1 + 2)
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fsdiv_org_PARM_1 + 3)
	lda	___fsdiv_PARM_2
	sta	___fsdiv_org_PARM_2
	lda	(___fsdiv_PARM_2 + 1)
	sta	(___fsdiv_org_PARM_2 + 1)
	lda	(___fsdiv_PARM_2 + 2)
	sta	(___fsdiv_org_PARM_2 + 2)
	lda	(___fsdiv_PARM_2 + 3)
	sta	(___fsdiv_org_PARM_2 + 3)
	jsr	___fsdiv_org
	sta	*___fsdiv_sloc0_1_0
	stx	*(___fsdiv_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsdiv_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fsdiv_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fsdiv_sloc0_1_0 + 1)
	lda	*___fsdiv_sloc0_1_0
;	../_fsdiv.c: 366: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
