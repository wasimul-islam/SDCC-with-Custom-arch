;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlslonglong
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong_PARM_2
	.globl __rlslonglong
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
__rlslonglong_sloc0_1_0:
	.ds 8
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
__rlslonglong_PARM_2:
	.ds 1
__rlslonglong_l_65536_1:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;Allocation info for local variables in function '_rlslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__rlslonglong_sloc0_1_0'
;------------------------------------------------------------
;	_rlslonglong.c:39: long long _rlslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
__rlslonglong:
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
	mov	r0,#__rlslonglong_l_65536_1
	pop	acc
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	_rlslonglong.c:41: return((unsigned long long)(l) << s);
	mov	r0,#__rlslonglong_l_65536_1
	movx	a,@r0
	mov	__rlslonglong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 3),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 4),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 5),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 6),a
	inc	r0
	movx	a,@r0
	mov	(__rlslonglong_sloc0_1_0 + 7),a
	mov	r0,#__rlslonglong_PARM_2
	movx	a,@r0
	mov	r7,a
	mov	b,r7
	inc	b
	sjmp	00104$
00103$:
	mov	a,__rlslonglong_sloc0_1_0
	add	a,__rlslonglong_sloc0_1_0
	mov	__rlslonglong_sloc0_1_0,a
	mov	a,(__rlslonglong_sloc0_1_0 + 1)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 1),a
	mov	a,(__rlslonglong_sloc0_1_0 + 2)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 2),a
	mov	a,(__rlslonglong_sloc0_1_0 + 3)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 3),a
	mov	a,(__rlslonglong_sloc0_1_0 + 4)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 4),a
	mov	a,(__rlslonglong_sloc0_1_0 + 5)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 5),a
	mov	a,(__rlslonglong_sloc0_1_0 + 6)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 6),a
	mov	a,(__rlslonglong_sloc0_1_0 + 7)
	rlc	a
	mov	(__rlslonglong_sloc0_1_0 + 7),a
00104$:
	djnz	b,00103$
	mov	dpl,__rlslonglong_sloc0_1_0
	mov	dph,(__rlslonglong_sloc0_1_0 + 1)
	mov	b,(__rlslonglong_sloc0_1_0 + 2)
	mov	a,(__rlslonglong_sloc0_1_0 + 3)
	mov	r4,(__rlslonglong_sloc0_1_0 + 4)
	mov	r5,(__rlslonglong_sloc0_1_0 + 5)
	mov	r6,(__rlslonglong_sloc0_1_0 + 6)
	mov	r7,(__rlslonglong_sloc0_1_0 + 7)
;	_rlslonglong.c:42: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
