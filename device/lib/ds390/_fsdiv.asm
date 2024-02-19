;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mds390 --model-flat24
	
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
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv
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
___fsdiv_org_PARM_2:
	.ds 4
___fsdiv_org_fl1_65536_21:
	.ds 4
___fsdiv_org_fl2_65536_21:
	.ds 4
___fsdiv_org_mask_65536_21:
	.ds 4
___fsdiv_org_mant1_65536_21:
	.ds 4
___fsdiv_org_mant2_65536_21:
	.ds 4
___fsdiv_org_sign_65536_21:
	.ds 1
___fsdiv_org_sloc0_1_0:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_f_131072_30:
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
;Allocation info for local variables in function '__fsdiv_org'
;------------------------------------------------------------
;a2                        Allocated with name '___fsdiv_org_PARM_2'
;a1                        Allocated to registers r2 r3 r4 r5 
;fl1                       Allocated with name '___fsdiv_org_fl1_65536_21'
;fl2                       Allocated with name '___fsdiv_org_fl2_65536_21'
;result                    Allocated to registers r4 r5 r6 r7 
;mask                      Allocated with name '___fsdiv_org_mask_65536_21'
;mant1                     Allocated with name '___fsdiv_org_mant1_65536_21'
;mant2                     Allocated with name '___fsdiv_org_mant2_65536_21'
;exp                       Allocated to registers r4 r5 
;sign                      Allocated with name '___fsdiv_org_sign_65536_21'
;diff                      Allocated to registers r6 r7 r4 r5 
;sloc0                     Allocated with name '___fsdiv_org_sloc0_1_0'
;------------------------------------------------------------
;	_fsdiv.c:274: static float __fsdiv_org (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
___fsdiv_org:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	_fsdiv.c:283: fl1.f = a1;
	mov	dptr,#___fsdiv_org_fl1_65536_21
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
;	_fsdiv.c:285: exp = EXP (fl1.l);
	mov	dptr,#___fsdiv_org_fl1_65536_21
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
	mov	ar2,r4
	mov	a,r5
	mov	c,acc[7]
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
;	_fsdiv.c:287: if (!exp)
	clr  a
	mov  r4,a
	mov  r5,a
	mov  r3,a
	orl  a,r2
	jnz  00102$
00174$:
;	_fsdiv.c:288: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00118$
00102$:
;	_fsdiv.c:290: fl2.f = a2;
	mov	dptr,#___fsdiv_org_fl2_65536_21
	mov     dps, #1
	mov     dptr, #___fsdiv_org_PARM_2
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
;	_fsdiv.c:292: exp -= EXP (fl2.l);
	mov	dptr,#___fsdiv_org_fl2_65536_21
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	a,r7
	mov	c,acc[7]
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
;	_fsdiv.c:293: exp += EXCESS;
	mov	a,#0x7e
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
;	_fsdiv.c:296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	mov	dptr,#___fsdiv_org_fl1_65536_21
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov  r7,a
	rl	a
	anl	a,#0x01
	mov	r4,a
	mov	dptr,#___fsdiv_org_fl2_65536_21
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
	mov  r0,a
	rl	a
	anl	a,#0x01
	mov	r5,a
	mov	dptr,#___fsdiv_org_sign_65536_21
	mov	a,r4
	xrl	a,r5
	movx	@dptr,a
;	_fsdiv.c:299: mant1 = MANT (fl1.l);
	mov	dptr,#___fsdiv_org_fl1_65536_21
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
	mov	r0,#0x00
	mov	dptr,#___fsdiv_org_mant1_65536_21
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r7
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_fsdiv.c:300: mant2 = MANT (fl2.l);
	mov	dptr,#___fsdiv_org_fl2_65536_21
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
	mov	r6,#0x00
	mov	dptr,#___fsdiv_org_mant2_65536_21
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c:303: if (mant1 < mant2)
	mov	dptr,#___fsdiv_org_mant2_65536_21
	mov	dps, #1
	mov	dptr, #___fsdiv_org_mant1_65536_21
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00104$
00175$:
;	_fsdiv.c:305: mask = 0x1000000;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_mask_65536_21
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	sjmp 00105$
00104$:
;	_fsdiv.c:309: mask = 0x0800000;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_mask_65536_21
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c:310: exp++;
	inc	r2
	cjne	r2,#0x00,00176$
	inc	r3
00176$:
00105$:
;	_fsdiv.c:313: if (exp < 1) /* denormal */
	clr	c
	mov	a,r2
	subb	a,#0x01
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc  00107$
00177$:
;	_fsdiv.c:314: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00118$
00107$:
;	_fsdiv.c:316: if (exp >= 255)
	clr	c
	mov	a,r2
	subb	a,#0xff
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc   00116$
00178$:
;	_fsdiv.c:318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
	mov	dptr,#___fsdiv_org_sign_65536_21
	movx	a,@dptr
	jz  00120$
00179$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0xff
	sjmp 00121$
00120$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x80
	mov	r5,#0x7f
00121$:
	mov	dptr,#___fsdiv_org_fl1_65536_21
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
	ljmp	00117$
00116$:
;	_fsdiv.c:323: result = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_sloc0_1_0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c:324: do
00110$:
;	_fsdiv.c:326: long diff = mant1 - mant2;
	mov	dptr,#___fsdiv_org_mant2_65536_21
	mov	dps, #1
	mov	dptr, #___fsdiv_org_mant1_65536_21
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	push	acc
	mov	dps,#0
	pop	acc
	mov	r5,a
	pop	acc
	mov	r4,a
	pop	acc
	mov	r7,a
	pop	acc
	mov	r6,a
;	_fsdiv.c:327: if (diff >= 0)
	mov	a,r5
	jb   acc[7],00109$
00180$:
;	_fsdiv.c:329: mant1 = diff;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_mant1_65536_21
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsdiv.c:330: result |= mask;
	mov	dptr,#___fsdiv_org_mask_65536_21
	mov     dps, #1
	mov     dptr, #___fsdiv_org_sloc0_1_0
	movx	a,@dptr
	mov	b,a
	xch	a, acc1
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	mov	a,acc1
	orl	a,b
	inc	dps
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	xch	a, acc1
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	mov	a,acc1
	orl	a,b
	inc	dps
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	xch	a, acc1
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	mov	a,acc1
	orl	a,b
	inc	dps
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	xch	a, acc1
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	mov	a,acc1
	orl	a,b
	inc	dps
	movx	@dptr,a
	mov	dps,#0
00109$:
;	_fsdiv.c:332: mant1 <<= 1;
	mov	dptr,#___fsdiv_org_mant1_65536_21
	movx	a,@dptr
	add	a,acc
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_mant1_65536_21
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_fsdiv.c:333: mask >>= 1;
	mov	dptr,#___fsdiv_org_mask_65536_21
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r7,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r6,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r5,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
;	genAssign: resultIsFar = TRUE
	mov  r4,a
	mov  dptr,#___fsdiv_org_mask_65536_21
	movx @dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_fsdiv.c:335: while (mask);
	mov	dptr,#___fsdiv_org_mask_65536_21
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
	jz	00181$
	ljmp	00110$
00181$:
;	_fsdiv.c:338: if (mant1 >= mant2)
	mov	dptr,#___fsdiv_org_mant2_65536_21
	mov	dps, #1
	mov	dptr, #___fsdiv_org_mant1_65536_21
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00114$
00182$:
;	_fsdiv.c:339: result += 1;
	mov	dptr,#___fsdiv_org_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
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
00114$:
;	_fsdiv.c:341: result &= ~HIDDEN;
	mov	dptr,#___fsdiv_org_sloc0_1_0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x7f
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	_fsdiv.c:344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	mov	dptr,#___fsdiv_org_sign_65536_21
	movx	a,@dptr
	jz  00122$
00183$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_sloc0_1_0
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp 00123$
00122$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_org_sloc0_1_0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00123$:
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	ar0,r2
	mov	a,r3
	anl	a,#0x01
	mov	c,acc[0]
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#___fsdiv_org_sloc0_1_0
	movx	a,@dptr
	orl	ar2,a
	inc	dptr
	movx	a,@dptr
	orl	ar3,a
	inc	dptr
	movx	a,@dptr
	orl	ar0,a
	inc	dptr
	movx	a,@dptr
	orl	ar1,a
	mov	a,r2
	orl	ar4,a
	mov	a,r3
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	dptr,#___fsdiv_org_fl1_65536_21
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00117$:
;	_fsdiv.c:346: return (fl1.f);
	mov	dptr,#___fsdiv_org_fl1_65536_21
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00118$:
;	_fsdiv.c:347: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;a2                        Allocated with name '___fsdiv_PARM_2'
;a1                        Allocated to registers r2 r3 r4 r5 
;p2                        Allocated to registers r6 r7 r0 
;f                         Allocated with name '___fsdiv_f_131072_30'
;p                         Allocated to registers r6 r7 r0 
;------------------------------------------------------------
;	_fsdiv.c:349: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
___fsdiv:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	_fsdiv.c:351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
	inc	dps
	mov	dptr,#___fsdiv_PARM_2
	dec	dps
;	_fsdiv.c:353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
	inc	dps
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	r1,a
	mov	dps,#0
	mov	ar6,r0
	mov	a,r1
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	mov	r7,a
	clr  a
	mov  r0,a
	mov  r1,a
	mov  a,r6
	jz   00124$
00123$:
	ljmp	00108$
00124$:
;	_fsdiv.c:356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
	mov	r6,#___fsdiv_f_131072_30
	mov	r7,#(___fsdiv_f_131072_30 >> 8)
	mov	r0,#(___fsdiv_f_131072_30 >> 16)
;	_fsdiv.c:357: if (a1 > 0.0f)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	___fslt
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00105$
00125$:
;	_fsdiv.c:358: *p = __INFINITY;           // +inf
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x7f
	movx	@dptr,a
	sjmp 00106$
00105$:
;	_fsdiv.c:359: else if (a1 < 0.0f)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,dpl
	jz  00102$
00126$:
;	_fsdiv.c:360: *p = SIGNBIT | __INFINITY; // -inf
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0xff
	movx	@dptr,a
	sjmp 00106$
00102$:
;	_fsdiv.c:362: *p = __NAN;                // nan
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0xc0
	movx	@dptr,a
	inc	dptr
	mov	a,#0xff
	movx	@dptr,a
00106$:
;	_fsdiv.c:363: return f;
	mov     dps, #1
	mov     dptr, #___fsdiv_f_131072_30
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
	sjmp 00109$
00108$:
;	_fsdiv.c:365: return __fsdiv_org (a1, a2);
	mov	dptr,#___fsdiv_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsdiv_org_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsdiv_org
00109$:
;	_fsdiv.c:366: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
