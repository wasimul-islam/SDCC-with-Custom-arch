;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mmcs51 --model-small
	
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
___ckd_mul_schar_PARM_2:
	.ds 8
___ckd_mul_schar_PARM_3:
	.ds 8
___ckd_mul_schar_r_65536_41:
	.ds 3
___ckd_mul_schar_result_65536_42:
	.ds 8
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_uchar_r_65536_43:
	.ds 3
___ckd_mul_uchar_result_65536_44:
	.ds 8
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_short_r_65536_45:
	.ds 3
___ckd_mul_short_result_65536_46:
	.ds 8
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_ushort_r_65536_47:
	.ds 3
___ckd_mul_ushort_result_65536_48:
	.ds 8
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_int_r_65536_49:
	.ds 3
___ckd_mul_int_result_65536_50:
	.ds 8
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
___ckd_mul_uint_r_65536_51:
	.ds 3
___ckd_mul_uint_result_65536_52:
	.ds 8
___ckd_mul_long_PARM_2:
	.ds 8
___ckd_mul_long_PARM_3:
	.ds 8
___ckd_mul_long_r_65536_53:
	.ds 3
___ckd_mul_long_result_65536_54:
	.ds 8
___ckd_mul_ulong_PARM_2:
	.ds 8
___ckd_mul_ulong_PARM_3:
	.ds 8
___ckd_mul_ulong_r_65536_55:
	.ds 3
