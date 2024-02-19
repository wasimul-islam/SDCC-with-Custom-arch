;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
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
	.globl ___ckd_sub_ulong_PARM_3
	.globl ___ckd_sub_ulong_PARM_2
	.globl ___ckd_sub_long_PARM_3
	.globl ___ckd_sub_long_PARM_2
	.globl ___ckd_sub_uint_PARM_3
	.globl ___ckd_sub_uint_PARM_2
	.globl ___ckd_sub_int_PARM_3
	.globl ___ckd_sub_int_PARM_2
	.globl ___ckd_sub_ushort_PARM_3
	.globl ___ckd_sub_ushort_PARM_2
	.globl ___ckd_sub_short_PARM_3
	.globl ___ckd_sub_short_PARM_2
	.globl ___ckd_sub_uchar_PARM_3
	.globl ___ckd_sub_uchar_PARM_2
	.globl ___ckd_sub_schar_PARM_3
	.globl ___ckd_sub_schar_PARM_2
	.globl ___ckd_sub_schar
	.globl ___ckd_sub_uchar
	.globl ___ckd_sub_short
	.globl ___ckd_sub_ushort
	.globl ___ckd_sub_int
	.globl ___ckd_sub_uint
	.globl ___ckd_sub_long
	.globl ___ckd_sub_ulong
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
___ckd_sub_schar_sloc0_1_0:
	.ds 1
___ckd_sub_uchar_sloc0_1_0:
	.ds 1
___ckd_sub_short_sloc0_1_0:
	.ds 1
___ckd_sub_ushort_sloc0_1_0:
	.ds 1
___ckd_sub_int_sloc0_1_0:
	.ds 1
___ckd_sub_uint_sloc0_1_0:
	.ds 1
___ckd_sub_long_sloc0_1_0:
	.ds 1
___ckd_sub_ulong_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___ckd_sub_schar_PARM_2:
	.ds 8
___ckd_sub_schar_PARM_3:
	.ds 8
___ckd_sub_schar_r_65536_25:
	.ds 4
___ckd_sub_schar_result_65536_26:
	.ds 8
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_uchar_r_65536_27:
	.ds 4
___ckd_sub_uchar_result_65536_28:
	.ds 8
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_short_r_65536_29:
	.ds 4
___ckd_sub_short_result_65536_30:
	.ds 8
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_ushort_r_65536_31:
	.ds 4
___ckd_sub_ushort_result_65536_32:
	.ds 8
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_int_r_65536_33:
	.ds 4
___ckd_sub_int_result_65536_34:
	.ds 8
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_uint_r_65536_35:
	.ds 4
___ckd_sub_uint_result_65536_36:
	.ds 8
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_long_r_65536_37:
	.ds 4
___ckd_sub_long_result_65536_38:
	.ds 8
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
	.ds 8
___ckd_sub_ulong_r_65536_39:
	.ds 4
___ckd_sub_ulong_result_65536_40:
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_schar_PARM_2'
;b                         Allocated with name '___ckd_sub_schar_PARM_3'
;r                         Allocated with name '___ckd_sub_schar_r_65536_25'
;result                    Allocated with name '___ckd_sub_schar_result_65536_26'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:60: inline _Bool __ckd_sub_schar __CKD_DEFAULT_IMPL(signed char, -)
;	-----------------------------------------
;	 function __ckd_sub_schar
;	-----------------------------------------
___ckd_sub_schar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___ckd_sub_schar_r_65536_25
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
	mov	dptr, #___ckd_sub_schar_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_schar_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_schar_result_65536_26
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
	mov	dptr,#___ckd_sub_schar_result_65536_26
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_sub_schar_r_65536_25
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
	mov	dptr,#___ckd_sub_schar_result_65536_26
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
	mov	___ckd_sub_schar_sloc0_1_0,c
	cpl	___ckd_sub_schar_sloc0_1_0
	mov	c,___ckd_sub_schar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uchar_PARM_2'
;b                         Allocated with name '___ckd_sub_uchar_PARM_3'
;r                         Allocated with name '___ckd_sub_uchar_r_65536_27'
;result                    Allocated with name '___ckd_sub_uchar_result_65536_28'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
___ckd_sub_uchar:
	mov     dps, #1
	mov     dptr, #___ckd_sub_uchar_r_65536_27
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
	mov	dptr, #___ckd_sub_uchar_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_uchar_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_uchar_result_65536_28
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
	mov	dptr,#___ckd_sub_uchar_result_65536_28
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_sub_uchar_r_65536_27
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
	mov	dptr,#___ckd_sub_uchar_result_65536_28
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
	mov	___ckd_sub_uchar_sloc0_1_0,c
	cpl	___ckd_sub_uchar_sloc0_1_0
	mov	c,___ckd_sub_uchar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_short_PARM_2'
