;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _slonglong2fs
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slonglong2fs
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
___slonglong2fs_sloc0_1_0:
	.ds 8
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
___slonglong2fs_sll_65536_20:
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
;Allocation info for local variables in function '__slonglong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___slonglong2fs_sloc0_1_0'
;sll                       Allocated with name '___slonglong2fs_sll_65536_20'
;------------------------------------------------------------
;	_slonglong2fs.c:36: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED {
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
___slonglong2fs:
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
	mov	dptr,#___slonglong2fs_sll_65536_20
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
;	_slonglong2fs.c:37: if (sll<0) 
	mov	dptr,#___slonglong2fs_sll_65536_20
	movx	a,@dptr
	mov	___slonglong2fs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___slonglong2fs_sloc0_1_0 + 7),a
	jnb	acc.7,00102$
;	_slonglong2fs.c:38: return -__ulonglong2fs(-sll);
	clr	c
	clr	a
	subb	a,___slonglong2fs_sloc0_1_0
	mov	r0,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 1)
	mov	r1,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 2)
	mov	r2,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 3)
	mov	r3,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 4)
	mov	r4,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 5)
	mov	r5,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 6)
	mov	r6,a
	clr	a
	subb	a,(___slonglong2fs_sloc0_1_0 + 7)
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___ulonglong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	cpl	acc.7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00102$:
;	_slonglong2fs.c:40: return __ulonglong2fs(sll);
	mov	dpl,___slonglong2fs_sloc0_1_0
	mov	dph,(___slonglong2fs_sloc0_1_0 + 1)
	mov	b,(___slonglong2fs_sloc0_1_0 + 2)
	mov	a,(___slonglong2fs_sloc0_1_0 + 3)
	mov	r4,(___slonglong2fs_sloc0_1_0 + 4)
	mov	r5,(___slonglong2fs_sloc0_1_0 + 5)
	mov	r6,(___slonglong2fs_sloc0_1_0 + 6)
	mov	r7,(___slonglong2fs_sloc0_1_0 + 7)
;	_slonglong2fs.c:41: }
	ljmp	___ulonglong2fs
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
