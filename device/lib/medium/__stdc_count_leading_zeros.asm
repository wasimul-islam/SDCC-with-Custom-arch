;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_leading_zeros
	.optsdcc -mmcs51 --model-medium
	
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
	.ds 1
___stdc_count_leading_zeros_sloc1_1_0:
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
___stdc_count_leading_zeros_PARM_2:
	.ds 1
___stdc_count_leading_zeros_value_65536_8:
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
;Allocation info for local variables in function '__stdc_count_leading_zeros'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_count_leading_zeros_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_count_leading_zeros_sloc1_1_0'
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
	mov	r0,#___stdc_count_leading_zeros_value_65536_8
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
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	mov	r0,#___stdc_count_leading_zeros_PARM_2
	movx	a,@r0
	mov	r7,a
	dec	a
	mov	r6,a
	mov	___stdc_count_leading_zeros_sloc0_1_0,r6
00105$:
	mov	a,___stdc_count_leading_zeros_sloc0_1_0
	jnb	acc.7,00121$
	ljmp	00103$
00121$:
;	__stdc_count_leading_zeros.c:39: if(value & (1ull << i))
	push	ar7
	mov	r4,___stdc_count_leading_zeros_sloc0_1_0
	mov	b,r4
	inc	b
	mov	___stdc_count_leading_zeros_sloc1_1_0,#0x01
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 1),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 2),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 3),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 4),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 5),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 6),#0x00
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 7),#0x00
	sjmp	00123$
00122$:
	mov	a,___stdc_count_leading_zeros_sloc1_1_0
	add	a,___stdc_count_leading_zeros_sloc1_1_0
	mov	___stdc_count_leading_zeros_sloc1_1_0,a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 1)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 1),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 2)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 2),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 3)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 3),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 4)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 4),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 5)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 5),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 6)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 6),a
	mov	a,(___stdc_count_leading_zeros_sloc1_1_0 + 7)
	rlc	a
	mov	(___stdc_count_leading_zeros_sloc1_1_0 + 7),a
00123$:
	djnz	b,00122$
	mov	r0,#___stdc_count_leading_zeros_value_65536_8
	movx	a,@r0
	anl	___stdc_count_leading_zeros_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 2),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 3),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 4),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 5),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 6),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_leading_zeros_sloc1_1_0 + 7),a
	pop	ar7
	mov	a,___stdc_count_leading_zeros_sloc1_1_0
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 1)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 2)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 3)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 4)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 5)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 6)
	orl	a,(___stdc_count_leading_zeros_sloc1_1_0 + 7)
	jz	00106$
;	__stdc_count_leading_zeros.c:40: return (width - i - 1);
	mov	a,r7
	clr	c
	subb	a,r6
	dec	a
	mov	dpl,a
	ret
00106$:
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	dec	___stdc_count_leading_zeros_sloc0_1_0
	mov	r6,___stdc_count_leading_zeros_sloc0_1_0
	ljmp	00105$
00103$:
;	__stdc_count_leading_zeros.c:41: return width;
	mov	r0,#___stdc_count_leading_zeros_PARM_2
	movx	a,@r0
	mov	dpl,a
;	__stdc_count_leading_zeros.c:42: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
