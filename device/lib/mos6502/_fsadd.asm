;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd_PARM_1
	.globl ___fsadd
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsadd_sloc0_1_0:
	.ds 4
___fsadd_sloc1_1_0:
	.ds 4
___fsadd_sloc2_1_0:
	.ds 4
___fsadd_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsadd_PARM_1:
	.ds 4
___fsadd_PARM_2:
	.ds 4
___fsadd_mant1_65536_21:
	.ds 4
___fsadd_mant2_65536_21:
	.ds 4
___fsadd_exp1_65536_21:
	.ds 2
___fsadd_exp2_65536_21:
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a1                        Allocated with name '___fsadd_PARM_1'
;a2                        Allocated with name '___fsadd_PARM_2'
;mant1                     Allocated with name '___fsadd_mant1_65536_21'
;mant2                     Allocated with name '___fsadd_mant2_65536_21'
;pfl1                      Allocated to registers 
;pfl2                      Allocated to registers 
;exp1                      Allocated with name '___fsadd_exp1_65536_21'
;exp2                      Allocated with name '___fsadd_exp2_65536_21'
;expd                      Allocated to registers a x 
;sign                      Allocated to registers x 
;sloc0                     Allocated with name '___fsadd_sloc0_1_0'
;sloc1                     Allocated with name '___fsadd_sloc1_1_0'
;sloc2                     Allocated with name '___fsadd_sloc2_1_0'
;sloc3                     Allocated with name '___fsadd_sloc3_1_0'
;------------------------------------------------------------
;	../_fsadd.c: 170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsadd:
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
	lda	(___fsadd_PARM_2 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	(___fsadd_PARM_2 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_PARM_2 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_PARM_2
	sta	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc1_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc1_1_0 + 2)
	ldx	*(___fsadd_sloc1_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsadd_sloc2_1_0
	stx	*(___fsadd_sloc2_1_0 + 1)
	ldy	#0x00
	sty	*(___fsadd_sloc2_1_0 + 2)
	sty	*(___fsadd_sloc2_1_0 + 3)
	lda	*___fsadd_sloc2_1_0
	ldx	*(___fsadd_sloc2_1_0 + 1)
	sta	___fsadd_exp2_65536_21
	sty	(___fsadd_exp2_65536_21 + 1)
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
	lda	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	sty	*(___fsadd_sloc2_1_0 + 3)
	lda	*(___fsadd_sloc2_1_0 + 2)
	ora	#0x80
	sta	*(___fsadd_sloc2_1_0 + 2)
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	*(___fsadd_sloc2_1_0 + 3)
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	*(___fsadd_sloc2_1_0 + 3)
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	*(___fsadd_sloc2_1_0 + 3)
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	*(___fsadd_sloc2_1_0 + 3)
	lda	*___fsadd_sloc2_1_0
	sta	___fsadd_mant2_65536_21
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_mant2_65536_21 + 1)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_mant2_65536_21 + 2)
	lda	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_mant2_65536_21 + 3)
;	../_fsadd.c: 181: if (SIGN (*pfl2))
	lda	*(___fsadd_sloc1_1_0 + 3)
	rol	a
	tya
	rol	a
	sta	*___fsadd_sloc1_1_0
	sty	*(___fsadd_sloc1_1_0 + 1)
	sty	*(___fsadd_sloc1_1_0 + 2)
	sty	*(___fsadd_sloc1_1_0 + 3)
	lda	#0x01
	and	*___fsadd_sloc1_1_0
	beq	00102$
;	../_fsadd.c: 182: mant2 = -mant2;
	tya
	sec
	sbc	*___fsadd_sloc2_1_0
	sta	___fsadd_mant2_65536_21
	tya
	sbc	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_mant2_65536_21 + 1)
	tya
	sbc	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_mant2_65536_21 + 2)
	tya
	sbc	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_mant2_65536_21 + 3)
00102$:
;	../_fsadd.c: 184: if (!*pfl2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	ora	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc0_1_0 + 1)
	ora	*___fsadd_sloc0_1_0
	bne	00104$
;	../_fsadd.c: 185: return (a1);
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
	rts
