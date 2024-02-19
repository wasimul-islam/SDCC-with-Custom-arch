;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd_PARM_1
	.globl ___fsadd
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
___fsadd_sign_65536_21:
	.ds 1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
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
;expd                      Allocated to registers x h 
;sign                      Allocated with name '___fsadd_sign_65536_21'
;sloc0                     Allocated with name '___fsadd_sloc0_1_0'
;sloc1                     Allocated with name '___fsadd_sloc1_1_0'
;sloc2                     Allocated with name '___fsadd_sloc2_1_0'
;sloc3                     Allocated with name '___fsadd_sloc3_1_0'
;------------------------------------------------------------
;../_fsadd.c:170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsadd:
;../_fsadd.c:178: pfl2 = (long _AUTOMEM *)&a2;
;../_fsadd.c:179: exp2 = EXP (*pfl2);
	lda	___fsadd_PARM_2
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_PARM_2 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_PARM_2 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_PARM_2 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	mov	*(___fsadd_sloc0_1_0 + 3),*(___fsadd_sloc1_1_0 + 3)
	mov	*(___fsadd_sloc0_1_0 + 2),*(___fsadd_sloc1_1_0 + 2)
	mov	*(___fsadd_sloc0_1_0 + 1),*(___fsadd_sloc1_1_0 + 1)
	mov	*___fsadd_sloc0_1_0,*___fsadd_sloc1_1_0
	lda	*(___fsadd_sloc1_1_0 + 1)
	ldx	*___fsadd_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsadd_sloc2_1_0 + 3)
	stx	*(___fsadd_sloc2_1_0 + 2)
	mov	#0x00,*(___fsadd_sloc2_1_0 + 1)
	mov	#0x00,*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc2_1_0 + 3)
	ldx	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_exp2_65536_21 + 1)
	psha
	clra
	sta	___fsadd_exp2_65536_21
	pula
;../_fsadd.c:180: mant2 = MANT (*pfl2) << 4;
	mov	*(___fsadd_sloc0_1_0 + 3),*(___fsadd_sloc2_1_0 + 3)
	mov	*(___fsadd_sloc0_1_0 + 2),*(___fsadd_sloc2_1_0 + 2)
	mov	*(___fsadd_sloc0_1_0 + 1),*(___fsadd_sloc2_1_0 + 1)
	mov	#0x00,*___fsadd_sloc2_1_0
	bset	#7,*(___fsadd_sloc2_1_0 + 1)
	lda	*(___fsadd_sloc2_1_0 + 1)
	ldx	*___fsadd_sloc2_1_0
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	*(___fsadd_sloc2_1_0 + 1)
	stx	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc2_1_0 + 2)
	nsa	
	and	#0x0f
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	*(___fsadd_sloc2_1_0 + 3)
	ldx	*(___fsadd_sloc2_1_0 + 2)
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	*(___fsadd_sloc2_1_0 + 3)
	stx	*(___fsadd_sloc2_1_0 + 2)
	ldhx	#___fsadd_mant2_65536_21
	mov	*___fsadd_sloc2_1_0,x+
	mov	*(___fsadd_sloc2_1_0 + 1),x+
	mov	*(___fsadd_sloc2_1_0 + 2),x+
	mov	*(___fsadd_sloc2_1_0 + 3),x+
;../_fsadd.c:181: if (SIGN (*pfl2))
	lda	*___fsadd_sloc1_1_0
	rola
	clra
	rola
	tsta
	beq	00102$
;../_fsadd.c:182: mant2 = -mant2;
	clra
	sub	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_mant2_65536_21 + 3)
	clra
	sbc	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_mant2_65536_21 + 2)
	clra
	sbc	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_mant2_65536_21 + 1)
	clra
	sbc	*___fsadd_sloc2_1_0
	sta	___fsadd_mant2_65536_21
00102$:
;../_fsadd.c:184: if (!*pfl2)
	lda	*___fsadd_sloc0_1_0
	ora	*(___fsadd_sloc0_1_0 + 1)
	ora	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc0_1_0 + 3)
	bne	00104$
;../_fsadd.c:185: return (a1);
	lda	___fsadd_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(___fsadd_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsadd_PARM_1 + 2)
	lda	(___fsadd_PARM_1 + 3)
	rts
