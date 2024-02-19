;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrslonglong
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
	.globl __rrslonglong_PARM_2
	.globl __rrslonglong
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
__rrslonglong_PARM_2:
	.ds 1
__rrslonglong_l_65536_1:
	.ds 8
__rrslonglong_top_65536_2:
	.ds 4
__rrslonglong_middle_65536_2:
	.ds 4
__rrslonglong_bottom_65536_2:
	.ds 4
__rrslonglong_b_65536_2:
	.ds 4
__rrslonglong_sloc0_1_0:
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
;Allocation info for local variables in function '_rrslonglong'
;------------------------------------------------------------
;s                         Allocated with name '__rrslonglong_PARM_2'
;l                         Allocated with name '__rrslonglong_l_65536_1'
;top                       Allocated with name '__rrslonglong_top_65536_2'
;middle                    Allocated with name '__rrslonglong_middle_65536_2'
;bottom                    Allocated with name '__rrslonglong_bottom_65536_2'
;b                         Allocated with name '__rrslonglong_b_65536_2'
;sloc0                     Allocated with name '__rrslonglong_sloc0_1_0'
;------------------------------------------------------------
;	_rrslonglong.c:41: long long _rrslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
__rrslonglong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #__rrslonglong_l_65536_1
	dec	dps
;	assignResultValue special case for ACC.
	push	acc
	inc	dps
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
	pop	acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dps,#0
;	_rrslonglong.c:43: int32_t *top = (uint32_t *)((char *)(&l) + 0);
	mov	dptr,#__rrslonglong_top_65536_2
	mov	a,#__rrslonglong_l_65536_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(__rrslonglong_l_65536_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(__rrslonglong_l_65536_1 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rrslonglong.c:44: uint32_t *middle = (uint16_t *)((char *)(&l) + 2);
	mov	dptr,#__rrslonglong_middle_65536_2
	mov	a,#(__rrslonglong_l_65536_1 + 0x000002)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rrslonglong_l_65536_1 + 0x000002) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rrslonglong_l_65536_1 + 0x000002) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rrslonglong.c:45: uint32_t *bottom = (uint32_t *)((char *)(&l) + 4);
	mov	dptr,#__rrslonglong_bottom_65536_2
	mov	a,#(__rrslonglong_l_65536_1 + 0x000004)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rrslonglong_l_65536_1 + 0x000004) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rrslonglong_l_65536_1 + 0x000004) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rrslonglong.c:46: uint16_t *b = (uint16_t *)(&l);
	mov	r6,#__rrslonglong_l_65536_1
	mov	r7,#(__rrslonglong_l_65536_1 >> 8)
	mov	r0,#(__rrslonglong_l_65536_1 >> 16)
	mov	dptr,#__rrslonglong_b_65536_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rrslonglong.c:56: (*bottom) >>= s;
00103$:
;	_rrslonglong.c:48: for(;s >= 16; s-= 16)
	mov	dptr,#__rrslonglong_PARM_2
	movx	a,@dptr
	cjne	a,#0x10,00121$
00121$:
	jnc	00122$
	ljmp	00101$
00122$:
;	_rrslonglong.c:50: b[3] = b[2];
	mov	dptr,#__rrslonglong_b_65536_2
	mov	dps, #1
	mov	dptr, #__rrslonglong_sloc0_1_0
	dec	dps
	movx	a,@dptr
	add	a,#0x06
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#__rrslonglong_b_65536_2
	movx	a,@dptr
	add	a,#0x04
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	mov	dptr,#__rrslonglong_sloc0_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
;	_rrslonglong.c:51: b[2] = b[1];
	mov	dptr,#__rrslonglong_b_65536_2
	mov	dps, #1
	mov	dptr, #__rrslonglong_sloc0_1_0
	dec	dps
	movx	a,@dptr
	add	a,#0x02
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#__rrslonglong_sloc0_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
;	_rrslonglong.c:52: b[1] = b[0];
	mov	dptr,#__rrslonglong_b_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	mov	dptr,#__rrslonglong_sloc0_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
;	_rrslonglong.c:53: b[0] = (b[0] & 0x8000) ? 0xffff : 0x000000;
	mov	dptr,#__rrslonglong_b_65536_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#__rrslonglong_b_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	mov	a,r3
	jnb  acc[7],00107$
00123$:
;	genAssign: resultIsFar = FALSE
	mov	r6,#0xff
	mov	r7,#0xff
	sjmp 00108$
00107$:
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r0
	mov	b,r1
	mov	acc1, r6
	mov	a,r7
	lcall	__gptrputWord
;	_rrslonglong.c:48: for(;s >= 16; s-= 16)
	mov	dptr,#__rrslonglong_PARM_2
	movx	a,@dptr
	mov  r6,a
	add	a,#0xf0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__rrslonglong_PARM_2
	movx	@dptr,a
	ljmp	00103$
00101$:
;	_rrslonglong.c:56: (*bottom) >>= s;
	mov	dptr,#__rrslonglong_bottom_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	mov	dptr,#__rrslonglong_PARM_2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	inc	b
	sjmp	00125$
00124$:
	clr	c
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00125$:
	djnz	b,00124$
	mov	dptr,#__rrslonglong_bottom_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r6
	mov	a,r7
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r0
	mov	a,r1
	lcall	__gptrputWord
;	_rrslonglong.c:57: (*middle) |= (((*middle & 0xffff0000ul) >> s) & 0x0000fffful);
	mov	dptr,#__rrslonglong_middle_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	mov	r2,#0x00
	mov	r3,#0x00
	mov	ar4,r0
	mov	ar5,r1
	mov	dptr,#__rrslonglong_PARM_2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	inc	b
	sjmp	00127$
00126$:
	clr	c
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
00127$:
	djnz	b,00126$
	clr  a
	mov  r4,a
	mov  r5,a
	mov  a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	a,r4
	orl	ar0,a
	mov	a,r5
	orl	ar1,a
	mov	dptr,#__rrslonglong_middle_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r6
	mov	a,r7
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r0
	mov	a,r1
	lcall	__gptrputWord
;	_rrslonglong.c:58: (*top) >>= s;
	mov	dptr,#__rrslonglong_top_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	mov	dptr,#__rrslonglong_PARM_2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	inc	b
	mov	a,r5
	rlc	a
	mov	ov,c
	sjmp	00129$
00128$:
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
00129$:
	djnz	b,00128$
	mov	dptr,#__rrslonglong_top_65536_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
;	_rrslonglong.c:60: return(l);
	mov     dps, #1
	mov     dptr, #__rrslonglong_l_65536_1
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
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dps,#0
	pop	acc
00105$:
;	_rrslonglong.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
