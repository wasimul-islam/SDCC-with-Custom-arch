;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
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
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong
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
__rlulonglong_PARM_2:
	.ds 1
__rlulonglong_l_65536_8:
	.ds 8
__rlulonglong_top_65536_9:
	.ds 4
__rlulonglong_middle_65536_9:
	.ds 4
__rlulonglong_bottom_65536_9:
	.ds 4
__rlulonglong_b_65536_9:
	.ds 4
__rlulonglong_sloc0_1_0:
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
;Allocation info for local variables in function '_rlulonglong'
;------------------------------------------------------------
;s                         Allocated with name '__rlulonglong_PARM_2'
;l                         Allocated with name '__rlulonglong_l_65536_8'
;top                       Allocated with name '__rlulonglong_top_65536_9'
;middle                    Allocated with name '__rlulonglong_middle_65536_9'
;bottom                    Allocated with name '__rlulonglong_bottom_65536_9'
;b                         Allocated with name '__rlulonglong_b_65536_9'
;sloc0                     Allocated with name '__rlulonglong_sloc0_1_0'
;------------------------------------------------------------
;	_rlulonglong.c:67: unsigned long long _rlulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
__rlulonglong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #__rlulonglong_l_65536_8
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
;	_rlulonglong.c:69: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
	mov	dptr,#__rlulonglong_top_65536_9
	mov	a,#(__rlulonglong_l_65536_8 + 0x000004)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rlulonglong_l_65536_8 + 0x000004) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rlulonglong_l_65536_8 + 0x000004) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rlulonglong.c:70: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
	mov	dptr,#__rlulonglong_middle_65536_9
	mov	a,#(__rlulonglong_l_65536_8 + 0x000002)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rlulonglong_l_65536_8 + 0x000002) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__rlulonglong_l_65536_8 + 0x000002) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_rlulonglong.c:71: uint32_t *const bottom = (uint32_t *)(&l);
	mov	r6,#__rlulonglong_l_65536_8
	mov	r7,#(__rlulonglong_l_65536_8 >> 8)
	mov	r0,#(__rlulonglong_l_65536_8 >> 16)
	mov	dptr,#__rlulonglong_bottom_65536_9
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
;	_rlulonglong.c:72: uint16_t *const b = (uint16_t *)(&l);
	mov	r6,#__rlulonglong_l_65536_8
	mov	r7,#(__rlulonglong_l_65536_8 >> 8)
	mov	r0,#(__rlulonglong_l_65536_8 >> 16)
	mov	dptr,#__rlulonglong_b_65536_9
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
;	_rlulonglong.c:82: (*top) <<= s;
00103$:
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	dptr,#__rlulonglong_PARM_2
	movx	a,@dptr
	cjne	a,#0x10,00115$
00115$:
	jnc	00116$
	ljmp	00101$
00116$:
;	_rlulonglong.c:76: b[3] = b[2];
	mov	dptr,#__rlulonglong_b_65536_9
	mov	dps, #1
	mov	dptr, #__rlulonglong_sloc0_1_0
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
	mov	dptr,#__rlulonglong_b_65536_9
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
	mov	dptr,#__rlulonglong_sloc0_1_0
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
;	_rlulonglong.c:77: b[2] = b[1];
	mov	dptr,#__rlulonglong_b_65536_9
	mov	dps, #1
	mov	dptr, #__rlulonglong_sloc0_1_0
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
	mov	dptr,#__rlulonglong_sloc0_1_0
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
;	_rlulonglong.c:78: b[1] = b[0];
	mov	dptr,#__rlulonglong_b_65536_9
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
	mov	dptr,#__rlulonglong_sloc0_1_0
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
;	_rlulonglong.c:79: b[0] = 0;
	mov	dptr,#__rlulonglong_b_65536_9
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
	clr  a
	mov  acc1,a
	lcall	__gptrputWord
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	dptr,#__rlulonglong_PARM_2
	movx	a,@dptr
	mov  r2,a
	add	a,#0xf0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__rlulonglong_PARM_2
	movx	@dptr,a
	ljmp	00103$
00101$:
;	_rlulonglong.c:82: (*top) <<= s;
	mov	dptr,#__rlulonglong_top_65536_9
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
	mov	dptr,#__rlulonglong_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	b,r2
	inc	b
	mov	dptr,#__rlulonglong_sloc0_1_0
	mov  a,r6
	movx	@dptr,a
	inc	dptr
	mov  a,r7
	movx	@dptr,a
	inc	dptr
	mov  a,r0
	movx	@dptr,a
	inc	dptr
	mov  a,r1
	movx	@dptr,a
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	sjmp	00118$
00117$:
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	movx	@dptr,a
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
00118$:
	djnz	b,00117$
	mov	dptr,#__rlulonglong_top_65536_9
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
	mov     dps, #1
	mov     dptr, #__rlulonglong_sloc0_1_0
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
;	_rlulonglong.c:83: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	mov	dptr,#__rlulonglong_middle_65536_9
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
	mov	r3,a
	mov	r4,acc1
	mov	r5,#0x00
	mov	r6,#0x00
	mov	b,r2
	inc	b
	sjmp	00120$
00119$:
	mov	a,r3
	add	a,acc
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
00120$:
	djnz	b,00119$
	mov	ar3,r5
	mov	ar4,r6
	mov	r5,#0x00
	mov	r6,#0x00
	mov	dptr,#__rlulonglong_sloc0_1_0
	movx	a,@dptr
	orl	ar3,a
	inc	dptr
	movx	a,@dptr
	orl	ar4,a
	inc	dptr
	movx	a,@dptr
	orl	ar5,a
	inc	dptr
	movx	a,@dptr
	orl	ar6,a
	mov	dptr,#__rlulonglong_top_65536_9
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
	mov	acc1, r3
	mov	a,r4
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r5
	mov	a,r6
	lcall	__gptrputWord
;	_rlulonglong.c:84: (*bottom) <<= s;
	mov	dptr,#__rlulonglong_bottom_65536_9
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
	mov	r3,a
	mov	r4,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r5,a
	mov	r6,acc1
	mov	b,r2
	inc	b
	sjmp	00122$
00121$:
	mov	a,r3
	add	a,acc
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
00122$:
	djnz	b,00121$
	mov	dptr,#__rlulonglong_bottom_65536_9
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
	mov	acc1, r3
	mov	a,r4
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r5
	mov	a,r6
	lcall	__gptrputWord
;	_rlulonglong.c:86: return(l);
	mov     dps, #1
	mov     dptr, #__rlulonglong_l_65536_8
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
;	_rlulonglong.c:87: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
