;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_leading_zeros
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_count_leading_zeros_PARM_2
	.globl ___stdc_count_leading_zeros
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
___stdc_count_leading_zeros_sloc0_1_0:
	.ds 8
___stdc_count_leading_zeros_sloc1_1_0:
	.ds 1
___stdc_count_leading_zeros_sloc2_1_0:
	.ds 1
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
___stdc_count_leading_zeros_PARM_2:
	.ds 1
___stdc_count_leading_zeros_value_65536_8:
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
;Allocation info for local variables in function '__stdc_count_leading_zeros'
;------------------------------------------------------------
;width                     Allocated with name '___stdc_count_leading_zeros_PARM_2'
;value                     Allocated with name '___stdc_count_leading_zeros_value_65536_8'
;i                         Allocated with name '___stdc_count_leading_zeros_i_131072_10'
;sloc0                     Allocated with name '___stdc_count_leading_zeros_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_count_leading_zeros_sloc1_1_0'
;sloc2                     Allocated with name '___stdc_count_leading_zeros_sloc2_1_0'
;------------------------------------------------------------
;	__stdc_count_leading_zeros.c:36: int_fast8_t __stdc_count_leading_zeros(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_count_leading_zeros
;	-----------------------------------------
___stdc_count_leading_zeros:
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
	mov	dptr,#___stdc_count_leading_zeros_value_65536_8
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
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	mov	dptr,#___stdc_count_leading_zeros_PARM_2
	movx	a,@dptr
	mov	___stdc_count_leading_zeros_sloc1_1_0,a
	mov	a,___stdc_count_leading_zeros_sloc1_1_0
	mov	r6,a
	dec	a
	mov	___stdc_count_leading_zeros_sloc2_1_0,a
	mov	dptr,#___stdc_count_leading_zeros_value_65536_8
	movx	a,@dptr
	mov	___stdc_count_leading_zeros_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_count_leading_zeros_sloc0_1_0 + 7),a
00105$:
	mov	a,___stdc_count_leading_zeros_sloc2_1_0
	jb	acc.7,00103$
;	__stdc_count_leading_zeros.c:39: if(value & (1ull << i))
	push	ar6
	mov	r4,___stdc_count_leading_zeros_sloc2_1_0
	mov	b,r4
	inc	b
	mov	r0,#0x01
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00123$
00122$:
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
00123$:
	djnz	b,00122$
	mov	a,___stdc_count_leading_zeros_sloc0_1_0
	anl	ar0,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 1)
	anl	ar1,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 2)
	anl	ar2,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 3)
	anl	ar3,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 4)
	anl	ar4,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 5)
	anl	ar5,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 6)
	anl	ar6,a
	mov	a,(___stdc_count_leading_zeros_sloc0_1_0 + 7)
	anl	ar7,a
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	pop	ar6
	jz	00106$
;	__stdc_count_leading_zeros.c:40: return (width - i - 1);
	mov	a,r6
	clr	c
	subb	a,___stdc_count_leading_zeros_sloc2_1_0
	dec	a
	mov	dpl,a
	ret
00106$:
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	dec	___stdc_count_leading_zeros_sloc2_1_0
	sjmp	00105$
00103$:
;	__stdc_count_leading_zeros.c:41: return width;
	mov	dpl,___stdc_count_leading_zeros_sloc1_1_0
;	__stdc_count_leading_zeros.c:42: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
