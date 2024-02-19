;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_first_leading_one
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_first_leading_one
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
;Allocation info for local variables in function '__stdc_first_leading_one'
;------------------------------------------------------------
;width                     Allocated to stack - _bp -3
;value                     Allocated to stack - _bp +1
;i                         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +10
;sloc1                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	__stdc_first_leading_one.c:36: int_fast8_t __stdc_first_leading_one(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_first_leading_one
;	-----------------------------------------
___stdc_first_leading_one:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	__stdc_first_leading_one.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	mov	r7,a
	dec	a
	mov	r5,a
	mov	r6,a
00105$:
	mov	a,r6
	jnb	acc.7,00121$
	ljmp	00103$
00121$:
;	__stdc_first_leading_one.c:39: if(value & (1ull << i))
	push	ar7
	mov	ar4,r6
	mov	b,r4
	inc	b
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	sjmp	00123$
00122$:
	mov	a,@r0
	add	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
00123$:
	djnz	b,00122$
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	anl	a,@r1
	mov	@r1,a
	pop	ar7
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	__stdc_first_leading_one.c:40: return (width - i);
	mov	a,r7
	clr	c
	subb	a,r5
	mov	r6,a
	mov	dpl,a
	sjmp	00107$
00106$:
;	__stdc_first_leading_one.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	dec	r6
	mov	ar5,r6
	ljmp	00105$
00103$:
;	__stdc_first_leading_one.c:41: return 0;
	mov	dpl,#0x00
00107$:
;	__stdc_first_leading_one.c:42: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