00104$:
;../_fsadd.c:187: pfl1 = (long _AUTOMEM *)&a1;
;../_fsadd.c:188: exp1 = EXP (*pfl1);
	lda	___fsadd_PARM_1
	sta	*___fsadd_sloc2_1_0
	lda	(___fsadd_PARM_1 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	(___fsadd_PARM_1 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_PARM_1 + 3)
	sta	*(___fsadd_sloc2_1_0 + 3)
	mov	*(___fsadd_sloc2_1_0 + 3),*(___fsadd_sloc1_1_0 + 3)
	mov	*(___fsadd_sloc2_1_0 + 2),*(___fsadd_sloc1_1_0 + 2)
	mov	*(___fsadd_sloc2_1_0 + 1),*(___fsadd_sloc1_1_0 + 1)
	mov	*___fsadd_sloc2_1_0,*___fsadd_sloc1_1_0
	lda	*(___fsadd_sloc1_1_0 + 1)
	ldx	*___fsadd_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsadd_sloc0_1_0 + 3)
	stx	*(___fsadd_sloc0_1_0 + 2)
	mov	#0x00,*(___fsadd_sloc0_1_0 + 1)
	mov	#0x00,*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	ldx	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc0_1_0 + 1)
	mov	#0x00,*___fsadd_sloc0_1_0
