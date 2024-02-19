;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_leading_zeros
	.optsdcc -mds390 --model-flat24
	
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
	.globl ___stdc_count_leading_zeros_PARM_2
	.globl ___stdc_count_leading_zeros
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
___stdc_count_leading_zeros_PARM_2:
	.ds 1
___stdc_count_leading_zeros_value_65536_8:
	.ds 8
___stdc_count_leading_zeros_i_131072_10:
	.ds 1
___stdc_count_leading_zeros_sloc0_1_0:
	.ds 1
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
;Allocation info for local variables in function '__stdc_count_leading_zeros'
;------------------------------------------------------------
;width                     Allocated with name '___stdc_count_leading_zeros_PARM_2'
;value                     Allocated with name '___stdc_count_leading_zeros_value_65536_8'
;i                         Allocated with name '___stdc_count_leading_zeros_i_131072_10'
;sloc0                     Allocated with name '___stdc_count_leading_zeros_sloc0_1_0'
;------------------------------------------------------------
;	__stdc_count_leading_zeros.c:36: int_fast8_t __stdc_count_leading_zeros(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_count_leading_zeros
;	-----------------------------------------
___stdc_count_leading_zeros:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #___stdc_count_leading_zeros_value_65536_8
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
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	mov	dptr,#___stdc_count_leading_zeros_PARM_2
	movx	a,@dptr
	mov  r2,a
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___stdc_count_leading_zeros_i_131072_10
	movx	@dptr,a
	mov	dptr,#___stdc_count_leading_zeros_i_131072_10
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#___stdc_count_leading_zeros_sloc0_1_0
	movx	@dptr,a
00105$:
	mov	dptr,#___stdc_count_leading_zeros_sloc0_1_0
	movx	a,@dptr
	jnb	acc[7],00121$
	ljmp	00103$
00121$:
;	__stdc_count_leading_zeros.c:39: if(value & (1ull << i))
	push	ar2
	mov	dptr,#___stdc_count_leading_zeros_sloc0_1_0
	movx	a,@dptr
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x01
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	sjmp	00123$
00122$:
	mov	a,r5
	add	a,acc
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r0
	rlc	a
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
00123$:
	djnz	b,00122$
	mov	dptr,#___stdc_count_leading_zeros_value_65536_8
	movx	a,@dptr
	anl	ar5,a
	inc	dptr
	movx	a,@dptr
	anl	ar6,a
	inc	dptr
	movx	a,@dptr
	anl	ar7,a
	inc	dptr
	movx	a,@dptr
	anl	ar0,a
	inc	dptr
	movx	a,@dptr
	anl	ar1,a
	inc	dptr
	movx	a,@dptr
	anl	ar2,a
	inc	dptr
	movx	a,@dptr
	anl	ar3,a
	inc	dptr
	movx	a,@dptr
	anl	ar4,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	pop	ar2
	jz  00106$
00124$:
;	__stdc_count_leading_zeros.c:40: return (width - i - 1);
	mov	dptr,#___stdc_count_leading_zeros_i_131072_10
	clr	c
	movx	a,@dptr
	mov	b,a
	mov	a,r2
	subb	a,b
	mov	r3,a
	dec	r3
	mov	dpl,r3
	sjmp 00107$
00106$:
;	__stdc_count_leading_zeros.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	mov	dptr,#___stdc_count_leading_zeros_sloc0_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	mov	dptr,#___stdc_count_leading_zeros_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#___stdc_count_leading_zeros_i_131072_10
	movx	@dptr,a
	ljmp	00105$
00103$:
;	__stdc_count_leading_zeros.c:41: return width;
	mov     dps, #1
	mov     dptr, #___stdc_count_leading_zeros_PARM_2
	movx	a,@dptr
	mov	dpl,a
	mov	dps,#0
00107$:
;	__stdc_count_leading_zeros.c:42: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
