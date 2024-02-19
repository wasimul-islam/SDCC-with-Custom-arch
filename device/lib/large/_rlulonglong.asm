;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong
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
__rlulonglong_sloc0_1_0:
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
__rlulonglong_PARM_2:
	.ds 1
__rlulonglong_l_65536_8:
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
	mov	dptr,#__rlulonglong_l_65536_8
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
;	_rlulonglong.c:69: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;	_rlulonglong.c:70: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	_rlulonglong.c:71: uint32_t *const bottom = (uint32_t *)(&l);
;	_rlulonglong.c:72: uint16_t *const b = (uint16_t *)(&l);
;	_rlulonglong.c:82: (*top) <<= s;
00103$:
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	dptr,#__rlulonglong_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00115$
00115$:
	jc	00101$
;	_rlulonglong.c:76: b[3] = b[2];
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	b,#0x00
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0006)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rlulonglong.c:77: b[2] = b[1];
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rlulonglong.c:78: b[1] = b[0];
	mov	dptr,#__rlulonglong_l_65536_8
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rlulonglong.c:79: b[0] = 0;
	mov	dptr,#__rlulonglong_l_65536_8
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	ar6,r7
	mov	a,r6
	add	a,#0xf0
	mov	dptr,#__rlulonglong_PARM_2
	movx	@dptr,a
	sjmp	00103$
00101$:
;	_rlulonglong.c:82: (*top) <<= s;
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
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
	mov	__rlulonglong_sloc0_1_0,ar3
	mov	(__rlulonglong_sloc0_1_0 + 1),ar4
	mov	(__rlulonglong_sloc0_1_0 + 2),ar5
	mov	(__rlulonglong_sloc0_1_0 + 3),ar6
	sjmp	00118$
00117$:
	mov	a,__rlulonglong_sloc0_1_0
	add	a,__rlulonglong_sloc0_1_0
	mov	__rlulonglong_sloc0_1_0,a
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 1),a
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 2),a
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 3),a
00118$:
	djnz	b,00117$
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	a,__rlulonglong_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	lcall	__gptrput
;	_rlulonglong.c:83: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	r6,#0x00
	mov	b,r7
	inc	b
	sjmp	00120$
00119$:
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r6
	rlc	a
	mov	r6,a
00120$:
	djnz	b,00119$
	mov	ar1,r2
	mov	ar0,r6
	clr	a
	mov	r2,a
	mov	r6,a
	mov	a,__rlulonglong_sloc0_1_0
	orl	ar1,a
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	orl	ar0,a
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	orl	ar6,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	b,#0x00
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	_rlulonglong.c:84: (*bottom) <<= s;
	mov	dptr,#__rlulonglong_l_65536_8
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
	mov	a,r3
	add	a,r3
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
	mov	dptr,#__rlulonglong_l_65536_8
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
;	_rlulonglong.c:86: return(l);
	mov	dptr,#__rlulonglong_l_65536_8
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
;	_rlulonglong.c:87: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
