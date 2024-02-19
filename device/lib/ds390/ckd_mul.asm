;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
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
	.globl ___ckd_mul_ulong_PARM_3
	.globl ___ckd_mul_ulong_PARM_2
	.globl ___ckd_mul_long_PARM_3
	.globl ___ckd_mul_long_PARM_2
	.globl ___ckd_mul_uint_PARM_3
	.globl ___ckd_mul_uint_PARM_2
	.globl ___ckd_mul_int_PARM_3
	.globl ___ckd_mul_int_PARM_2
	.globl ___ckd_mul_ushort_PARM_3
	.globl ___ckd_mul_ushort_PARM_2
	.globl ___ckd_mul_short_PARM_3
	.globl ___ckd_mul_short_PARM_2
	.globl ___ckd_mul_uchar_PARM_3
	.globl ___ckd_mul_uchar_PARM_2
	.globl ___ckd_mul_schar_PARM_3
	.globl ___ckd_mul_schar_PARM_2
	.globl ___ckd_mul_schar
	.globl ___ckd_mul_uchar
	.globl ___ckd_mul_short
	.globl ___ckd_mul_ushort
	.globl ___ckd_mul_int
	.globl ___ckd_mul_uint
	.globl ___ckd_mul_long
	.globl ___ckd_mul_ulong
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
___ckd_mul_schar_sloc0_1_0:
	.ds 1
___ckd_mul_uchar_sloc0_1_0:
	.ds 1
___ckd_mul_short_sloc0_1_0:
	.ds 1
___ckd_mul_ushort_sloc0_1_0:
	.ds 1
___ckd_mul_int_sloc0_1_0:
	.ds 1
___ckd_mul_uint_sloc0_1_0:
	.ds 1
___ckd_mul_long_sloc0_1_0:
	.ds 1
___ckd_mul_ulong_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___ckd_mul_schar_PARM_2:
	.ds 8
___ckd_mul_schar_PARM_3:
	.ds 8
___ckd_mul_schar_r_65536_41:
	.ds 4
___ckd_mul_schar_result_65536_42:
	.ds 8
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_uchar_r_65536_43:
	.ds 4
___ckd_mul_uchar_result_65536_44:
	.ds 8
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_short_r_65536_45:
	.ds 4
___ckd_mul_short_result_65536_46:
	.ds 8
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_ushort_r_65536_47:
	.ds 4
___ckd_mul_ushort_result_65536_48:
	.ds 8
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_int_r_65536_49:
	.ds 4
___ckd_mul_int_result_65536_50:
	.ds 8
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
___ckd_mul_uint_r_65536_51:
	.ds 4
___ckd_mul_uint_result_65536_52:
	.ds 8
___ckd_mul_long_PARM_2:
	.ds 8
___ckd_mul_long_PARM_3:
	.ds 8
___ckd_mul_long_r_65536_53:
	.ds 4
___ckd_mul_long_result_65536_54:
	.ds 8
___ckd_mul_ulong_PARM_2:
	.ds 8
___ckd_mul_ulong_PARM_3:
	.ds 8
___ckd_mul_ulong_r_65536_55:
	.ds 4
___ckd_mul_ulong_result_65536_56:
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
;Allocation info for local variables in function '__ckd_mul_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_schar_PARM_2'
;b                         Allocated with name '___ckd_mul_schar_PARM_3'
;r                         Allocated with name '___ckd_mul_schar_r_65536_41'
;result                    Allocated with name '___ckd_mul_schar_result_65536_42'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:69: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
___ckd_mul_schar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___ckd_mul_schar_r_65536_41
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_schar_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_schar_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_schar_result_65536_42
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_schar_result_65536_42
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_mul_schar_r_65536_41
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
	mov	dptr,#___ckd_mul_schar_result_65536_42
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
	mov	___ckd_mul_schar_sloc0_1_0,c
	cpl	___ckd_mul_schar_sloc0_1_0
	mov	c,___ckd_mul_schar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_uchar_PARM_2'
;b                         Allocated with name '___ckd_mul_uchar_PARM_3'
;r                         Allocated with name '___ckd_mul_uchar_r_65536_43'
;result                    Allocated with name '___ckd_mul_uchar_result_65536_44'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
___ckd_mul_uchar:
	mov     dps, #1
	mov     dptr, #___ckd_mul_uchar_r_65536_43
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_uchar_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_uchar_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_uchar_result_65536_44
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_uchar_result_65536_44
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___ckd_mul_uchar_r_65536_43
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
	mov	dptr,#___ckd_mul_uchar_result_65536_44
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
	mov	___ckd_mul_uchar_sloc0_1_0,c
	cpl	___ckd_mul_uchar_sloc0_1_0
	mov	c,___ckd_mul_uchar_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_short_PARM_2'