;../_fsadd.c:189: mant1 = MANT (*pfl1) << 4;
	mov	*(___fsadd_sloc2_1_0 + 3),*(___fsadd_sloc3_1_0 + 3)
	mov	*(___fsadd_sloc2_1_0 + 2),*(___fsadd_sloc3_1_0 + 2)
	mov	*(___fsadd_sloc2_1_0 + 1),*(___fsadd_sloc3_1_0 + 1)
	mov	#0x00,*___fsadd_sloc3_1_0
	bset	#7,*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 1)
	ldx	*___fsadd_sloc3_1_0
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	*(___fsadd_sloc3_1_0 + 1)
	stx	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc3_1_0 + 2)
	nsa	
	and	#0x0f
	ora	*(___fsadd_sloc3_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ldx	*(___fsadd_sloc3_1_0 + 2)
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	*(___fsadd_sloc3_1_0 + 3)
	stx	*(___fsadd_sloc3_1_0 + 2)
	ldhx	#___fsadd_mant1_65536_21
	mov	*___fsadd_sloc3_1_0,x+
	mov	*(___fsadd_sloc3_1_0 + 1),x+
	mov	*(___fsadd_sloc3_1_0 + 2),x+
	mov	*(___fsadd_sloc3_1_0 + 3),x+
;../_fsadd.c:190: if (SIGN(*pfl1))
	lda	*___fsadd_sloc1_1_0
	rola
	clra
	rola
	tsta
	beq	00108$
;../_fsadd.c:191: if (*pfl1 & 0x80000000)
	brclr	#7,*___fsadd_sloc2_1_0,00108$
;../_fsadd.c:192: mant1 = -mant1;
	clra
	sub	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
	clra
	sbc	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	clra
	sbc	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	clra
	sbc	*___fsadd_sloc3_1_0
	sta	___fsadd_mant1_65536_21
00108$:
;../_fsadd.c:194: if (!*pfl1)
	lda	*___fsadd_sloc2_1_0
	ora	*(___fsadd_sloc2_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 3)
	bne	00110$
;../_fsadd.c:195: return (a2);
	lda	___fsadd_PARM_2
	sta	*___SDCC_hc08_ret3
	lda	(___fsadd_PARM_2 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsadd_PARM_2 + 2)
	lda	(___fsadd_PARM_2 + 3)
	rts
00110$:
;../_fsadd.c:197: expd = exp1 - exp2;
	lda	*(___fsadd_sloc0_1_0 + 1)
	sub	(___fsadd_exp2_65536_21 + 1)
	tax
	lda	*___fsadd_sloc0_1_0
	sbc	___fsadd_exp2_65536_21
	psha
	pulh
;../_fsadd.c:198: if (expd > 25)
	cphx	#0x0019
	ble	00112$
;../_fsadd.c:199: return (a1);
	lda	___fsadd_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(___fsadd_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsadd_PARM_1 + 2)
	lda	(___fsadd_PARM_1 + 3)
	rts
00112$:
;../_fsadd.c:200: if (expd < -25)
	cphx	#0xffe7
	bge	00114$
;../_fsadd.c:201: return (a2);
	lda	___fsadd_PARM_2
	sta	*___SDCC_hc08_ret3
	lda	(___fsadd_PARM_2 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsadd_PARM_2 + 2)
	lda	(___fsadd_PARM_2 + 3)
	rts
00114$:
;../_fsadd.c:203: if (expd < 0)
	cphx	#0x0000
	bge	00116$
;../_fsadd.c:205: expd = -expd;
	clra
	pshx
	sub	1,s
	ais	#1
	tax
	clra
	pshh
	sbc	1,s
	ais	#1
	psha
	pulh
;../_fsadd.c:206: exp1 += expd;
	txa
	add	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	pshh
	pula
	adc	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc0_1_0
;../_fsadd.c:207: mant1 >>= expd;
	tstx
	beq	00249$
00248$:
	lda	___fsadd_mant1_65536_21
	asra
	sta	___fsadd_mant1_65536_21
	lda	(___fsadd_mant1_65536_21 + 1)
	rora
	sta	(___fsadd_mant1_65536_21 + 1)
	lda	(___fsadd_mant1_65536_21 + 2)
	rora
	sta	(___fsadd_mant1_65536_21 + 2)
	lda	(___fsadd_mant1_65536_21 + 3)
	rora
	sta	(___fsadd_mant1_65536_21 + 3)
	dbnzx	00248$
00249$:
	bra	00117$
00116$:
;../_fsadd.c:211: mant2 >>= expd;
	tstx
	beq	00251$
00250$:
	lda	___fsadd_mant2_65536_21
	asra
	sta	___fsadd_mant2_65536_21
	lda	(___fsadd_mant2_65536_21 + 1)
	rora
	sta	(___fsadd_mant2_65536_21 + 1)
	lda	(___fsadd_mant2_65536_21 + 2)
	rora
	sta	(___fsadd_mant2_65536_21 + 2)
	lda	(___fsadd_mant2_65536_21 + 3)
	rora
	sta	(___fsadd_mant2_65536_21 + 3)
	dbnzx	00250$
00251$:
00117$:
;../_fsadd.c:213: mant1 += mant2;
	ldhx	#___fsadd_mant1_65536_21
	lda	3,x
	add	(___fsadd_mant2_65536_21 + 3)
	sta	3,x
	lda	2,x
	adc	(___fsadd_mant2_65536_21 + 2)
	sta	2,x
	lda	1,x
	adc	(___fsadd_mant2_65536_21 + 1)
	sta	1,x
	lda	,x
	adc	___fsadd_mant2_65536_21
	sta	,x
;../_fsadd.c:215: sign = false;
	clra
	sta	___fsadd_sign_65536_21
;../_fsadd.c:217: if (mant1 < 0)
	lda	___fsadd_mant1_65536_21
	sub	#0x00
	bge	00121$
;../_fsadd.c:219: mant1 = -mant1;
	clra
	sub	(___fsadd_mant1_65536_21 + 3)
	sta	(___fsadd_mant1_65536_21 + 3)
	clra
	sbc	(___fsadd_mant1_65536_21 + 2)
	sta	(___fsadd_mant1_65536_21 + 2)
	clra
	sbc	(___fsadd_mant1_65536_21 + 1)
	sta	(___fsadd_mant1_65536_21 + 1)
	clra
	sbc	___fsadd_mant1_65536_21
	sta	___fsadd_mant1_65536_21
;../_fsadd.c:220: sign = true;
	lda	#0x01
	sta	___fsadd_sign_65536_21
	bra	00154$
00121$:
;../_fsadd.c:222: else if (!mant1)
	lda	___fsadd_mant1_65536_21
	ora	(___fsadd_mant1_65536_21 + 1)
	ora	(___fsadd_mant1_65536_21 + 2)
	ora	(___fsadd_mant1_65536_21 + 3)
	bne	00154$
;../_fsadd.c:223: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
;../_fsadd.c:226: while (mant1 < (HIDDEN<<4)) {
00154$:
	ldhx	*___fsadd_sloc0_1_0
00123$:
	lda	(___fsadd_mant1_65536_21 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
	lda	(___fsadd_mant1_65536_21 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	(___fsadd_mant1_65536_21 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	___fsadd_mant1_65536_21
	sta	*___fsadd_sloc3_1_0
	lda	*___fsadd_sloc3_1_0
	sub	#0x08
	bcc	00157$
;../_fsadd.c:227: mant1 <<= 1;
	pshx
	lda	(___fsadd_mant1_65536_21 + 3)
	ldx	(___fsadd_mant1_65536_21 + 2)
	lsla
	rolx
	sta	(___fsadd_mant1_65536_21 + 3)
	stx	(___fsadd_mant1_65536_21 + 2)
	lda	(___fsadd_mant1_65536_21 + 1)
	ldx	___fsadd_mant1_65536_21
	rola
	rolx
	sta	(___fsadd_mant1_65536_21 + 1)
	stx	___fsadd_mant1_65536_21
	pulx
;../_fsadd.c:228: exp1--;
	aix	#-1
	bra	00123$
;../_fsadd.c:232: while (mant1 & 0xf0000000) {
00157$:
00128$:
	lda	___fsadd_mant1_65536_21
	bit	#0xf0
	beq	00163$
;../_fsadd.c:233: if (mant1&1)
	lda	(___fsadd_mant1_65536_21 + 3)
	bit	#0x01
	beq	00127$
;../_fsadd.c:234: mant1 += 2;
	lda	(___fsadd_mant1_65536_21 + 3)
	add	#0x02
	sta	(___fsadd_mant1_65536_21 + 3)
	bcc	00258$
	lda	(___fsadd_mant1_65536_21 + 2)
	inca
	sta	(___fsadd_mant1_65536_21 + 2)
	bne	00258$
	lda	(___fsadd_mant1_65536_21 + 1)
	inca
	sta	(___fsadd_mant1_65536_21 + 1)
	bne	00258$
	lda	___fsadd_mant1_65536_21
	inca
	sta	___fsadd_mant1_65536_21
00258$:
00127$:
;../_fsadd.c:235: mant1 >>= 1;
	pshx
	lda	(___fsadd_mant1_65536_21 + 1)
	ldx	___fsadd_mant1_65536_21
	asrx
	rora
	sta	(___fsadd_mant1_65536_21 + 1)
	stx	___fsadd_mant1_65536_21
	lda	(___fsadd_mant1_65536_21 + 3)
	ldx	(___fsadd_mant1_65536_21 + 2)
	rorx
	rora
	sta	(___fsadd_mant1_65536_21 + 3)
	stx	(___fsadd_mant1_65536_21 + 2)
	pulx
;../_fsadd.c:236: exp1++;
	aix	#1
	bra	00128$
00163$:
	pshh
	pula
	sta	___fsadd_exp1_65536_21
	stx	(___fsadd_exp1_65536_21 + 1)
;../_fsadd.c:240: mant1 &= ~(HIDDEN<<4);
	lda	___fsadd_mant1_65536_21
	and	#0xf7
	sta	___fsadd_mant1_65536_21
;../_fsadd.c:243: if (exp1 >= 0x100)
	cphx	#0x0100
	blt	00135$
;../_fsadd.c:244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	lda	___fsadd_sign_65536_21
	beq	00139$
	ldhx	#0xff80
	sthx	*___fsadd_sloc3_1_0
	clrh
	clrx
	sthx	*(___fsadd_sloc3_1_0 + 2)
	bra	00140$
00139$:
	ldhx	#0x7f80
	sthx	*___fsadd_sloc3_1_0
	clrh
	clrx
	sthx	*(___fsadd_sloc3_1_0 + 2)
00140$:
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_PARM_1
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jmp	00136$
00135$:
;../_fsadd.c:245: else if (exp1 < 0)
	cphx	#0x0000
	bge	00132$
;../_fsadd.c:246: *pfl1 = 0;
	clra
	sta	___fsadd_PARM_1
	sta	(___fsadd_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 3)
	jmp	00136$
00132$:
;../_fsadd.c:248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	lda	___fsadd_sign_65536_21
	beq	00141$
	ldhx	#0x8000
	sthx	*___fsadd_sloc3_1_0
	clrh
	sthx	*(___fsadd_sloc3_1_0 + 2)
	bra	00142$
00141$:
	clrh
	clrx
	sthx	*___fsadd_sloc3_1_0
	sthx	*(___fsadd_sloc3_1_0 + 2)
00142$:
	lda	(___fsadd_exp1_65536_21 + 1)
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	___fsadd_exp1_65536_21
	sta	*(___fsadd_sloc2_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsadd_sloc2_1_0 + 1)
	sta	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc2_1_0 + 3)
	ldx	*(___fsadd_sloc2_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsadd_sloc2_1_0 + 1)
	stx	*___fsadd_sloc2_1_0
	mov	#0x00,*(___fsadd_sloc2_1_0 + 3)
	mov	#0x00,*(___fsadd_sloc2_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	(___fsadd_mant1_65536_21 + 3)
	ldx	(___fsadd_mant1_65536_21 + 2)
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	sta	*(___fsadd_sloc2_1_0 + 3)
	stx	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_mant1_65536_21 + 1)
	nsa	
	and	#0xf0
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_mant1_65536_21 + 1)
	ldx	___fsadd_mant1_65536_21
	asrx
	rora
	asrx
	rora
	asrx
	rora
	asrx
	rora
	sta	*(___fsadd_sloc2_1_0 + 1)
	stx	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_PARM_1
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
00136$:
;../_fsadd.c:249: return (a1);
	lda	___fsadd_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(___fsadd_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsadd_PARM_1 + 2)
	lda	(___fsadd_PARM_1 + 3)
;../_fsadd.c:250: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