___ckd_mul_ulong_result_65536_56:
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
	mov	___ckd_mul_schar_r_65536_41,dpl
	mov	(___ckd_mul_schar_r_65536_41 + 1),dph
	mov	(___ckd_mul_schar_r_65536_41 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_schar_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_schar_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_schar_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_schar_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_schar_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_schar_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_schar_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_schar_PARM_3 + 7)
	mov	dpl,___ckd_mul_schar_PARM_2
	mov	dph,(___ckd_mul_schar_PARM_2 + 1)
	mov	b,(___ckd_mul_schar_PARM_2 + 2)
	mov	a,(___ckd_mul_schar_PARM_2 + 3)
	mov	r4,(___ckd_mul_schar_PARM_2 + 4)
	mov	r5,(___ckd_mul_schar_PARM_2 + 5)
	mov	r6,(___ckd_mul_schar_PARM_2 + 6)
	mov	r7,(___ckd_mul_schar_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_schar_result_65536_42,dpl
	mov	(___ckd_mul_schar_result_65536_42 + 1),dph
	mov	(___ckd_mul_schar_result_65536_42 + 2),b
	mov	(___ckd_mul_schar_result_65536_42 + 3),a
	mov	(___ckd_mul_schar_result_65536_42 + 4),r4
	mov	(___ckd_mul_schar_result_65536_42 + 5),r5
	mov	(___ckd_mul_schar_result_65536_42 + 6),r6
	mov	(___ckd_mul_schar_result_65536_42 + 7),r7
	mov	r7,___ckd_mul_schar_result_65536_42
	mov	dpl,___ckd_mul_schar_r_65536_41
	mov	dph,(___ckd_mul_schar_r_65536_41 + 1)
	mov	b,(___ckd_mul_schar_r_65536_41 + 2)
	mov	a,r7
	lcall	__gptrput
	mov	r0,a
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
	cjne	a,___ckd_mul_schar_result_65536_42,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_schar_result_65536_42 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_schar_result_65536_42 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_schar_result_65536_42 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_schar_result_65536_42 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_schar_result_65536_42 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_schar_result_65536_42 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_schar_result_65536_42 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_schar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_uchar_r_65536_43,dpl
	mov	(___ckd_mul_uchar_r_65536_43 + 1),dph
	mov	(___ckd_mul_uchar_r_65536_43 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_uchar_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_uchar_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_uchar_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_uchar_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_uchar_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_uchar_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_uchar_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_uchar_PARM_3 + 7)
	mov	dpl,___ckd_mul_uchar_PARM_2
	mov	dph,(___ckd_mul_uchar_PARM_2 + 1)
	mov	b,(___ckd_mul_uchar_PARM_2 + 2)
	mov	a,(___ckd_mul_uchar_PARM_2 + 3)
	mov	r4,(___ckd_mul_uchar_PARM_2 + 4)
	mov	r5,(___ckd_mul_uchar_PARM_2 + 5)
	mov	r6,(___ckd_mul_uchar_PARM_2 + 6)
	mov	r7,(___ckd_mul_uchar_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_uchar_result_65536_44,dpl
	mov	(___ckd_mul_uchar_result_65536_44 + 1),dph
	mov	(___ckd_mul_uchar_result_65536_44 + 2),b
	mov	(___ckd_mul_uchar_result_65536_44 + 3),a
	mov	(___ckd_mul_uchar_result_65536_44 + 4),r4
	mov	(___ckd_mul_uchar_result_65536_44 + 5),r5
	mov	(___ckd_mul_uchar_result_65536_44 + 6),r6
	mov	(___ckd_mul_uchar_result_65536_44 + 7),r7
	mov	r7,___ckd_mul_uchar_result_65536_44
	mov	dpl,___ckd_mul_uchar_r_65536_43
	mov	dph,(___ckd_mul_uchar_r_65536_43 + 1)
	mov	b,(___ckd_mul_uchar_r_65536_43 + 2)
	mov	a,r7
	lcall	__gptrput
	mov	ar0,r7
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	cjne	a,___ckd_mul_uchar_result_65536_44,00103$
	mov	a,r1
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_uchar_result_65536_44 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_uchar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_short_r_65536_45,dpl
	mov	(___ckd_mul_short_r_65536_45 + 1),dph
	mov	(___ckd_mul_short_r_65536_45 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_short_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_short_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_short_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_short_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_short_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_short_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_short_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_short_PARM_3 + 7)
	mov	dpl,___ckd_mul_short_PARM_2
	mov	dph,(___ckd_mul_short_PARM_2 + 1)
	mov	b,(___ckd_mul_short_PARM_2 + 2)
	mov	a,(___ckd_mul_short_PARM_2 + 3)
	mov	r4,(___ckd_mul_short_PARM_2 + 4)
	mov	r5,(___ckd_mul_short_PARM_2 + 5)
	mov	r6,(___ckd_mul_short_PARM_2 + 6)
	mov	r7,(___ckd_mul_short_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_short_result_65536_46,dpl
	mov	(___ckd_mul_short_result_65536_46 + 1),dph
	mov	(___ckd_mul_short_result_65536_46 + 2),b
	mov	(___ckd_mul_short_result_65536_46 + 3),a
	mov	(___ckd_mul_short_result_65536_46 + 4),r4
	mov	(___ckd_mul_short_result_65536_46 + 5),r5
	mov	(___ckd_mul_short_result_65536_46 + 6),r6
	mov	(___ckd_mul_short_result_65536_46 + 7),r7
	mov	r1,___ckd_mul_short_result_65536_46
	mov	r7,(___ckd_mul_short_result_65536_46 + 1)
	mov	dpl,___ckd_mul_short_r_65536_45
	mov	dph,(___ckd_mul_short_r_65536_45 + 1)
	mov	b,(___ckd_mul_short_r_65536_45 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_short_result_65536_46,00103$
	mov	a,r0
	cjne	a,(___ckd_mul_short_result_65536_46 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_short_result_65536_46 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_short_result_65536_46 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_short_result_65536_46 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_short_result_65536_46 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_short_result_65536_46 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_short_result_65536_46 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_short_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_ushort_r_65536_47,dpl
	mov	(___ckd_mul_ushort_r_65536_47 + 1),dph
	mov	(___ckd_mul_ushort_r_65536_47 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_ushort_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_ushort_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_ushort_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_ushort_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_ushort_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_ushort_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_ushort_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_ushort_PARM_3 + 7)
	mov	dpl,___ckd_mul_ushort_PARM_2
	mov	dph,(___ckd_mul_ushort_PARM_2 + 1)
	mov	b,(___ckd_mul_ushort_PARM_2 + 2)
	mov	a,(___ckd_mul_ushort_PARM_2 + 3)
	mov	r4,(___ckd_mul_ushort_PARM_2 + 4)
	mov	r5,(___ckd_mul_ushort_PARM_2 + 5)
	mov	r6,(___ckd_mul_ushort_PARM_2 + 6)
	mov	r7,(___ckd_mul_ushort_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_ushort_result_65536_48,dpl
	mov	(___ckd_mul_ushort_result_65536_48 + 1),dph
	mov	(___ckd_mul_ushort_result_65536_48 + 2),b
	mov	(___ckd_mul_ushort_result_65536_48 + 3),a
	mov	(___ckd_mul_ushort_result_65536_48 + 4),r4
	mov	(___ckd_mul_ushort_result_65536_48 + 5),r5
	mov	(___ckd_mul_ushort_result_65536_48 + 6),r6
	mov	(___ckd_mul_ushort_result_65536_48 + 7),r7
	mov	r1,___ckd_mul_ushort_result_65536_48
	mov	r7,(___ckd_mul_ushort_result_65536_48 + 1)
	mov	dpl,___ckd_mul_ushort_r_65536_47
	mov	dph,(___ckd_mul_ushort_r_65536_47 + 1)
	mov	b,(___ckd_mul_ushort_r_65536_47 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	ar0,r7
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_ushort_result_65536_48,00103$
	mov	a,r0
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_ushort_result_65536_48 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_ushort_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_int_r_65536_49,dpl
	mov	(___ckd_mul_int_r_65536_49 + 1),dph
	mov	(___ckd_mul_int_r_65536_49 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_int_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_int_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_int_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_int_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_int_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_int_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_int_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_int_PARM_3 + 7)
	mov	dpl,___ckd_mul_int_PARM_2
	mov	dph,(___ckd_mul_int_PARM_2 + 1)
	mov	b,(___ckd_mul_int_PARM_2 + 2)
	mov	a,(___ckd_mul_int_PARM_2 + 3)
	mov	r4,(___ckd_mul_int_PARM_2 + 4)
	mov	r5,(___ckd_mul_int_PARM_2 + 5)
	mov	r6,(___ckd_mul_int_PARM_2 + 6)
	mov	r7,(___ckd_mul_int_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_int_result_65536_50,dpl
	mov	(___ckd_mul_int_result_65536_50 + 1),dph
	mov	(___ckd_mul_int_result_65536_50 + 2),b
	mov	(___ckd_mul_int_result_65536_50 + 3),a
	mov	(___ckd_mul_int_result_65536_50 + 4),r4
	mov	(___ckd_mul_int_result_65536_50 + 5),r5
	mov	(___ckd_mul_int_result_65536_50 + 6),r6
	mov	(___ckd_mul_int_result_65536_50 + 7),r7
	mov	r1,___ckd_mul_int_result_65536_50
	mov	r7,(___ckd_mul_int_result_65536_50 + 1)
	mov	dpl,___ckd_mul_int_r_65536_49
	mov	dph,(___ckd_mul_int_r_65536_49 + 1)
	mov	b,(___ckd_mul_int_r_65536_49 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_int_result_65536_50,00103$
	mov	a,r0
	cjne	a,(___ckd_mul_int_result_65536_50 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_int_result_65536_50 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_int_result_65536_50 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_int_result_65536_50 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_int_result_65536_50 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_int_result_65536_50 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_int_result_65536_50 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_int_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_uint_r_65536_51,dpl
	mov	(___ckd_mul_uint_r_65536_51 + 1),dph
	mov	(___ckd_mul_uint_r_65536_51 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_uint_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_uint_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_uint_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_uint_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_uint_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_uint_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_uint_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_uint_PARM_3 + 7)
	mov	dpl,___ckd_mul_uint_PARM_2
	mov	dph,(___ckd_mul_uint_PARM_2 + 1)
	mov	b,(___ckd_mul_uint_PARM_2 + 2)
	mov	a,(___ckd_mul_uint_PARM_2 + 3)
	mov	r4,(___ckd_mul_uint_PARM_2 + 4)
	mov	r5,(___ckd_mul_uint_PARM_2 + 5)
	mov	r6,(___ckd_mul_uint_PARM_2 + 6)
	mov	r7,(___ckd_mul_uint_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_uint_result_65536_52,dpl
	mov	(___ckd_mul_uint_result_65536_52 + 1),dph
	mov	(___ckd_mul_uint_result_65536_52 + 2),b
	mov	(___ckd_mul_uint_result_65536_52 + 3),a
	mov	(___ckd_mul_uint_result_65536_52 + 4),r4
	mov	(___ckd_mul_uint_result_65536_52 + 5),r5
	mov	(___ckd_mul_uint_result_65536_52 + 6),r6
	mov	(___ckd_mul_uint_result_65536_52 + 7),r7
	mov	r1,___ckd_mul_uint_result_65536_52
	mov	r7,(___ckd_mul_uint_result_65536_52 + 1)
	mov	dpl,___ckd_mul_uint_r_65536_51
	mov	dph,(___ckd_mul_uint_r_65536_51 + 1)
	mov	b,(___ckd_mul_uint_r_65536_51 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	ar0,r7
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_uint_result_65536_52,00103$
	mov	a,r0
	cjne	a,(___ckd_mul_uint_result_65536_52 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_mul_uint_result_65536_52 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_uint_result_65536_52 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_uint_result_65536_52 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_uint_result_65536_52 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_uint_result_65536_52 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_uint_result_65536_52 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_uint_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_long_r_65536_53,dpl
	mov	(___ckd_mul_long_r_65536_53 + 1),dph
	mov	(___ckd_mul_long_r_65536_53 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_long_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_long_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_long_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_long_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_long_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_long_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_long_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_long_PARM_3 + 7)
	mov	dpl,___ckd_mul_long_PARM_2
	mov	dph,(___ckd_mul_long_PARM_2 + 1)
	mov	b,(___ckd_mul_long_PARM_2 + 2)
	mov	a,(___ckd_mul_long_PARM_2 + 3)
	mov	r4,(___ckd_mul_long_PARM_2 + 4)
	mov	r5,(___ckd_mul_long_PARM_2 + 5)
	mov	r6,(___ckd_mul_long_PARM_2 + 6)
	mov	r7,(___ckd_mul_long_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_long_result_65536_54,dpl
	mov	(___ckd_mul_long_result_65536_54 + 1),dph
	mov	(___ckd_mul_long_result_65536_54 + 2),b
	mov	(___ckd_mul_long_result_65536_54 + 3),a
	mov	(___ckd_mul_long_result_65536_54 + 4),r4
	mov	(___ckd_mul_long_result_65536_54 + 5),r5
	mov	(___ckd_mul_long_result_65536_54 + 6),r6
	mov	(___ckd_mul_long_result_65536_54 + 7),r7
	mov	r1,___ckd_mul_long_result_65536_54
	mov	r2,(___ckd_mul_long_result_65536_54 + 1)
	mov	r3,(___ckd_mul_long_result_65536_54 + 2)
	mov	r7,(___ckd_mul_long_result_65536_54 + 3)
	mov	dpl,___ckd_mul_long_r_65536_53
	mov	dph,(___ckd_mul_long_r_65536_53 + 1)
	mov	b,(___ckd_mul_long_r_65536_53 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_long_result_65536_54,00103$
	mov	a,r2
	cjne	a,(___ckd_mul_long_result_65536_54 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_long_result_65536_54 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_mul_long_result_65536_54 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_long_result_65536_54 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_long_result_65536_54 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_long_result_65536_54 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_long_result_65536_54 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_long_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_mul_ulong_r_65536_55,dpl
	mov	(___ckd_mul_ulong_r_65536_55 + 1),dph
	mov	(___ckd_mul_ulong_r_65536_55 + 2),b
	mov	__mullonglong_PARM_2,___ckd_mul_ulong_PARM_3
	mov	(__mullonglong_PARM_2 + 1),(___ckd_mul_ulong_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 2),(___ckd_mul_ulong_PARM_3 + 2)
	mov	(__mullonglong_PARM_2 + 3),(___ckd_mul_ulong_PARM_3 + 3)
	mov	(__mullonglong_PARM_2 + 4),(___ckd_mul_ulong_PARM_3 + 4)
	mov	(__mullonglong_PARM_2 + 5),(___ckd_mul_ulong_PARM_3 + 5)
	mov	(__mullonglong_PARM_2 + 6),(___ckd_mul_ulong_PARM_3 + 6)
	mov	(__mullonglong_PARM_2 + 7),(___ckd_mul_ulong_PARM_3 + 7)
	mov	dpl,___ckd_mul_ulong_PARM_2
	mov	dph,(___ckd_mul_ulong_PARM_2 + 1)
	mov	b,(___ckd_mul_ulong_PARM_2 + 2)
	mov	a,(___ckd_mul_ulong_PARM_2 + 3)
	mov	r4,(___ckd_mul_ulong_PARM_2 + 4)
	mov	r5,(___ckd_mul_ulong_PARM_2 + 5)
	mov	r6,(___ckd_mul_ulong_PARM_2 + 6)
	mov	r7,(___ckd_mul_ulong_PARM_2 + 7)
	lcall	__mullonglong
	mov	___ckd_mul_ulong_result_65536_56,dpl
	mov	(___ckd_mul_ulong_result_65536_56 + 1),dph
	mov	(___ckd_mul_ulong_result_65536_56 + 2),b
	mov	(___ckd_mul_ulong_result_65536_56 + 3),a
	mov	(___ckd_mul_ulong_result_65536_56 + 4),r4
	mov	(___ckd_mul_ulong_result_65536_56 + 5),r5
	mov	(___ckd_mul_ulong_result_65536_56 + 6),r6
	mov	(___ckd_mul_ulong_result_65536_56 + 7),r7
	mov	r1,___ckd_mul_ulong_result_65536_56
	mov	r2,(___ckd_mul_ulong_result_65536_56 + 1)
	mov	r3,(___ckd_mul_ulong_result_65536_56 + 2)
	mov	r7,(___ckd_mul_ulong_result_65536_56 + 3)
	mov	dpl,___ckd_mul_ulong_r_65536_55
	mov	dph,(___ckd_mul_ulong_r_65536_55 + 1)
	mov	b,(___ckd_mul_ulong_r_65536_55 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	ar0,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,___ckd_mul_ulong_result_65536_56,00103$
	mov	a,r2
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_mul_ulong_result_65536_56 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_ulong_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