;b                         Allocated with name '___ckd_sub_short_PARM_3'
;r                         Allocated with name '___ckd_sub_short_r_65536_29'
;result                    Allocated with name '___ckd_sub_short_result_65536_30'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
___ckd_sub_short:
	mov     dps, #1
	mov     dptr, #___ckd_sub_short_r_65536_29
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
	mov	dptr, #___ckd_sub_short_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_short_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_short_result_65536_30
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
	mov	dptr,#___ckd_sub_short_result_65536_30
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_sub_short_r_65536_29
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
	mov	dptr,#___ckd_sub_short_result_65536_30
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
	mov	___ckd_sub_short_sloc0_1_0,c
	cpl	___ckd_sub_short_sloc0_1_0
	mov	c,___ckd_sub_short_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ushort_PARM_2'
;b                         Allocated with name '___ckd_sub_ushort_PARM_3'
;r                         Allocated with name '___ckd_sub_ushort_r_65536_31'
;result                    Allocated with name '___ckd_sub_ushort_result_65536_32'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
___ckd_sub_ushort:
	mov     dps, #1
	mov     dptr, #___ckd_sub_ushort_r_65536_31
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
	mov	dptr, #___ckd_sub_ushort_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_ushort_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_ushort_result_65536_32
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
	mov	dptr,#___ckd_sub_ushort_result_65536_32
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_sub_ushort_r_65536_31
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
	mov	dptr,#___ckd_sub_ushort_result_65536_32
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
	mov	___ckd_sub_ushort_sloc0_1_0,c
	cpl	___ckd_sub_ushort_sloc0_1_0
	mov	c,___ckd_sub_ushort_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_int_PARM_2'
;b                         Allocated with name '___ckd_sub_int_PARM_3'
;r                         Allocated with name '___ckd_sub_int_r_65536_33'
;result                    Allocated with name '___ckd_sub_int_result_65536_34'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
___ckd_sub_int:
	mov     dps, #1
	mov     dptr, #___ckd_sub_int_r_65536_33
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
	mov	dptr, #___ckd_sub_int_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_int_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_int_result_65536_34
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
	mov	dptr,#___ckd_sub_int_result_65536_34
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_sub_int_r_65536_33
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
	mov	dptr,#___ckd_sub_int_result_65536_34
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
	mov	___ckd_sub_int_sloc0_1_0,c
	cpl	___ckd_sub_int_sloc0_1_0
	mov	c,___ckd_sub_int_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uint_PARM_2'
;b                         Allocated with name '___ckd_sub_uint_PARM_3'
;r                         Allocated with name '___ckd_sub_uint_r_65536_35'
;result                    Allocated with name '___ckd_sub_uint_result_65536_36'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
___ckd_sub_uint:
	mov     dps, #1
	mov     dptr, #___ckd_sub_uint_r_65536_35
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
	mov	dptr, #___ckd_sub_uint_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_uint_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_uint_result_65536_36
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
	mov	dptr,#___ckd_sub_uint_result_65536_36
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_sub_uint_r_65536_35
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
	mov	dptr,#___ckd_sub_uint_result_65536_36
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
	mov	___ckd_sub_uint_sloc0_1_0,c
	cpl	___ckd_sub_uint_sloc0_1_0
	mov	c,___ckd_sub_uint_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_long_PARM_2'
;b                         Allocated with name '___ckd_sub_long_PARM_3'
;r                         Allocated with name '___ckd_sub_long_r_65536_37'
;result                    Allocated with name '___ckd_sub_long_result_65536_38'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
___ckd_sub_long:
	mov     dps, #1
	mov     dptr, #___ckd_sub_long_r_65536_37
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
	mov	dptr, #___ckd_sub_long_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_long_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_long_result_65536_38
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
	mov	dptr,#___ckd_sub_long_result_65536_38
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
	mov	dptr,#___ckd_sub_long_r_65536_37
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
	mov	dptr,#___ckd_sub_long_result_65536_38
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
	mov	___ckd_sub_long_sloc0_1_0,c
	cpl	___ckd_sub_long_sloc0_1_0
	mov	c,___ckd_sub_long_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ulong_PARM_2'
;b                         Allocated with name '___ckd_sub_ulong_PARM_3'
;r                         Allocated with name '___ckd_sub_ulong_r_65536_39'
;result                    Allocated with name '___ckd_sub_ulong_result_65536_40'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
___ckd_sub_ulong:
	mov     dps, #1
	mov     dptr, #___ckd_sub_ulong_r_65536_39
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
	mov	dptr, #___ckd_sub_ulong_PARM_2
	dec	dps
	mov	dptr, #___ckd_sub_ulong_PARM_3
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_sub_ulong_result_65536_40
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
	mov	dptr,#___ckd_sub_ulong_result_65536_40
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
	mov	dptr,#___ckd_sub_ulong_r_65536_39
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
	mov	dptr,#___ckd_sub_ulong_result_65536_40
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
	mov	___ckd_sub_ulong_sloc0_1_0,c
	cpl	___ckd_sub_ulong_sloc0_1_0
	mov	c,___ckd_sub_ulong_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
