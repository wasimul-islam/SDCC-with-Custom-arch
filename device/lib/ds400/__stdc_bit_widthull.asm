;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mds400 --model-flat24
	
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
	.globl ___stdc_bit_widthull
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
	.area REG_BANK_3	(REL,OVR,DATA)
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
___stdc_bit_widthull_value_65536_9:
	.ds 8
___stdc_bit_widthull_width_65536_10:
	.ds 1
___stdc_bit_widthull_sloc0_1_0:
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
;Allocation info for local variables in function '__stdc_bit_widthull'
;------------------------------------------------------------
;value                     Allocated with name '___stdc_bit_widthull_value_65536_9'
;width                     Allocated with name '___stdc_bit_widthull_width_65536_10'
;i                         Allocated to registers 
;sloc0                     Allocated with name '___stdc_bit_widthull_sloc0_1_0'
;------------------------------------------------------------
;	__stdc_bit_widthull.c:37: int_fast8_t __stdc_bit_widthull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_widthull
;	-----------------------------------------
___stdc_bit_widthull:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #___stdc_bit_widthull_value_65536_9
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
;	__stdc_bit_widthull.c:39: int_fast8_t width = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___stdc_bit_widthull_width_65536_10
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#___stdc_bit_widthull_sloc0_1_0
	movx  @dptr,a
00105$:
	mov	dptr,#___stdc_bit_widthull_sloc0_1_0
	movx	a,@dptr
	cjne	a,#0x40,00122$
00122$:
	jc	00123$
	ljmp	00103$
00123$:
;	__stdc_bit_widthull.c:41: if(value & (1ull << i))
	mov	dptr,#___stdc_bit_widthull_sloc0_1_0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	sjmp	00125$
00124$:
	mov	a,r3
	add	a,acc
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
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
00125$:
	djnz	b,00124$
	mov	dptr,#___stdc_bit_widthull_value_65536_9
	movx	a,@dptr
	anl	ar3,a
	inc	dptr
	movx	a,@dptr
	anl	ar4,a
	inc	dptr
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
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r0
	orl	a,r1
	orl	a,r2
	jz  00106$
00126$:
;	__stdc_bit_widthull.c:42: width = (i + 1);
	mov	dptr,#___stdc_bit_widthull_sloc0_1_0
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___stdc_bit_widthull_width_65536_10
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
00106$:
;	__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	mov	dptr,#___stdc_bit_widthull_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00105$
00103$:
;	__stdc_bit_widthull.c:43: return width;
	mov     dps, #1
	mov     dptr, #___stdc_bit_widthull_width_65536_10
	movx	a,@dptr
	mov	dpl,a
	mov	dps,#0
00107$:
;	__stdc_bit_widthull.c:44: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
