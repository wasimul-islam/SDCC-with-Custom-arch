;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mmcs51 --model-large
	
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
	.area	OSEG    (OVR,DATA)
___stdc_bit_widthull_sloc0_1_0:
	.ds 1
___stdc_bit_widthull_sloc1_1_0:
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___stdc_bit_widthull_value_65536_9:
	.ds 8
___stdc_bit_widthull_width_65536_10:
	.ds 1
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
;value                     Allocated with name '___stdc_bit_widthull_value_65536_9'
;width                     Allocated with name '___stdc_bit_widthull_width_65536_10'
;i                         Allocated with name '___stdc_bit_widthull_i_131072_11'
;sloc0                     Allocated with name '___stdc_bit_widthull_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_bit_widthull_sloc1_1_0'
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___stdc_bit_widthull_value_65536_9
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
;	__stdc_bit_widthull.c:39: int_fast8_t width = 0;
	mov	dptr,#___stdc_bit_widthull_width_65536_10
	clr	a
	movx	@dptr,a
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	mov	dptr,#___stdc_bit_widthull_value_65536_9
	movx	a,@dptr
	mov	___stdc_bit_widthull_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_widthull_sloc1_1_0 + 7),a
	mov	___stdc_bit_widthull_sloc0_1_0,#0x00
00105$:
	mov	a,#0x100 - 0x40
	add	a,___stdc_bit_widthull_sloc0_1_0
	jc	00103$
;	__stdc_bit_widthull.c:41: if(value & (1ull << i))
	mov	b,___stdc_bit_widthull_sloc0_1_0
	inc	b
	mov	r0,#0x01
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00124$
00123$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
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
00124$:
	djnz	b,00123$
	mov	a,___stdc_bit_widthull_sloc1_1_0
	anl	ar0,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 1)
	anl	ar1,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 2)
	anl	ar2,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 3)
	anl	ar3,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 4)
	anl	ar4,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 5)
	anl	ar5,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 6)
	anl	ar6,a
	mov	a,(___stdc_bit_widthull_sloc1_1_0 + 7)
	anl	ar7,a
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	__stdc_bit_widthull.c:42: width = (i + 1);
	mov	r7,___stdc_bit_widthull_sloc0_1_0
	mov	dptr,#___stdc_bit_widthull_width_65536_10
	mov	a,r7
	inc	a
	movx	@dptr,a
00106$:
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inc	___stdc_bit_widthull_sloc0_1_0
	sjmp	00105$
00103$:
;	__stdc_bit_widthull.c:43: return width;
	mov	dptr,#___stdc_bit_widthull_width_65536_10
	movx	a,@dptr
;	__stdc_bit_widthull.c:44: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
