;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___fsadd_PARM_2:
	.ds 4
___fsadd_a1_65536_20:
	.ds 4
___fsadd_mant1_65536_21:
	.ds 4
___fsadd_mant2_65536_21:
	.ds 4
___fsadd_pfl1_65536_21:
	.ds 3
___fsadd_exp2_65536_21:
	.ds 2
___fsadd_sloc0_1_0:
	.ds 4
___fsadd_sloc1_1_0:
	.ds 2
___fsadd_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;a2                        Allocated with name '___fsadd_PARM_2'
;a1                        Allocated with name '___fsadd_a1_65536_20'
;mant1                     Allocated with name '___fsadd_mant1_65536_21'
;mant2                     Allocated with name '___fsadd_mant2_65536_21'
;pfl1                      Allocated with name '___fsadd_pfl1_65536_21'
;pfl2                      Allocated to registers r2 r3 r4 
;exp1                      Allocated to registers r4 r5 
;exp2                      Allocated with name '___fsadd_exp2_65536_21'
;expd                      Allocated to registers r4 r5 
;sign                      Allocated to registers r6 
;sloc0                     Allocated with name '___fsadd_sloc0_1_0'
;sloc1                     Allocated with name '___fsadd_sloc1_1_0'
;sloc2                     Allocated with name '___fsadd_sloc2_1_0'
;------------------------------------------------------------
;	_fsadd.c:170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___fsadd_a1_65536_20
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	_fsadd.c:178: pfl2 = (long _AUTOMEM *)&a2;
	mov	dps, #1
	mov	dptr,#___fsadd_PARM_2
	dec	dps
;	_fsadd.c:179: exp2 = EXP (*pfl2);
	inc	dps
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dps,#0
	mov	dptr,#___fsadd_sloc0_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___fsadd_sloc0_1_0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___fsadd_exp2_65536_21
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_fsadd.c:180: mant2 = MANT (*pfl2) << 4;
	mov	ar0,r2
	mov	ar1,r3
	mov	ar6,r4
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r1
	swap	a
	anl	a,#0x0f
	orl	a,r6
	mov	r6,a
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant2_65536_21
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_fsadd.c:181: if (SIGN (*pfl2))
	mov	dptr,#___fsadd_sloc0_1_0
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov  r6,a
	jz  00102$
00240$:
;	_fsadd.c:182: mant2 = -mant2;
	mov	dptr,#___fsadd_mant2_65536_21
	mov	dps, #1
	mov	dptr, #___fsadd_mant2_65536_21
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00102$:
;	_fsadd.c:184: if (!*pfl2)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz  00104$
00241$:
;	_fsadd.c:185: return (a1);
	mov     dps, #1
	mov     dptr, #___fsadd_a1_65536_20
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	ljmp	00137$
00104$:
;	_fsadd.c:187: pfl1 = (long _AUTOMEM *)&a1;
	mov	dptr,#___fsadd_pfl1_65536_21
	mov	a,#___fsadd_a1_65536_20
	movx	@dptr,a
	inc	dptr
	mov	a,#(___fsadd_a1_65536_20 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___fsadd_a1_65536_20 >> 16)
	movx	@dptr,a
;	_fsadd.c:188: exp1 = EXP (*pfl1);
	mov	dptr,#___fsadd_pfl1_65536_21
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#___fsadd_sloc0_1_0
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#___fsadd_sloc0_1_0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	c,acc[7]
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	r4,#0x00
	mov	r1,#0x00
	mov	dptr,#___fsadd_sloc1_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_fsadd.c:189: mant1 = MANT (*pfl1) << 4;
	mov	ar4,r5
	mov	ar1,r6
	mov	ar2,r7
	mov	r3,#0x00
	orl	ar2,#0x80
	mov	dptr,#___fsadd_sloc2_1_0
	mov	acc1,r2
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,acc1
	swap	a
	xch	a,acc1
	xrl	a,acc1
	xch	a,acc1
	anl	a,#0xf0
	xch	a,acc1
	xrl	a,acc1
	xch	a,acc1
	inc	dptr
	inc	dptr
	movx	@dptr,a
	mov	a,acc1
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	swap	a
	anl	a,#0x0f
	xch	a,b
	xch	a, acc1
	lcall	__decdptr
	movx	a,@dptr
	xch	a, acc1
	mov	a,acc1
	orl	a,b
	movx	@dptr,a
	mov	acc1,r4
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,acc1
	swap	a
	xch	a,acc1
	xrl	a,acc1
	xch	a,acc1
	anl	a,#0xf0
	xch	a,acc1
	xrl	a,acc1
	xch	a,acc1
	lcall	__decdptr
	lcall	__decdptr
	movx	@dptr,a
	mov	a,acc1
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:190: if (SIGN(*pfl1))
	mov	dptr,#___fsadd_sloc0_1_0
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov  r2,a
	jz  00108$
