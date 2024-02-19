;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsmul
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
	.globl ___fsmul_PARM_2
	.globl ___fsmul_PARM_1
	.globl ___fsmul
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fsmul_sloc0_1_0:
	.ds 4
___fsmul_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
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
___fsmul_PARM_1:
	.ds 4
___fsmul_PARM_2:
	.ds 4
___fsmul_fl1_65536_21:
	.ds 4
___fsmul_fl2_65536_21:
	.ds 4
___fsmul_result_65536_21:
	.ds 4
___fsmul_exp_65536_21:
	.ds 2
___fsmul_sign_65536_21:
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fsmul_sloc0_1_0'
;sloc1                     Allocated with name '___fsmul_sloc1_1_0'
;a1                        Allocated with name '___fsmul_PARM_1'
;a2                        Allocated with name '___fsmul_PARM_2'
;fl1                       Allocated with name '___fsmul_fl1_65536_21'
;fl2                       Allocated with name '___fsmul_fl2_65536_21'
;result                    Allocated with name '___fsmul_result_65536_21'
;exp                       Allocated with name '___fsmul_exp_65536_21'
;sign                      Allocated with name '___fsmul_sign_65536_21'
;------------------------------------------------------------
;../_fsmul.c:241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsmul:
;../_fsmul.c:247: fl1.f = a1;
	lda	___fsmul_PARM_1
	sta	___fsmul_fl1_65536_21
	lda	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	(___fsmul_PARM_1 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
;../_fsmul.c:248: fl2.f = a2;
	lda	___fsmul_PARM_2
	sta	___fsmul_fl2_65536_21
	lda	(___fsmul_PARM_2 + 1)
	sta	(___fsmul_fl2_65536_21 + 1)
	lda	(___fsmul_PARM_2 + 2)
	sta	(___fsmul_fl2_65536_21 + 2)
	lda	(___fsmul_PARM_2 + 3)
	sta	(___fsmul_fl2_65536_21 + 3)
;../_fsmul.c:250: if (!fl1.l || !fl2.l)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 3)
	beq	00101$
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 3)
	bne	00102$
00101$:
;../_fsmul.c:251: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_fsmul.c:254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	rola
	clra
	rola
	sta	*___fsmul_sloc0_1_0
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	rola
	clra
	rola
	eor	*___fsmul_sloc0_1_0
	sta	___fsmul_sign_65536_21
;../_fsmul.c:255: exp = EXP (fl1.l) - EXCESS;
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ldx	*___fsmul_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	mov	#0x00,*(___fsmul_sloc1_1_0 + 1)
	mov	#0x00,*___fsmul_sloc1_1_0
	ldx	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	psha
	pulh
	clrh
	aix	#-126
	sthx	*___fsmul_sloc1_1_0
;../_fsmul.c:256: exp += EXP (fl2.l);
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 1)
	ldx	*___fsmul_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsmul_sloc0_1_0 + 3)
	stx	*(___fsmul_sloc0_1_0 + 2)
	mov	#0x00,*(___fsmul_sloc0_1_0 + 1)
	mov	#0x00,*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 2)
	psha
	clrx
	pula
	add	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_exp_65536_21 + 1)
	txa
	adc	*___fsmul_sloc1_1_0
	sta	___fsmul_exp_65536_21
;../_fsmul.c:258: fl1.l = MANT (fl1.l);
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*___fsmul_sloc1_1_0
	bset	#7,*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
;../_fsmul.c:259: fl2.l = MANT (fl2.l);
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*___fsmul_sloc1_1_0
	bset	#7,*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl2_65536_21
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl2_65536_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl2_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl2_65536_21 + 3)
;../_fsmul.c:262: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 2),*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 1),*(___fsmul_sloc1_1_0 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	*(___fsmul_sloc1_1_0 + 1)
	stx	*___fsmul_sloc1_1_0
	ldx	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	psha
	pulh
	stx	(__mullong_PARM_1 + 3)
	pshh
	pula
	sta	(__mullong_PARM_1 + 2)
	clra
	sta	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 2),*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 1),*(___fsmul_sloc1_1_0 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	*(___fsmul_sloc1_1_0 + 1)
	mov	#0x00,*___fsmul_sloc1_1_0
	ldx	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	psha
	pulh
	stx	(__mullong_PARM_2 + 3)
	pshh
	pula
	sta	(__mullong_PARM_2 + 2)
	clra
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
;../_fsmul.c:263: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
	jsr	__mullong
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fsmul_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fsmul_sloc1_1_0
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 2)
	psha
	pulh
	clrh
	stx	(__mullong_PARM_1 + 3)
	pshh
	pula
	sta	(__mullong_PARM_1 + 2)
	clra
	sta	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 2),*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 1),*(___fsmul_sloc0_1_0 + 2)
	lda	*___fsmul_sloc0_1_0
	sta	*(___fsmul_sloc0_1_0 + 1)
	mov	#0x00,*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 2)
	psha
	pulh
	stx	(__mullong_PARM_2 + 3)
	pshh
	pula
	sta	(__mullong_PARM_2 + 2)
	clra
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	jsr	__mullong
	sta	*(___fsmul_sloc0_1_0 + 3)
	stx	*(___fsmul_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fsmul_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fsmul_sloc0_1_0
	mov	*(___fsmul_sloc0_1_0 + 2),*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 1),*(___fsmul_sloc0_1_0 + 2)
	lda	*___fsmul_sloc0_1_0
	sta	*(___fsmul_sloc0_1_0 + 1)
	mov	#0x00,*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	add	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