;b                         Allocated with name '___ckd_mul_short_PARM_3'
;r                         Allocated with name '___ckd_mul_short_r_65536_45'
;result                    Allocated with name '___ckd_mul_short_result_65536_46'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
___ckd_mul_short:
	mov     dps, #1
	mov     dptr, #___ckd_mul_short_r_65536_45
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_short_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_short_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_short_result_65536_46
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_short_result_65536_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_mul_short_r_65536_45
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
	mov	dptr,#___ckd_mul_short_result_65536_46
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
	mov	___ckd_mul_short_sloc0_1_0,c
	cpl	___ckd_mul_short_sloc0_1_0
	mov	c,___ckd_mul_short_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_ushort_PARM_2'
;b                         Allocated with name '___ckd_mul_ushort_PARM_3'
;r                         Allocated with name '___ckd_mul_ushort_r_65536_47'
;result                    Allocated with name '___ckd_mul_ushort_result_65536_48'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
___ckd_mul_ushort:
	mov     dps, #1
	mov     dptr, #___ckd_mul_ushort_r_65536_47
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_ushort_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_ushort_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_ushort_result_65536_48
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_ushort_result_65536_48
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_mul_ushort_r_65536_47
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
	mov	dptr,#___ckd_mul_ushort_result_65536_48
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
	mov	___ckd_mul_ushort_sloc0_1_0,c
	cpl	___ckd_mul_ushort_sloc0_1_0
	mov	c,___ckd_mul_ushort_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_int_PARM_2'
;b                         Allocated with name '___ckd_mul_int_PARM_3'
;r                         Allocated with name '___ckd_mul_int_r_65536_49'
;result                    Allocated with name '___ckd_mul_int_result_65536_50'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
___ckd_mul_int:
	mov     dps, #1
	mov     dptr, #___ckd_mul_int_r_65536_49
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_int_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_int_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_int_result_65536_50
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_int_result_65536_50
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_mul_int_r_65536_49
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
	mov	dptr,#___ckd_mul_int_result_65536_50
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
	mov	___ckd_mul_int_sloc0_1_0,c
	cpl	___ckd_mul_int_sloc0_1_0
	mov	c,___ckd_mul_int_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_uint_PARM_2'
;b                         Allocated with name '___ckd_mul_uint_PARM_3'
;r                         Allocated with name '___ckd_mul_uint_r_65536_51'
;result                    Allocated with name '___ckd_mul_uint_result_65536_52'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
___ckd_mul_uint:
	mov     dps, #1
	mov     dptr, #___ckd_mul_uint_r_65536_51
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_uint_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_uint_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_uint_result_65536_52
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_uint_result_65536_52
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ckd_mul_uint_r_65536_51
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
	mov	dptr,#___ckd_mul_uint_result_65536_52
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
	mov	___ckd_mul_uint_sloc0_1_0,c
	cpl	___ckd_mul_uint_sloc0_1_0
	mov	c,___ckd_mul_uint_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_long_PARM_2'
;b                         Allocated with name '___ckd_mul_long_PARM_3'
;r                         Allocated with name '___ckd_mul_long_r_65536_53'
;result                    Allocated with name '___ckd_mul_long_result_65536_54'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
___ckd_mul_long:
	mov     dps, #1
	mov     dptr, #___ckd_mul_long_r_65536_53
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_long_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_long_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_long_result_65536_54
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_long_result_65536_54
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
	mov	dptr,#___ckd_mul_long_r_65536_53
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
	mov	dptr,#___ckd_mul_long_result_65536_54
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
	mov	___ckd_mul_long_sloc0_1_0,c
	cpl	___ckd_mul_long_sloc0_1_0
	mov	c,___ckd_mul_long_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_mul_ulong_PARM_2'
;b                         Allocated with name '___ckd_mul_ulong_PARM_3'
;r                         Allocated with name '___ckd_mul_ulong_r_65536_55'
;result                    Allocated with name '___ckd_mul_ulong_result_65536_56'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
___ckd_mul_ulong:
	mov     dps, #1
	mov     dptr, #___ckd_mul_ulong_r_65536_55
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
	mov	dps,#0
	mov	dptr,#___ckd_mul_ulong_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#___ckd_mul_ulong_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ckd_mul_ulong_result_65536_56
	mov	a,r3
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
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___ckd_mul_ulong_result_65536_56
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
	mov	dptr,#___ckd_mul_ulong_r_65536_55
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
	mov	dptr,#___ckd_mul_ulong_result_65536_56
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
	mov	___ckd_mul_ulong_sloc0_1_0,c
	cpl	___ckd_mul_ulong_sloc0_1_0
	mov	c,___ckd_mul_ulong_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl,a
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
