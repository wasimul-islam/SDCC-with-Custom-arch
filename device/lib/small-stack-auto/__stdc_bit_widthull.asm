;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_widthull
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
;Allocation info for local variables in function '__stdc_bit_widthull'
;------------------------------------------------------------
;value                     Allocated to stack - _bp +1
;width                     Allocated to registers r7 
;i                         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	__stdc_bit_widthull.c:37: int_fast8_t __stdc_bit_widthull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_widthull
;	-----------------------------------------
___stdc_bit_widthull:
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
;	__stdc_bit_widthull.c:39: int_fast8_t width = 0;
	mov	r7,#0x00
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	mov	r5,#0x00
00105$:
	cjne	r5,#0x40,00122$
00122$:
	jc	00123$
	ljmp	00103$
00123$:
;	__stdc_bit_widthull.c:41: if(value & (1ull << i))
	push	ar7
	mov	b,r5
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
	sjmp	00125$
00124$:
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
00125$:
	djnz	b,00124$
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
;	__stdc_bit_widthull.c:42: width = (i + 1);
	mov	ar6,r5
	mov	a,r6
	inc	a
	mov	r7,a
00106$:
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inc	r5
	ljmp	00105$
00103$:
;	__stdc_bit_widthull.c:43: return width;
	mov	dpl,r7
;	__stdc_bit_widthull.c:44: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