;../_fsmul.c:264: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 2)
	psha
	pulh
	clrh
	stx	(__mullong_PARM_1 + 3)
	pshh
	pula
	sta	(__mullong_PARM_1 + 2)
	clra
	sta	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 2),*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 1),*(___fsmul_sloc0_1_0 + 2)
	lda	*___fsmul_sloc0_1_0
	sta	*(___fsmul_sloc0_1_0 + 1)
	mov	#0x00,*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 2)
	psha
	pulh
	stx	(__mullong_PARM_2 + 3)
	pshh
	pula
	sta	(__mullong_PARM_2 + 2)
	clra
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
	jsr	__mullong
	sta	*(___fsmul_sloc0_1_0 + 3)
	stx	*(___fsmul_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fsmul_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fsmul_sloc0_1_0
	mov	*(___fsmul_sloc0_1_0 + 2),*(___fsmul_sloc0_1_0 + 3)
	mov	*(___fsmul_sloc0_1_0 + 1),*(___fsmul_sloc0_1_0 + 2)
	lda	*___fsmul_sloc0_1_0
	sta	*(___fsmul_sloc0_1_0 + 1)
	mov	#0x00,*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	add	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
;../_fsmul.c:267: result += 0x40;
	lda	*(___fsmul_sloc1_1_0 + 3)
	add	#0x40
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	adc	#0x00
	sta	*___fsmul_sloc0_1_0
;../_fsmul.c:269: if (result & SIGNBIT)
	brclr	#7,*___fsmul_sloc0_1_0,00105$
;../_fsmul.c:272: result += 0x40;
	lda	*(___fsmul_sloc1_1_0 + 3)
	add	#0x80
	sta	*(___fsmul_sloc1_1_0 + 3)
	bcc	00152$
	inc	*(___fsmul_sloc1_1_0 + 2)
	bne	00152$
	inc	*(___fsmul_sloc1_1_0 + 1)
	bne	00152$
	inc	*___fsmul_sloc1_1_0
00152$:
;../_fsmul.c:273: result >>= 8;
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_result_65536_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_result_65536_21 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	(___fsmul_result_65536_21 + 1)
	clrx
	stx	___fsmul_result_65536_21
	bra	00106$
00105$:
;../_fsmul.c:277: result >>= 7;
	lda	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 2)
	lsla
	txa
	rola
	clrx
	rolx
	sta	(___fsmul_result_65536_21 + 3)
	stx	(___fsmul_result_65536_21 + 2)
	lda	*(___fsmul_sloc0_1_0 + 1)
	lsla	
	ora	(___fsmul_result_65536_21 + 2)
	sta	(___fsmul_result_65536_21 + 2)
	lda	*(___fsmul_sloc0_1_0 + 1)
	ldx	*___fsmul_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	(___fsmul_result_65536_21 + 1)
	stx	___fsmul_result_65536_21
;../_fsmul.c:278: exp--;
	ldhx	#___fsmul_exp_65536_21
	lda	1,x
	sub	#0x01
	sta	1,x
	lda	,x
	sbc	#0
	sta	,x
00106$:
;../_fsmul.c:281: result &= ~HIDDEN;
	lda	(___fsmul_result_65536_21 + 1)
	and	#0x7f
	sta	(___fsmul_result_65536_21 + 1)
;../_fsmul.c:284: if (exp >= 0x100)
	lda	___fsmul_exp_65536_21
	sub	#0x01
	blt	00111$
;../_fsmul.c:285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	lda	___fsmul_sign_65536_21
	beq	00115$
	ldhx	#0x8000
	sthx	*___fsmul_sloc1_1_0
	clrh
	sthx	*(___fsmul_sloc1_1_0 + 2)
	bra	00116$
00115$:
	clrh
	clrx
	sthx	*___fsmul_sloc1_1_0
	sthx	*(___fsmul_sloc1_1_0 + 2)
00116$:
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	#0x7f
	sta	*___fsmul_sloc1_1_0
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
	jmp	00112$
00111$:
;../_fsmul.c:286: else if (exp < 0)
	lda	___fsmul_exp_65536_21
	sub	#0x00
	bge	00108$
;../_fsmul.c:287: fl1.l = 0;
	clra
	sta	___fsmul_fl1_65536_21
	sta	(___fsmul_fl1_65536_21 + 1)
	sta	(___fsmul_fl1_65536_21 + 2)
	sta	(___fsmul_fl1_65536_21 + 3)
	jmp	00112$
00108$:
;../_fsmul.c:289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	lda	___fsmul_sign_65536_21
	beq	00117$
	ldhx	#0x8000
	sthx	*___fsmul_sloc1_1_0
	clrh
	sthx	*(___fsmul_sloc1_1_0 + 2)
	bra	00118$
00117$:
	clrh
	clrx
	sthx	*___fsmul_sloc1_1_0
	sthx	*(___fsmul_sloc1_1_0 + 2)
00118$:
	lda	(___fsmul_exp_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	___fsmul_exp_65536_21
	sta	*(___fsmul_sloc0_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsmul_sloc0_1_0 + 1)
	stx	*___fsmul_sloc0_1_0
	mov	#0x00,*(___fsmul_sloc0_1_0 + 3)
	mov	#0x00,*(___fsmul_sloc0_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	(___fsmul_result_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	(___fsmul_result_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	(___fsmul_result_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	___fsmul_result_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
00112$:
;../_fsmul.c:290: return (fl1.f);
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	mov	*___fsmul_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(___fsmul_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
;../_fsmul.c:291: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
