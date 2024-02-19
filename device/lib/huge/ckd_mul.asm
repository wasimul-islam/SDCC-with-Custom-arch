;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mmcs51 --model-huge
	
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
___ckd_mul_schar_sloc0_1_0:
	.ds 8
___ckd_mul_uchar_sloc0_1_0:
	.ds 8
___ckd_mul_short_sloc0_1_0:
	.ds 8
___ckd_mul_ushort_sloc0_1_0:
	.ds 8
___ckd_mul_int_sloc0_1_0:
	.ds 8
___ckd_mul_uint_sloc0_1_0:
	.ds 8
___ckd_mul_long_sloc0_1_0:
	.ds 8
___ckd_mul_ulong_sloc0_1_0:
	.ds 8
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
___ckd_mul_schar_sloc1_1_0:
	.ds 1
___ckd_mul_uchar_sloc1_1_0:
	.ds 1
___ckd_mul_short_sloc1_1_0:
	.ds 1
___ckd_mul_ushort_sloc1_1_0:
	.ds 1
___ckd_mul_int_sloc1_1_0:
	.ds 1
___ckd_mul_uint_sloc1_1_0:
	.ds 1
___ckd_mul_long_sloc1_1_0:
	.ds 1
___ckd_mul_ulong_sloc1_1_0:
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
	.ds 3
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_uchar_r_65536_43:
	.ds 3
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_short_r_65536_45:
	.ds 3
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_ushort_r_65536_47:
	.ds 3
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_int_r_65536_49:
	.ds 3
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
___ckd_mul_uint_r_65536_51:
	.ds 3
___ckd_mul_long_PARM_2:
	.ds 8
___ckd_mul_long_PARM_3:
	.ds 8
___ckd_mul_long_r_65536_53:
	.ds 3
___ckd_mul_ulong_PARM_2:
	.ds 8
___ckd_mul_ulong_PARM_3:
	.ds 8
___ckd_mul_ulong_r_65536_55:
	.ds 3
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
;Allocation info for local variables in function '__ckd_mul_schar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_schar_sloc0_1_0'
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
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_schar_r_65536_41
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_schar_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_schar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_schar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_schar_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_schar_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_schar_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_schar_sloc0_1_0,dpl
	mov	(___ckd_mul_schar_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_schar_sloc0_1_0 + 2),b
	mov	(___ckd_mul_schar_sloc0_1_0 + 3),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_schar_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_schar_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_schar_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_schar_r_65536_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_schar_sloc0_1_0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	cjne	a,___ckd_mul_schar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_schar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uchar_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_uchar_r_65536_43
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_uchar_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_uchar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uchar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_uchar_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_uchar_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uchar_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_uchar_sloc0_1_0,dpl
	mov	(___ckd_mul_uchar_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_uchar_sloc0_1_0 + 2),b
	mov	(___ckd_mul_uchar_sloc0_1_0 + 3),a
	mov	(___ckd_mul_uchar_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_uchar_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_uchar_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_uchar_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_uchar_r_65536_43
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_uchar_sloc0_1_0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	cjne	a,___ckd_mul_uchar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_uchar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_short_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_short_r_65536_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_short_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_short_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_short_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_short_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_short_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_short_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_short_sloc0_1_0,dpl
	mov	(___ckd_mul_short_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_short_sloc0_1_0 + 2),b
	mov	(___ckd_mul_short_sloc0_1_0 + 3),a
	mov	(___ckd_mul_short_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_short_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_short_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_short_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_short_r_65536_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_short_sloc0_1_0
	mov	r1,(___ckd_mul_short_sloc0_1_0 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,r0
	cjne	a,___ckd_mul_short_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_short_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ushort_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_ushort_r_65536_47
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_ushort_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_ushort_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ushort_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_ushort_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_ushort_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ushort_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_ushort_sloc0_1_0,dpl
	mov	(___ckd_mul_ushort_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_ushort_sloc0_1_0 + 2),b
	mov	(___ckd_mul_ushort_sloc0_1_0 + 3),a
	mov	(___ckd_mul_ushort_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_ushort_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_ushort_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_ushort_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_ushort_r_65536_47
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_ushort_sloc0_1_0
	mov	r1,(___ckd_mul_ushort_sloc0_1_0 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,r0
	cjne	a,___ckd_mul_ushort_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_ushort_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_int_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_int_r_65536_49
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_int_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_int_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_int_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_int_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_int_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_int_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_int_sloc0_1_0,dpl
	mov	(___ckd_mul_int_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_int_sloc0_1_0 + 2),b
	mov	(___ckd_mul_int_sloc0_1_0 + 3),a
	mov	(___ckd_mul_int_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_int_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_int_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_int_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_int_r_65536_49
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_int_sloc0_1_0
	mov	r1,(___ckd_mul_int_sloc0_1_0 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,r0
	cjne	a,___ckd_mul_int_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_int_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uint_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_uint_r_65536_51
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_uint_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_uint_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_uint_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_uint_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_uint_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_uint_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_uint_sloc0_1_0,dpl
	mov	(___ckd_mul_uint_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_uint_sloc0_1_0 + 2),b
	mov	(___ckd_mul_uint_sloc0_1_0 + 3),a
	mov	(___ckd_mul_uint_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_uint_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_uint_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_uint_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_uint_r_65536_51
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_uint_sloc0_1_0
	mov	r1,(___ckd_mul_uint_sloc0_1_0 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,r0
	cjne	a,___ckd_mul_uint_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_uint_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_long_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_long_r_65536_53
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_long_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_long_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_long_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_long_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_long_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_long_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_long_sloc0_1_0,dpl
	mov	(___ckd_mul_long_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_long_sloc0_1_0 + 2),b
	mov	(___ckd_mul_long_sloc0_1_0 + 3),a
	mov	(___ckd_mul_long_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_long_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_long_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_long_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_long_r_65536_53
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_long_sloc0_1_0
	mov	r1,(___ckd_mul_long_sloc0_1_0 + 1)
	mov	r2,(___ckd_mul_long_sloc0_1_0 + 2)
	mov	r3,(___ckd_mul_long_sloc0_1_0 + 3)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r0
	cjne	a,___ckd_mul_long_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_long_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ulong_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_mul_ulong_r_65536_55
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_mul_ulong_PARM_3
	movx	a,@dptr
	mov	___ckd_mul_ulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_mul_ulong_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_mul_ulong_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullonglong_PARM_2
	mov	a,___ckd_mul_ulong_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ckd_mul_ulong_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	___ckd_mul_ulong_sloc0_1_0,dpl
	mov	(___ckd_mul_ulong_sloc0_1_0 + 1),dph
	mov	(___ckd_mul_ulong_sloc0_1_0 + 2),b
	mov	(___ckd_mul_ulong_sloc0_1_0 + 3),a
	mov	(___ckd_mul_ulong_sloc0_1_0 + 4),r4
	mov	(___ckd_mul_ulong_sloc0_1_0 + 5),r5
	mov	(___ckd_mul_ulong_sloc0_1_0 + 6),r6
	mov	(___ckd_mul_ulong_sloc0_1_0 + 7),r7
	mov	dptr,#___ckd_mul_ulong_r_65536_55
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_mul_ulong_sloc0_1_0
	mov	r1,(___ckd_mul_ulong_sloc0_1_0 + 1)
	mov	r2,(___ckd_mul_ulong_sloc0_1_0 + 2)
	mov	r3,(___ckd_mul_ulong_sloc0_1_0 + 3)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r0
	cjne	a,___ckd_mul_ulong_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_mul_ulong_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
