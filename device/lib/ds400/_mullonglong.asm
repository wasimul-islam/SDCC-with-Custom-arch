;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
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
	.globl __mullonglong_PARM_2
	.globl __mullonglong
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
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ll_65536_1:
	.ds 8
__mullonglong_ret_65536_2:
	.ds 8
__mullonglong_l_196608_4:
	.ds 1
__mullonglong_sloc0_1_0:
	.ds 1
__mullonglong_sloc1_1_0:
	.ds 1
__mullonglong_sloc2_1_0:
	.ds 8
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;lr                        Allocated with name '__mullonglong_PARM_2'
;ll                        Allocated with name '__mullonglong_ll_65536_1'
;ret                       Allocated with name '__mullonglong_ret_65536_2'
;i                         Allocated to registers 
;j                         Allocated to registers 
;l                         Allocated with name '__mullonglong_l_196608_4'
;r                         Allocated to registers r3 
;sloc0                     Allocated with name '__mullonglong_sloc0_1_0'
;sloc1                     Allocated with name '__mullonglong_sloc1_1_0'
;sloc2                     Allocated with name '__mullonglong_sloc2_1_0'
;------------------------------------------------------------
;	_mullonglong.c:39: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #__mullonglong_ll_65536_1
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
;	_mullonglong.c:41: unsigned long long ret = 0ull;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mullonglong_ret_65536_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mullonglong_sloc1_1_0
	clr	a
	movx	@dptr,a
00106$:
;	_mullonglong.c:46: unsigned char l = ll >> (i * 8);
	mov	dptr,#__mullonglong_sloc1_1_0
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	b,r3
	inc	b
	mov	dptr,#__mullonglong_ll_65536_1
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	inc	dptr
	movx	a,@dptr
	mov     r6,a
	inc	dptr
	movx	a,@dptr
	mov     r7,a
	inc	dptr
	movx	a,@dptr
	mov     r0,a
	inc	dptr
	movx	a,@dptr
	mov     r1,a
	inc	dptr
	movx	a,@dptr
	mov     r2,a
	movx	a,@dptr
	rlc	a
	mov	ov,c
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
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
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00129$:
	djnz	b,00128$
	mov	dptr,#__mullonglong_l_196608_4
	mov	a,r3
	movx	@dptr,a
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mullonglong_sloc0_1_0
	clr	a
	movx	@dptr,a
;	_mullonglong.c:54: return(ret);
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
00104$:
	mov	dptr,#__mullonglong_sloc1_1_0
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#__mullonglong_sloc0_1_0
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x08
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00130$
	ljmp	00107$
00130$:
;	_mullonglong.c:49: unsigned char r = lr >> (j * 8);
	mov	dptr,#__mullonglong_sloc0_1_0
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	b,r3
	inc	b
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	inc	dptr
	movx	a,@dptr
	mov     r6,a
	inc	dptr
	movx	a,@dptr
	mov     r7,a
	inc	dptr
	movx	a,@dptr
	mov     r0,a
	inc	dptr
	movx	a,@dptr
	mov     r1,a
	inc	dptr
	movx	a,@dptr
	mov     r2,a
	movx	a,@dptr
	rlc	a
	mov	ov,c
	sjmp	00132$
00131$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
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
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00132$:
	djnz	b,00131$
;	_mullonglong.c:50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	mov	dptr,#__mullonglong_l_196608_4
	movx	a,@dptr
	mov	b,a
	mov	a,r3
	mul	ab
	mov	r3,a
	mov	r2,b
	mov	dptr,#__mullonglong_sloc2_1_0
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
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
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#__mullonglong_sloc0_1_0
	mov	dps, #1
	mov	dptr, #__mullonglong_sloc1_1_0
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r2,a
	mov	dps,#0
	mov	a,r2
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r2,a
	mov	b,r2
	inc	b
	mov	dptr,#__mullonglong_sloc2_1_0
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
	inc	dptr
	movx	a,@dptr
	mov     r6,a
	inc	dptr
	movx	a,@dptr
	mov     r7,a
	inc	dptr
	movx	a,@dptr
	mov     r0,a
	inc	dptr
	movx	a,@dptr
	mov     r1,a
	sjmp	00134$
00133$:
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
00134$:
	djnz	b,00133$
	mov	dptr,#__mullonglong_ret_65536_2
	movx	a,@dptr
	add	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r6
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r7
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r0
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r1
	movx	@dptr,a
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	dptr,#__mullonglong_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00104$
00107$:
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	dptr,#__mullonglong_sloc1_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#__mullonglong_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x08,00135$
00135$:
	jnc	00136$
	ljmp	00106$
00136$:
;	_mullonglong.c:54: return(ret);
	mov     dps, #1
	mov     dptr, #__mullonglong_ret_65536_2
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
00108$:
;	_mullonglong.c:55: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
