;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
	.area	OSEG    (OVR,DATA)
__rrulonglong_sloc0_1_0:
	.ds 4
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
__rrulonglong_PARM_2:
	.ds 1
__rrulonglong_l_65536_1:
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;s                         Allocated with name '__rrulonglong_PARM_2'
;l                         Allocated with name '__rrulonglong_l_65536_1'
;top                       Allocated with name '__rrulonglong_top_65536_2'
;middle                    Allocated with name '__rrulonglong_middle_65536_2'
;bottom                    Allocated with name '__rrulonglong_bottom_65536_2'
;b                         Allocated with name '__rrulonglong_b_65536_2'
;sloc0                     Allocated with name '__rrulonglong_sloc0_1_0'
;------------------------------------------------------------
;	_rrulonglong.c:41: unsigned long long _rrulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
__rrulonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#__rrulonglong_l_65536_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_rrulonglong.c:43: uint32_t *const top = (uint32_t *)((char *)(&l) + 0);
;	_rrulonglong.c:44: uint32_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	_rrulonglong.c:45: uint32_t *const bottom = (uint32_t *)((char *)(&l) + 4);
;	_rrulonglong.c:46: uint16_t *const b = (uint16_t *)(&l);
;	_rrulonglong.c:56: (*bottom) >>= s;
00103$:
;	_rrulonglong.c:48: for(;s >= 16; s -= 16)
	mov	dptr,#__rrulonglong_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00115$
00115$:
	jc	00101$
;	_rrulonglong.c:50: b[3] = b[2];
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	b,#0x00
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0006)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rrulonglong.c:51: b[2] = b[1];
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rrulonglong.c:52: b[1] = b[0];
	mov	dptr,#__rrulonglong_l_65536_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rrulonglong.c:53: b[0] = 0x000000;
	mov	dptr,#__rrulonglong_l_65536_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_rrulonglong.c:48: for(;s >= 16; s -= 16)
	mov	ar6,r7
	mov	a,r6
	add	a,#0xf0
	mov	dptr,#__rrulonglong_PARM_2
	movx	@dptr,a
	sjmp	00103$
00101$:
;	_rrulonglong.c:56: (*bottom) >>= s;
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	b,#0x00
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	b,r7
	inc	b
	sjmp	00118$
00117$:
	clr	c
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
00118$:
	djnz	b,00117$
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rrulonglong.c:57: (*middle) |= (((*middle & 0xffff0000ul) >> s) & 0x0000fffful);
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	lcall	__gptrget
	mov	__rrulonglong_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(__rrulonglong_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(__rrulonglong_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(__rrulonglong_sloc0_1_0 + 3),a
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,(__rrulonglong_sloc0_1_0 + 2)
	mov	r6,(__rrulonglong_sloc0_1_0 + 3)
	mov	b,r7
	inc	b
	sjmp	00120$
00119$:
	clr	c
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00120$:
	djnz	b,00119$
	clr	a
	mov	r2,a
	mov	r6,a
	mov	a,__rrulonglong_sloc0_1_0
	orl	ar0,a
	mov	a,(__rrulonglong_sloc0_1_0 + 1)
	orl	ar1,a
	mov	a,(__rrulonglong_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(__rrulonglong_sloc0_1_0 + 3)
	orl	ar6,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	mov	b,#0x00
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rrulonglong.c:58: (*top) >>= s;
	mov	dptr,#__rrulonglong_l_65536_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	b,r7
	inc	b
	sjmp	00122$
00121$:
	clr	c
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
00122$:
	djnz	b,00121$
	mov	dptr,#__rrulonglong_l_65536_1
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	_rrulonglong.c:60: return(l);
	mov	dptr,#__rrulonglong_l_65536_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	_rrulonglong.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