00242$:
;	_fsadd.c:191: if (*pfl1 & 0x80000000)
	mov	a,r0
	jnb  acc[7],00108$
00243$:
;	_fsadd.c:192: mant1 = -mant1;
	mov	dptr,#___fsadd_sloc2_1_0
	mov	dps, #1
	mov	dptr, #___fsadd_sloc2_1_0
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00108$:
;	_fsadd.c:194: if (!*pfl1)
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r0
	jnz  00110$
00244$:
;	_fsadd.c:195: return (a2);
	mov     dps, #1
	mov     dptr, #___fsadd_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	ljmp	00137$
00110$:
;	_fsadd.c:197: expd = exp1 - exp2;
	mov	dptr,#___fsadd_exp2_65536_21
	mov	dps, #1
	mov	dptr, #___fsadd_sloc1_1_0
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	mov	dps,#0
;	_fsadd.c:198: if (expd > 25)
	clr	c
	mov	a,#0x19
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc  00112$
00245$:
;	_fsadd.c:199: return (a1);
	mov     dps, #1
	mov     dptr, #___fsadd_a1_65536_20
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	ljmp	00137$
00112$:
;	_fsadd.c:200: if (expd < -25)
	clr	c
	mov	a,r2
	subb	a,#0xe7
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x7f
	jnc  00114$
00246$:
;	_fsadd.c:201: return (a2);
	mov     dps, #1
	mov     dptr, #___fsadd_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	ljmp	00137$
00114$:
;	_fsadd.c:203: if (expd < 0)
	mov	a,r3
	jb	acc[7],00247$
	ljmp	00116$
00247$:
;	_fsadd.c:205: expd = -expd;
	clr	c
	clr	a
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
;	_fsadd.c:206: exp1 += expd;
	mov	dptr,#___fsadd_sloc1_1_0
	movx	a,@dptr
	add	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	movx	@dptr,a
;	_fsadd.c:207: mant1 >>= expd;
	mov	b,r4
	inc	b
	mov	dptr,#___fsadd_sloc2_1_0
	mov	dps, #1
	mov	dptr, #___fsadd_sloc2_1_0
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	movx	a,@dptr
	rlc	a
	mov	ov,c
	mov	dps,#1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dps,#0
	sjmp	00249$
00248$:
	mov	c,ov
	inc	dps
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	rrc	a
	movx	@dptr,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	movx	@dptr,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	movx	@dptr,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	movx	@dptr,a
	mov	dps,#0
00249$:
	djnz	b,00248$
	sjmp 00117$
00116$:
;	_fsadd.c:211: mant2 >>= expd;
	mov	b,r2
	inc	b
	mov	dptr,#___fsadd_mant2_65536_21
	movx	a,@dptr
	mov     r2,a
	inc	dptr
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	movx	a,@dptr
	rlc	a
	mov	ov,c
	sjmp	00251$
00250$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00251$:
	djnz	b,00250$
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant2_65536_21
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00117$:
;	_fsadd.c:213: mant1 += mant2;
	mov	dptr,#___fsadd_mant2_65536_21
	mov	dps, #1
	mov	dptr, #___fsadd_sloc2_1_0
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	push	acc
	mov	dps,#0
	mov	dptr,#___fsadd_mant1_65536_21
	pop	acc
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
;	_fsadd.c:215: sign = false;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x00
;	_fsadd.c:217: if (mant1 < 0)
	mov	dptr,#___fsadd_mant1_65536_21
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	jnb  acc[7],00121$
00252$:
;	_fsadd.c:219: mant1 = -mant1;
	mov	dptr,#___fsadd_mant1_65536_21
	mov	dps, #1
	mov	dptr, #___fsadd_mant1_65536_21
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	_fsadd.c:220: sign = true;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x01
	sjmp 00154$