00104$:
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
	lda	(___fsadd_PARM_1 + 3)
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	(___fsadd_PARM_1 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_PARM_1 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	___fsadd_PARM_1
	sta	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc1_1_0
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc1_1_0 + 2)
	ldx	*(___fsadd_sloc1_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsadd_sloc0_1_0
	stx	*(___fsadd_sloc0_1_0 + 1)
	ldy	#0x00
	sty	*(___fsadd_sloc0_1_0 + 2)
	sty	*(___fsadd_sloc0_1_0 + 3)
	lda	*___fsadd_sloc0_1_0
	ldx	*(___fsadd_sloc0_1_0 + 1)
	sta	*___fsadd_sloc0_1_0
	sty	*(___fsadd_sloc0_1_0 + 1)
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
	lda	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	sty	*(___fsadd_sloc3_1_0 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	#0x80
	sta	*(___fsadd_sloc3_1_0 + 2)
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	*(___fsadd_sloc3_1_0 + 3)
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	*(___fsadd_sloc3_1_0 + 3)
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	*(___fsadd_sloc3_1_0 + 3)
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	*(___fsadd_sloc3_1_0 + 3)
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_mant1_65536_21
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
;	../_fsadd.c: 190: if (SIGN(*pfl1))
	lda	*(___fsadd_sloc1_1_0 + 3)
	rol	a
	tya
	rol	a
	sta	*___fsadd_sloc1_1_0
	sty	*(___fsadd_sloc1_1_0 + 1)
	sty	*(___fsadd_sloc1_1_0 + 2)
	sty	*(___fsadd_sloc1_1_0 + 3)
	lda	#0x01
	and	*___fsadd_sloc1_1_0
	beq	00108$
;	../_fsadd.c: 191: if (*pfl1 & 0x80000000)
	lda	#0x80
	and	*(___fsadd_sloc2_1_0 + 3)
	beq	00108$
;	../_fsadd.c: 192: mant1 = -mant1;
	tya
	sec
	sbc	*___fsadd_sloc3_1_0
	sta	___fsadd_mant1_65536_21
	tya
	sbc	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	tya
	sbc	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	tya
	sbc	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
00108$:
;	../_fsadd.c: 194: if (!*pfl1)
	lda	*(___fsadd_sloc2_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 1)
	ora	*___fsadd_sloc2_1_0
	bne	00110$
;	../_fsadd.c: 195: return (a2);
	lda	(___fsadd_PARM_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_2 + 1)
	lda	___fsadd_PARM_2
	rts
00110$:
;	../_fsadd.c: 197: expd = exp1 - exp2;
	lda	*___fsadd_sloc0_1_0
	sec
	sbc	___fsadd_exp2_65536_21
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sbc	(___fsadd_exp2_65536_21 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
;	../_fsadd.c: 198: if (expd > 25)
	lda	#0x19
	sec
	sbc	*___fsadd_sloc3_1_0
	lda	#0x00
	sbc	*(___fsadd_sloc3_1_0 + 1)
	bvc	00248$
	bpl	00247$
	bmi	00112$
00248$:
	bpl	00112$
00247$:
;	../_fsadd.c: 199: return (a1);
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
	rts
00112$:
;	../_fsadd.c: 200: if (expd < -25)
	lda	*___fsadd_sloc3_1_0
	sec
	sbc	#0xe7
	lda	*(___fsadd_sloc3_1_0 + 1)
	sbc	#0xff
	bvc	00251$
	bpl	00250$
	bmi	00114$
00251$:
	bpl	00114$
00250$:
;	../_fsadd.c: 201: return (a2);
	lda	(___fsadd_PARM_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_2 + 1)
	lda	___fsadd_PARM_2
	rts
00114$:
;	../_fsadd.c: 203: if (expd < 0)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sec
	sbc	#0x00
	bvc	00254$
	bpl	00253$
	bmi	00116$
00254$:
	bpl	00116$
00253$:
;	../_fsadd.c: 205: expd = -expd;
	lda	#0x00
	sec
	sbc	*___fsadd_sloc3_1_0
	pha
	lda	#0x00
	sbc	*(___fsadd_sloc3_1_0 + 1)
	tax
	pla
;	../_fsadd.c: 206: exp1 += expd;
	pha
	clc
	adc	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc0_1_0
	txa
	adc	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	pla
;	../_fsadd.c: 207: mant1 >>= expd;
	tay
	beq	00117$
00256$:
	pha
	lda	(___fsadd_mant1_65536_21 + 3)
	cmp	#0x80
	pla
	ror	(___fsadd_mant1_65536_21 + 3)
	ror	(___fsadd_mant1_65536_21 + 2)
	ror	(___fsadd_mant1_65536_21 + 1)
	ror	___fsadd_mant1_65536_21
	dey
	bne	00256$
	jmp	00117$
00116$:
;	../_fsadd.c: 211: mant2 >>= expd;
	ldy	*___fsadd_sloc3_1_0
	beq	00259$
00258$:
	pha
	lda	(___fsadd_mant2_65536_21 + 3)
	cmp	#0x80
	pla
	ror	(___fsadd_mant2_65536_21 + 3)
	ror	(___fsadd_mant2_65536_21 + 2)
	ror	(___fsadd_mant2_65536_21 + 1)
	ror	___fsadd_mant2_65536_21
	dey
	bne	00258$
00259$:
00117$:
;	../_fsadd.c: 213: mant1 += mant2;
	lda	___fsadd_mant1_65536_21
	clc
	adc	___fsadd_mant2_65536_21
	sta	___fsadd_mant1_65536_21
	lda	(___fsadd_mant1_65536_21 + 1)
	adc	(___fsadd_mant2_65536_21 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	lda	(___fsadd_mant1_65536_21 + 2)
	adc	(___fsadd_mant2_65536_21 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	lda	(___fsadd_mant1_65536_21 + 3)
	adc	(___fsadd_mant2_65536_21 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
;	../_fsadd.c: 215: sign = false;
	ldx	#0x00
;	../_fsadd.c: 217: if (mant1 < 0)
	lda	(___fsadd_mant1_65536_21 + 3)
	sec
	sbc	#0x00
	bvc	00261$
	bpl	00260$
	bmi	00121$
00261$:
	bpl	00121$
00260$:
;	../_fsadd.c: 219: mant1 = -mant1;
	txa
	sec
	sbc	___fsadd_mant1_65536_21
	sta	___fsadd_mant1_65536_21
	txa
	sbc	(___fsadd_mant1_65536_21 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	txa
	sbc	(___fsadd_mant1_65536_21 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	txa
	sbc	(___fsadd_mant1_65536_21 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
;	../_fsadd.c: 220: sign = true;
	inx
	jmp	00154$
00121$:
;	../_fsadd.c: 222: else if (!mant1)
	lda	(___fsadd_mant1_65536_21 + 3)
	ora	(___fsadd_mant1_65536_21 + 2)
	ora	(___fsadd_mant1_65536_21 + 1)
	ora	___fsadd_mant1_65536_21
	bne	00154$
;	../_fsadd.c: 223: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	../_fsadd.c: 226: while (mant1 < (HIDDEN<<4)) {
00154$:
	lda	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
00123$:
	lda	___fsadd_mant1_65536_21
	sta	*___fsadd_sloc2_1_0
	lda	(___fsadd_mant1_65536_21 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	(___fsadd_mant1_65536_21 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_mant1_65536_21 + 3)
	sta	*(___fsadd_sloc2_1_0 + 3)
	sec
	sbc	#0x08
	bcs	00157$
;	../_fsadd.c: 227: mant1 <<= 1;
	asl	___fsadd_mant1_65536_21
	rol	(___fsadd_mant1_65536_21 + 1)
	rol	(___fsadd_mant1_65536_21 + 2)
	rol	(___fsadd_mant1_65536_21 + 3)
;	../_fsadd.c: 228: exp1--;
	sec 
	lda	*___fsadd_sloc3_1_0
	sbc	#0x01
	sta	*___fsadd_sloc3_1_0
	bcs	00123$
	dec	*(___fsadd_sloc3_1_0 + 1)
	jmp	00123$
;	../_fsadd.c: 232: while (mant1 & 0xf0000000) {
00157$:
00128$:
	lda	#0xf0
	and	(___fsadd_mant1_65536_21 + 3)
	beq	00163$
;	../_fsadd.c: 233: if (mant1&1)
	lda	#0x01
	and	___fsadd_mant1_65536_21
	beq	00127$
;	../_fsadd.c: 234: mant1 += 2;
	lda	___fsadd_mant1_65536_21
	clc
	adc	#0x02
	sta	___fsadd_mant1_65536_21
	bcc	00269$
	inc	(___fsadd_mant1_65536_21 + 1)
	bne	00269$
	inc	(___fsadd_mant1_65536_21 + 2)
	bne	00269$
	inc	(___fsadd_mant1_65536_21 + 3)
00269$:
00127$:
;	../_fsadd.c: 235: mant1 >>= 1;
	lda	(___fsadd_mant1_65536_21 + 3)
	cmp	#0x80
	ror	a
	sta	(___fsadd_mant1_65536_21 + 3)
	ror	(___fsadd_mant1_65536_21 + 2)
	ror	(___fsadd_mant1_65536_21 + 1)
	ror	___fsadd_mant1_65536_21
	lda	___fsadd_mant1_65536_21
;	../_fsadd.c: 236: exp1++;
	inc	*___fsadd_sloc3_1_0
	bne	00128$
	inc	*(___fsadd_sloc3_1_0 + 1)
	jmp	00128$
00163$:
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_exp1_65536_21
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_exp1_65536_21 + 1)
;	../_fsadd.c: 240: mant1 &= ~(HIDDEN<<4);
	lda	(___fsadd_mant1_65536_21 + 3)
	and	#0xf7
	sta	(___fsadd_mant1_65536_21 + 3)
;	../_fsadd.c: 243: if (exp1 >= 0x100)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sec
	sbc	#0x01
	bvs	00272$
	bpl	00271$
	bmi	00135$
00272$:
	bpl	00135$
00271$:
;	../_fsadd.c: 244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	cpx	#0x00
	beq	00139$
	ldx	#0x00
	stx	*___fsadd_sloc2_1_0
	stx	*(___fsadd_sloc2_1_0 + 1)
	ldx	#0x80
	stx	*(___fsadd_sloc2_1_0 + 2)
	ldx	#0xff
	stx	*(___fsadd_sloc2_1_0 + 3)
	jmp	00140$
00139$:
	ldx	#0x00
	stx	*___fsadd_sloc2_1_0
	stx	*(___fsadd_sloc2_1_0 + 1)
	ldx	#0x80
	stx	*(___fsadd_sloc2_1_0 + 2)
	dex
	stx	*(___fsadd_sloc2_1_0 + 3)
00140$:
	lda	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*___fsadd_sloc2_1_0
	sta	___fsadd_PARM_1
	jmp	00136$
00135$:
;	../_fsadd.c: 245: else if (exp1 < 0)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sec
	sbc	#0x00
	bvc	00276$
	bpl	00275$
	bmi	00132$
00276$:
	bpl	00132$
00275$:
;	../_fsadd.c: 246: *pfl1 = 0;
	ldx	#0x00
	stx	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	stx	(___fsadd_PARM_1 + 1)
	stx	___fsadd_PARM_1
	jmp	00136$
00132$:
;	../_fsadd.c: 248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	cpx	#0x00
	beq	00141$
	ldx	#0x00
	stx	*___fsadd_sloc3_1_0
	stx	*(___fsadd_sloc3_1_0 + 1)
	stx	*(___fsadd_sloc3_1_0 + 2)
	ldx	#0x80
	stx	*(___fsadd_sloc3_1_0 + 3)
	jmp	00142$
00141$:
	ldx	#0x00
	stx	*___fsadd_sloc3_1_0
	stx	*(___fsadd_sloc3_1_0 + 1)
	stx	*(___fsadd_sloc3_1_0 + 2)
	stx	*(___fsadd_sloc3_1_0 + 3)
00142$:
	lda	___fsadd_exp1_65536_21
	sta	*___fsadd_sloc2_1_0
	lda	(___fsadd_exp1_65536_21 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	*___fsadd_sloc2_1_0
	ldx	*(___fsadd_sloc2_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 2)
	stx	*(___fsadd_sloc2_1_0 + 3)
	ldx	#0x00
	stx	*___fsadd_sloc2_1_0
	stx	*(___fsadd_sloc2_1_0 + 1)
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
	lda	___fsadd_mant1_65536_21
	ldx	(___fsadd_mant1_65536_21 + 1)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*___fsadd_sloc2_1_0
	stx	*(___fsadd_sloc2_1_0 + 1)
	lda	(___fsadd_mant1_65536_21 + 2)
	asl	a
	asl	a
	asl	a
	asl	a
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	(___fsadd_mant1_65536_21 + 2)
	ldx	(___fsadd_mant1_65536_21 + 3)
	stx	*(__TEMP+0)
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*(___fsadd_sloc2_1_0 + 2)
	stx	*(___fsadd_sloc2_1_0 + 3)
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_PARM_1
00136$:
;	../_fsadd.c: 249: return (a1);
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
;	../_fsadd.c: 250: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
