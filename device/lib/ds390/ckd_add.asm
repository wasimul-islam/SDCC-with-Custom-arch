;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_add
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
	.globl ___ckd_add_ulong_PARM_3
	.globl ___ckd_add_ulong_PARM_2
	.globl ___ckd_add_long_PARM_3
	.globl ___ckd_add_long_PARM_2
	.globl ___ckd_add_uint_PARM_3
	.globl ___ckd_add_uint_PARM_2
	.globl ___ckd_add_int_PARM_3
	.globl ___ckd_add_int_PARM_2
	.globl ___ckd_add_ushort_PARM_3
	.globl ___ckd_add_ushort_PARM_2
	.globl ___ckd_add_short_PARM_3
	.globl ___ckd_add_short_PARM_2
	.globl ___ckd_add_uchar_PARM_3
	.globl ___ckd_add_uchar_PARM_2
	.globl ___ckd_add_schar_PARM_3
	.globl ___ckd_add_schar_PARM_2
	.globl ___ckd_add_schar
	.globl ___ckd_add_uchar
	.globl ___ckd_add_short
	.globl ___ckd_add_ushort
	.globl ___ckd_add_int
	.globl ___ckd_add_uint
	.globl ___ckd_add_long
	.globl ___ckd_add_ulong
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
___ckd_add_schar_sloc0_1_0:
	.ds 1
___ckd_add_uchar_sloc0_1_0:
	.ds 1
___ckd_add_short_sloc0_1_0:
	.ds 1
___ckd_add_ushort_sloc0_1_0:
	.ds 1
___ckd_add_int_sloc0_1_0:
	.ds 1
___ckd_add_uint_sloc0_1_0:
	.ds 1
___ckd_add_long_sloc0_1_0:
	.ds 1
___ckd_add_ulong_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___ckd_add_schar_PARM_2:
	.ds 8
___ckd_add_schar_PARM_3:
	.ds 8
___ckd_add_schar_r_65536_9:
	.ds 4
___ckd_add_schar_result_65536_10:
	.ds 8
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_uchar_r_65536_11:
	.ds 4
___ckd_add_uchar_result_65536_12:
	.ds 8
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_short_r_65536_13:
	.ds 4
___ckd_add_short_result_65536_14:
	.ds 8
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_ushort_r_65536_15:
	.ds 4
___ckd_add_ushort_result_65536_16:
	.ds 8
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_int_r_65536_17:
	.ds 4
___ckd_add_int_result_65536_18:
	.ds 8
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_uint_r_65536_19:
	.ds 4
___ckd_add_uint_result_65536_20:
	.ds 8
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_long_r_65536_21:
	.ds 4
___ckd_add_long_result_65536_22:
	.ds 8
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
	.ds 8
___ckd_add_ulong_r_65536_23:
	.ds 4
___ckd_add_ulong_result_65536_24:
	.ds 8
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
;Allocation info for local variables in function '__ckd_add_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_schar_PARM_2'
;b                         Allocated with name '___ckd_add_schar_PARM_3'
;r                         Allocated with name '___ckd_add_schar_r_65536_9'
;result                    Allocated with name '___ckd_add_schar_result_65536_10'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:51: inline _Bool __ckd_add_schar __CKD_DEFAULT_IMPL(signed char, +)
;	-----------------------------------------
;	 function __ckd_add_schar
;	-----------------------------------------
___ckd_add_schar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___ckd_add_schar_r_65536_9
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
	mov	dps, #1
	mov	dptr, #___ckd_add_schar_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_schar_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_schar_result_65536_10
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_schar_result_65536_10
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_add_schar_r_65536_9
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov  a,r2
	lcall __gptrput
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	dptr,#___ckd_add_schar_result_65536_10
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_schar_sloc0_1_0,c
	cpl	___ckd_add_schar_sloc0_1_0
	mov	c,___ckd_add_schar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uchar_PARM_2'
;b                         Allocated with name '___ckd_add_uchar_PARM_3'
;r                         Allocated with name '___ckd_add_uchar_r_65536_11'
;result                    Allocated with name '___ckd_add_uchar_result_65536_12'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:52: inline _Bool __ckd_add_uchar __CKD_DEFAULT_IMPL(unsigned char, +)
;	-----------------------------------------
;	 function __ckd_add_uchar
;	-----------------------------------------
___ckd_add_uchar:
	mov     dps, #1
	mov     dptr, #___ckd_add_uchar_r_65536_11
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
	mov	dps, #1
	mov	dptr, #___ckd_add_uchar_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_uchar_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_uchar_result_65536_12
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_uchar_result_65536_12
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_add_uchar_r_65536_11
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r2
	lcall	__gptrput
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___ckd_add_uchar_result_65536_12
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_uchar_sloc0_1_0,c
	cpl	___ckd_add_uchar_sloc0_1_0
	mov	c,___ckd_add_uchar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_short_PARM_2'
