;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fsdiv
	.optsdcc -ms08
	
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
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv_PARM_1
	.globl ___fsdiv
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
___fsdiv_org_sign_65536_21:
	.ds 1
___fsdiv_org_diff_196608_26:
	.ds 4
___fsdiv_PARM_1:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_f_131072_30:
	.ds 4
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
;exp                       Allocated to registers x h 
;sign                      Allocated with name '___fsdiv_org_sign_65536_21'
;diff                      Allocated with name '___fsdiv_org_diff_196608_26'
;sloc0                     Allocated with name '___fsdiv_org_sloc0_1_0'
;sloc1                     Allocated with name '___fsdiv_org_sloc1_1_0'
;sloc2                     Allocated with name '___fsdiv_org_sloc2_1_0'
;------------------------------------------------------------
;../_fsdiv.c:274: static float __fsdiv_org (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___fsdiv_org:
;../_fsdiv.c:283: fl1.f = a1;
	lda	___fsdiv_org_PARM_1
	sta	___fsdiv_org_fl1_65536_21
	lda	(___fsdiv_org_PARM_1 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	(___fsdiv_org_PARM_1 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	(___fsdiv_org_PARM_1 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
;../_fsdiv.c:285: exp = EXP (fl1.l);
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc0_1_0
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	ldx	*___fsdiv_org_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	stx	*(___fsdiv_org_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_org_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_org_sloc0_1_0
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	ldx	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_org_sloc0_1_0
;../_fsdiv.c:287: if (!exp)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	ora	*___fsdiv_org_sloc0_1_0
	bne	00102$
;../_fsdiv.c:288: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_fsdiv.c:290: fl2.f = a2;
	lda	___fsdiv_org_PARM_2
	sta	___fsdiv_org_fl2_65536_21
	lda	(___fsdiv_org_PARM_2 + 1)
	sta	(___fsdiv_org_fl2_65536_21 + 1)
	lda	(___fsdiv_org_PARM_2 + 2)
	sta	(___fsdiv_org_fl2_65536_21 + 2)
	lda	(___fsdiv_org_PARM_2 + 3)
	sta	(___fsdiv_org_fl2_65536_21 + 3)
;../_fsdiv.c:292: exp -= EXP (fl2.l);
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc1_1_0
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	ldx	*___fsdiv_org_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	stx	*(___fsdiv_org_sloc1_1_0 + 2)
	mov	#0x00,*(___fsdiv_org_sloc1_1_0 + 1)
	mov	#0x00,*___fsdiv_org_sloc1_1_0
	lda	*(___fsdiv_org_sloc1_1_0 + 3)
	ldx	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	mov	#0x00,*___fsdiv_org_sloc1_1_0
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sub	*(___fsdiv_org_sloc1_1_0 + 1)
	tax
	lda	*___fsdiv_org_sloc0_1_0
	sbc	*___fsdiv_org_sloc1_1_0
	psha
	pulh
;../_fsdiv.c:293: exp += EXCESS;
	aix	#126
	sthx	*___fsdiv_org_sloc1_1_0
;../_fsdiv.c:296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc0_1_0
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	*___fsdiv_org_sloc0_1_0
	rola
	clra
	rola
	sta	*___fsdiv_org_sloc0_1_0
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*___fsdiv_org_sloc2_1_0
	rola
	clra
	rola
	eor	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_sign_65536_21
;../_fsdiv.c:299: mant1 = MANT (fl1.l);
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	mov	#0x00,*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_mant1_65536_21 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_mant1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	#0x80
	sta	(___fsdiv_org_mant1_65536_21 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant1_65536_21
;../_fsdiv.c:300: mant2 = MANT (fl2.l);
	lda	___fsdiv_org_fl2_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	(___fsdiv_org_fl2_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	(___fsdiv_org_fl2_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	mov	#0x00,*___fsdiv_org_sloc2_1_0
	bset	#7,*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant2_65536_21
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_mant2_65536_21 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_mant2_65536_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_mant2_65536_21 + 3)
;../_fsdiv.c:303: if (mant1 < mant2)
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	sub	(___fsdiv_org_mant2_65536_21 + 3)
	lda	(___fsdiv_org_mant1_65536_21 + 2)
	sbc	(___fsdiv_org_mant2_65536_21 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	sbc	(___fsdiv_org_mant2_65536_21 + 1)
	lda	___fsdiv_org_mant1_65536_21
	sbc	___fsdiv_org_mant2_65536_21
	bcc	00104$
;../_fsdiv.c:305: mask = 0x1000000;
	ldhx	#0x0100
	sthx	___fsdiv_org_mask_65536_21
	clrh
	sthx	(___fsdiv_org_mask_65536_21 + 2)
	bra	00105$
00104$:
;../_fsdiv.c:309: mask = 0x0800000;
	ldhx	#0x0080
	sthx	___fsdiv_org_mask_65536_21
	clrx
	sthx	(___fsdiv_org_mask_65536_21 + 2)
;../_fsdiv.c:310: exp++;
	ldhx	*___fsdiv_org_sloc1_1_0
	aix	#1
	sthx	*___fsdiv_org_sloc1_1_0
00105$:
;../_fsdiv.c:313: if (exp < 1) /* denormal */
	ldhx	*___fsdiv_org_sloc1_1_0
	cphx	#0x0001
	bge	00107$
;../_fsdiv.c:314: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00107$:
;../_fsdiv.c:316: if (exp >= 255)
	ldhx	*___fsdiv_org_sloc1_1_0
	cphx	#0x00ff
	blt	00116$
;../_fsdiv.c:318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
	lda	___fsdiv_org_sign_65536_21
	beq	00120$
	ldhx	#0xff80
	sthx	*___fsdiv_org_sloc0_1_0
	clrh
	clrx
	sthx	*(___fsdiv_org_sloc0_1_0 + 2)
	bra	00121$
00120$:
	ldhx	#0x7f80
	sthx	*___fsdiv_org_sloc0_1_0
	clrh
	clrx
	sthx	*(___fsdiv_org_sloc0_1_0 + 2)
00121$:
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_fl1_65536_21
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
	jmp	00117$
00116$:
;../_fsdiv.c:323: result = 0;
	clrh
	clrx
	sthx	___fsdiv_org_result_65536_21
	sthx	(___fsdiv_org_result_65536_21 + 2)
;../_fsdiv.c:324: do
00110$:
;../_fsdiv.c:326: long diff = mant1 - mant2;
	ldhx	#___fsdiv_org_mant1_65536_21
	lda	3,x
	sub	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	2,x
	sbc	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	1,x
	sbc	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	,x
	sbc	*___fsdiv_org_sloc2_1_0
	sta	*___fsdiv_org_sloc0_1_0
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_diff_196608_26
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_diff_196608_26 + 1)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_diff_196608_26 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_diff_196608_26 + 3)
;../_fsdiv.c:327: if (diff >= 0)
	lda	___fsdiv_org_diff_196608_26
	sub	#0x00
	blt	00109$
;../_fsdiv.c:329: mant1 = diff;
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_mant1_65536_21
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_mant1_65536_21 + 1)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_mant1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_mant1_65536_21 + 3)
;../_fsdiv.c:330: result |= mask;
	lda	(___fsdiv_org_result_65536_21 + 3)
	ora	(___fsdiv_org_mask_65536_21 + 3)
	sta	(___fsdiv_org_result_65536_21 + 3)
	lda	(___fsdiv_org_result_65536_21 + 2)
	ora	(___fsdiv_org_mask_65536_21 + 2)
	sta	(___fsdiv_org_result_65536_21 + 2)
	lda	(___fsdiv_org_result_65536_21 + 1)
	ora	(___fsdiv_org_mask_65536_21 + 1)
	sta	(___fsdiv_org_result_65536_21 + 1)
	lda	___fsdiv_org_result_65536_21
	ora	___fsdiv_org_mask_65536_21
	sta	___fsdiv_org_result_65536_21
00109$:
;../_fsdiv.c:332: mant1 <<= 1;
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	ldx	(___fsdiv_org_mant1_65536_21 + 2)
	lsla
	rolx
	sta	(___fsdiv_org_mant1_65536_21 + 3)
	stx	(___fsdiv_org_mant1_65536_21 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	ldx	___fsdiv_org_mant1_65536_21
	rola
	rolx
	sta	(___fsdiv_org_mant1_65536_21 + 1)
	stx	___fsdiv_org_mant1_65536_21
;../_fsdiv.c:333: mask >>= 1;
	lda	(___fsdiv_org_mask_65536_21 + 1)
	ldx	___fsdiv_org_mask_65536_21
	lsrx
	rora
	sta	(___fsdiv_org_mask_65536_21 + 1)
	stx	___fsdiv_org_mask_65536_21
	lda	(___fsdiv_org_mask_65536_21 + 3)
	ldx	(___fsdiv_org_mask_65536_21 + 2)
	rorx
	rora
	sta	(___fsdiv_org_mask_65536_21 + 3)
	stx	(___fsdiv_org_mask_65536_21 + 2)
;../_fsdiv.c:335: while (mask);
	lda	___fsdiv_org_mask_65536_21
	ora	(___fsdiv_org_mask_65536_21 + 1)
	ora	(___fsdiv_org_mask_65536_21 + 2)
	ora	(___fsdiv_org_mask_65536_21 + 3)
	beq	00180$
	jmp	00110$
00180$:
;../_fsdiv.c:338: if (mant1 >= mant2)
	lda	(___fsdiv_org_mant1_65536_21 + 3)
	sub	(___fsdiv_org_mant2_65536_21 + 3)
	lda	(___fsdiv_org_mant1_65536_21 + 2)
	sbc	(___fsdiv_org_mant2_65536_21 + 2)
	lda	(___fsdiv_org_mant1_65536_21 + 1)
	sbc	(___fsdiv_org_mant2_65536_21 + 1)
	lda	___fsdiv_org_mant1_65536_21
	sbc	___fsdiv_org_mant2_65536_21
	bcs	00114$
;../_fsdiv.c:339: result += 1;
	ldhx	#___fsdiv_org_result_65536_21
	inc	3,x
	bne	00182$
	inc	2,x
	bne	00182$
	inc	1,x
	bne	00182$
	inc	,x
00182$:
00114$:
;../_fsdiv.c:341: result &= ~HIDDEN;
	lda	(___fsdiv_org_result_65536_21 + 1)
	and	#0x7f
	sta	(___fsdiv_org_result_65536_21 + 1)
;../_fsdiv.c:344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	lda	___fsdiv_org_sign_65536_21
	beq	00122$
	ldhx	#0x8000
	sthx	*___fsdiv_org_sloc2_1_0
	clrh
	sthx	*(___fsdiv_org_sloc2_1_0 + 2)
	bra	00123$
00122$:
	clrh
	clrx
	sthx	*___fsdiv_org_sloc2_1_0
	sthx	*(___fsdiv_org_sloc2_1_0 + 2)
00123$:
	mov	*(___fsdiv_org_sloc1_1_0 + 1),*(___fsdiv_org_sloc1_1_0 + 3)
	lda	*___fsdiv_org_sloc1_1_0
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	sta	*___fsdiv_org_sloc1_1_0
	lda	*(___fsdiv_org_sloc1_1_0 + 3)
	ldx	*(___fsdiv_org_sloc1_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	stx	*___fsdiv_org_sloc1_1_0
	mov	#0x00,*(___fsdiv_org_sloc1_1_0 + 3)
	mov	#0x00,*(___fsdiv_org_sloc1_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	*(___fsdiv_org_sloc1_1_0 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	*(___fsdiv_org_sloc1_1_0 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	ora	*___fsdiv_org_sloc1_1_0
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	(___fsdiv_org_result_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	(___fsdiv_org_result_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	(___fsdiv_org_result_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	ora	___fsdiv_org_result_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_fl1_65536_21
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_fl1_65536_21 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_fl1_65536_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_fl1_65536_21 + 3)
00117$:
;../_fsdiv.c:346: return (fl1.f);
	lda	___fsdiv_org_fl1_65536_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	(___fsdiv_org_fl1_65536_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	(___fsdiv_org_fl1_65536_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_65536_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	mov	*___fsdiv_org_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(___fsdiv_org_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
;../_fsdiv.c:347: }
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
;../_fsdiv.c:349: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsdiv:
;../_fsdiv.c:351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
;../_fsdiv.c:353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
	lda	___fsdiv_PARM_2
	sta	*___fsdiv_sloc0_1_0
	lda	(___fsdiv_PARM_2 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	(___fsdiv_PARM_2 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_PARM_2 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	*(___fsdiv_sloc0_1_0 + 1)
	ldx	*___fsdiv_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsdiv_sloc0_1_0 + 3)
	stx	*(___fsdiv_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc0_1_0
	tst	*(___fsdiv_sloc0_1_0 + 3)
	beq	00127$
	bra	00108$
00127$:
;../_fsdiv.c:356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
;../_fsdiv.c:357: if (a1 > 0.0f)
	clrh
	clrx
	sthx	___fslt_PARM_1
	sthx	(___fslt_PARM_1 + 2)
	ldhx	___fsdiv_PARM_1
	sthx	___fslt_PARM_2
	ldhx	(___fsdiv_PARM_1 + 2)
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00105$
;../_fsdiv.c:358: *p = __INFINITY;           // +inf
	lda	#0x7f
	sta	___fsdiv_f_131072_30
	inca
	sta	(___fsdiv_f_131072_30 + 1)
	clra
	sta	(___fsdiv_f_131072_30 + 2)
	sta	(___fsdiv_f_131072_30 + 3)
	bra	00106$
00105$:
;../_fsdiv.c:359: else if (a1 < 0.0f)
	ldhx	___fsdiv_PARM_1
	sthx	___fslt_PARM_1
	ldhx	(___fsdiv_PARM_1 + 2)
	sthx	(___fslt_PARM_1 + 2)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00102$
;../_fsdiv.c:360: *p = SIGNBIT | __INFINITY; // -inf
	lda	#0xff
	sta	___fsdiv_f_131072_30
	lda	#0x80
	sta	(___fsdiv_f_131072_30 + 1)
	clra
	sta	(___fsdiv_f_131072_30 + 2)
	sta	(___fsdiv_f_131072_30 + 3)
	bra	00106$
00102$:
;../_fsdiv.c:362: *p = __NAN;                // nan
	lda	#0xff
	sta	___fsdiv_f_131072_30
	lda	#0xc0
	sta	(___fsdiv_f_131072_30 + 1)
	clra
	sta	(___fsdiv_f_131072_30 + 2)
	sta	(___fsdiv_f_131072_30 + 3)
00106$:
;../_fsdiv.c:363: return f;
	lda	___fsdiv_f_131072_30
	sta	*___SDCC_hc08_ret3
	lda	(___fsdiv_f_131072_30 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fsdiv_f_131072_30 + 2)
	lda	(___fsdiv_f_131072_30 + 3)
	rts
00108$:
;../_fsdiv.c:365: return __fsdiv_org (a1, a2);
	ldhx	___fsdiv_PARM_1
	sthx	___fsdiv_org_PARM_1
	ldhx	(___fsdiv_PARM_1 + 2)
	sthx	(___fsdiv_org_PARM_1 + 2)
	ldhx	___fsdiv_PARM_2
	sthx	___fsdiv_org_PARM_2
	ldhx	(___fsdiv_PARM_2 + 2)
	sthx	(___fsdiv_org_PARM_2 + 2)
	jsr	___fsdiv_org
	sta	*(___fsdiv_sloc0_1_0 + 3)
	stx	*(___fsdiv_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fsdiv_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fsdiv_sloc0_1_0
	mov	*___fsdiv_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___fsdiv_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fsdiv_sloc0_1_0 + 2)
	lda	*(___fsdiv_sloc0_1_0 + 3)
;../_fsdiv.c:366: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