00121$:
;	_fsadd.c:222: else if (!mant1)
	mov	dptr,#___fsadd_mant1_65536_21
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00154$
00253$:
;	_fsadd.c:223: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00137$
;	_fsadd.c:226: while (mant1 < (HIDDEN<<4)) {
00154$:
	mov	dptr,#___fsadd_sloc1_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
00123$:
	push	ar6
	mov	dptr,#___fsadd_mant1_65536_21
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r1
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x08
	pop	ar6
	jnc  00157$
00254$:
;	_fsadd.c:227: mant1 <<= 1;
	mov	dptr,#___fsadd_mant1_65536_21
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant1_65536_21
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c:228: exp1--;
	dec	r7
	cjne	r7,#0xff,00255$
	dec	r0
00255$:
;	_fsadd.c:232: while (mant1 & 0xf0000000) {
	sjmp 00123$
00157$:
;	genAssign: resultIsFar = FALSE
	mov	ar2,r7
	mov	ar3,r0
00128$:
	mov	dptr,#___fsadd_mant1_65536_21
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	anl	a,#0xf0
	jz  00163$
00256$:
;	_fsadd.c:233: if (mant1&1)
	mov	dptr,#___fsadd_mant1_65536_21
	movx	a,@dptr
	jnb  acc[0],00127$
00257$:
;	_fsadd.c:234: mant1 += 2;
	mov	dptr,#___fsadd_mant1_65536_21
	movx	a,@dptr
	add	a,#0x02
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00127$:
;	_fsadd.c:235: mant1 >>= 1;
	mov	dptr,#___fsadd_mant1_65536_21
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	c,acc[7]
	rrc	a
	mov	r0,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r7,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r5,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
;	genAssign: resultIsFar = TRUE
	mov  r4,a
	mov  dptr,#___fsadd_mant1_65536_21
	movx @dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_fsadd.c:236: exp1++;
	inc	r2
	cjne	r2,#0x00,00258$
	inc	r3
00258$:
	sjmp 00128$
00163$:
;	genAssign: resultIsFar = TRUE
	mov	ar4,r2
	mov	ar5,r3
;	_fsadd.c:240: mant1 &= ~(HIDDEN<<4);
	mov	dptr,#___fsadd_mant1_65536_21
	mov	dps, #1
	mov	dptr, #___fsadd_sloc2_1_0
	dec	dps
	movx	a,@dptr
	mov	dps,#1
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	anl	a,#0xf7
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	_fsadd.c:243: if (exp1 >= 0x100)
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x81
	jc   00135$
00259$:
;	_fsadd.c:244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	mov	a,r6
	jz  00139$
00260$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0xff
	sjmp 00140$
00139$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0x7f
00140$:
	mov	dptr,#___fsadd_pfl1_65536_21
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	ljmp	00136$
00135$:
;	_fsadd.c:245: else if (exp1 < 0)
	mov	a,r3
	jnb  acc[7],00132$
00261$:
;	_fsadd.c:246: *pfl1 = 0;
	mov	dptr,#___fsadd_pfl1_65536_21
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	ljmp	00136$
00132$:
;	_fsadd.c:248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	mov	a,r6
	jz  00141$
00262$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r7,#0x80
	sjmp 00142$
00141$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00142$:
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	ar0,r4
	mov	a,r5
	anl	a,#0x01
	mov	c,acc[0]
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	clr  a
	mov  r4,a
	mov  r5,a
	mov  a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	dptr,#___fsadd_sloc2_1_0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	jnb	acc[3],00263$
	orl	a,#0xfffffff0
00263$:
	mov	r1,a
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	dptr,#___fsadd_pfl1_65536_21
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00136$:
;	_fsadd.c:249: return (a1);
	mov     dps, #1
	mov     dptr, #___fsadd_a1_65536_20
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
00137$:
;	_fsadd.c:250: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