;b                         Allocated with name '___ckd_add_short_PARM_3'
;r                         Allocated with name '___ckd_add_short_r_65536_13'
;result                    Allocated with name '___ckd_add_short_result_65536_14'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:53: inline _Bool __ckd_add_short __CKD_DEFAULT_IMPL(short, +)
;	-----------------------------------------
;	 function __ckd_add_short
;	-----------------------------------------
___ckd_add_short:
	mov     dps, #1
	mov     dptr, #___ckd_add_short_r_65536_13
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
	mov	dps, #1
	mov	dptr, #___ckd_add_short_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_short_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_short_result_65536_14
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_short_result_65536_14
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_add_short_r_65536_13
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	dptr,#___ckd_add_short_result_65536_14
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_short_sloc0_1_0,c
	cpl	___ckd_add_short_sloc0_1_0
	mov	c,___ckd_add_short_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ushort_PARM_2'
;b                         Allocated with name '___ckd_add_ushort_PARM_3'
;r                         Allocated with name '___ckd_add_ushort_r_65536_15'
;result                    Allocated with name '___ckd_add_ushort_result_65536_16'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:54: inline _Bool __ckd_add_ushort __CKD_DEFAULT_IMPL(unsigned short, +)
;	-----------------------------------------
;	 function __ckd_add_ushort
;	-----------------------------------------
___ckd_add_ushort:
	mov     dps, #1
	mov     dptr, #___ckd_add_ushort_r_65536_15
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
	mov	dps, #1
	mov	dptr, #___ckd_add_ushort_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_ushort_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_ushort_result_65536_16
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_ushort_result_65536_16
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_add_ushort_r_65536_15
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___ckd_add_ushort_result_65536_16
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_ushort_sloc0_1_0,c
	cpl	___ckd_add_ushort_sloc0_1_0
	mov	c,___ckd_add_ushort_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_int_PARM_2'
;b                         Allocated with name '___ckd_add_int_PARM_3'
;r                         Allocated with name '___ckd_add_int_r_65536_17'
;result                    Allocated with name '___ckd_add_int_result_65536_18'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:55: inline _Bool __ckd_add_int __CKD_DEFAULT_IMPL(int, +)
;	-----------------------------------------
;	 function __ckd_add_int
;	-----------------------------------------
___ckd_add_int:
	mov     dps, #1
	mov     dptr, #___ckd_add_int_r_65536_17
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
	mov	dps, #1
	mov	dptr, #___ckd_add_int_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_int_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_int_result_65536_18
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_int_result_65536_18
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_add_int_r_65536_17
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	dptr,#___ckd_add_int_result_65536_18
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_int_sloc0_1_0,c
	cpl	___ckd_add_int_sloc0_1_0
	mov	c,___ckd_add_int_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uint_PARM_2'
;b                         Allocated with name '___ckd_add_uint_PARM_3'
;r                         Allocated with name '___ckd_add_uint_r_65536_19'
;result                    Allocated with name '___ckd_add_uint_result_65536_20'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:56: inline _Bool __ckd_add_uint __CKD_DEFAULT_IMPL(unsigned int, +)
;	-----------------------------------------
;	 function __ckd_add_uint
;	-----------------------------------------
___ckd_add_uint:
	mov     dps, #1
	mov     dptr, #___ckd_add_uint_r_65536_19
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
	mov	dps, #1
	mov	dptr, #___ckd_add_uint_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_uint_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_uint_result_65536_20
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_uint_result_65536_20
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_add_uint_r_65536_19
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___ckd_add_uint_result_65536_20
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_uint_sloc0_1_0,c
	cpl	___ckd_add_uint_sloc0_1_0
	mov	c,___ckd_add_uint_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_long_PARM_2'
;b                         Allocated with name '___ckd_add_long_PARM_3'
;r                         Allocated with name '___ckd_add_long_r_65536_21'
;result                    Allocated with name '___ckd_add_long_result_65536_22'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:57: inline _Bool __ckd_add_long __CKD_DEFAULT_IMPL(long, +)
;	-----------------------------------------
;	 function __ckd_add_long
;	-----------------------------------------
___ckd_add_long:
	mov     dps, #1
	mov     dptr, #___ckd_add_long_r_65536_21
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
	mov	dps, #1
	mov	dptr, #___ckd_add_long_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_long_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_long_result_65536_22
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_long_result_65536_22
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
	mov	dptr,#___ckd_add_long_r_65536_21
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	dptr,#___ckd_add_long_result_65536_22
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_long_sloc0_1_0,c
	cpl	___ckd_add_long_sloc0_1_0
	mov	c,___ckd_add_long_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ulong_PARM_2'
;b                         Allocated with name '___ckd_add_ulong_PARM_3'
;r                         Allocated with name '___ckd_add_ulong_r_65536_23'
;result                    Allocated with name '___ckd_add_ulong_result_65536_24'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:58: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	-----------------------------------------
;	 function __ckd_add_ulong
;	-----------------------------------------
___ckd_add_ulong:
	mov     dps, #1
	mov     dptr, #___ckd_add_ulong_r_65536_23
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
	mov	dps, #1
	mov	dptr, #___ckd_add_ulong_PARM_2
	dec	dps
	mov	dptr, #___ckd_add_ulong_PARM_3
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_add_ulong_result_65536_24
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#___ckd_add_ulong_result_65536_24
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
	mov	dptr,#___ckd_add_ulong_r_65536_23
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___ckd_add_ulong_result_65536_24
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	add	a,#0xff
	mov	___ckd_add_ulong_sloc0_1_0,c
	cpl	___ckd_add_ulong_sloc0_1_0
	mov	c,___ckd_add_ulong_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
