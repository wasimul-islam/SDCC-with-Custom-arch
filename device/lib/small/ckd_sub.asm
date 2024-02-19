;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	.optsdcc -mmcs51 --model-small
	
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
___ckd_sub_schar_PARM_2:
	.ds 8
___ckd_sub_schar_PARM_3:
	.ds 8
___ckd_sub_schar_r_65536_25:
	.ds 3
___ckd_sub_schar_result_65536_26:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_uchar_r_65536_27:
	.ds 3
___ckd_sub_uchar_result_65536_28:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_short_r_65536_29:
	.ds 3
___ckd_sub_short_result_65536_30:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_ushort_r_65536_31:
	.ds 3
___ckd_sub_ushort_result_65536_32:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_int_r_65536_33:
	.ds 3
___ckd_sub_int_result_65536_34:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_uint_r_65536_35:
	.ds 3
___ckd_sub_uint_result_65536_36:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_long_r_65536_37:
	.ds 3
___ckd_sub_long_result_65536_38:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
	.ds 8
___ckd_sub_ulong_r_65536_39:
	.ds 3
___ckd_sub_ulong_result_65536_40:
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
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	___ckd_sub_schar_r_65536_25,dpl
	mov	(___ckd_sub_schar_r_65536_25 + 1),dph
	mov	(___ckd_sub_schar_r_65536_25 + 2),b
	mov	a,___ckd_sub_schar_PARM_2
	clr	c
	subb	a,___ckd_sub_schar_PARM_3
	mov	___ckd_sub_schar_result_65536_26,a
	mov	a,(___ckd_sub_schar_PARM_2 + 1)
	subb	a,(___ckd_sub_schar_PARM_3 + 1)
	mov	(___ckd_sub_schar_result_65536_26 + 1),a
	mov	a,(___ckd_sub_schar_PARM_2 + 2)
	subb	a,(___ckd_sub_schar_PARM_3 + 2)
	mov	(___ckd_sub_schar_result_65536_26 + 2),a
	mov	a,(___ckd_sub_schar_PARM_2 + 3)
	subb	a,(___ckd_sub_schar_PARM_3 + 3)
	mov	(___ckd_sub_schar_result_65536_26 + 3),a
	mov	a,(___ckd_sub_schar_PARM_2 + 4)
	subb	a,(___ckd_sub_schar_PARM_3 + 4)
	mov	(___ckd_sub_schar_result_65536_26 + 4),a
	mov	a,(___ckd_sub_schar_PARM_2 + 5)
	subb	a,(___ckd_sub_schar_PARM_3 + 5)
	mov	(___ckd_sub_schar_result_65536_26 + 5),a
	mov	a,(___ckd_sub_schar_PARM_2 + 6)
	subb	a,(___ckd_sub_schar_PARM_3 + 6)
	mov	(___ckd_sub_schar_result_65536_26 + 6),a
	mov	a,(___ckd_sub_schar_PARM_2 + 7)
	subb	a,(___ckd_sub_schar_PARM_3 + 7)
	mov	(___ckd_sub_schar_result_65536_26 + 7),a
	mov	r7,___ckd_sub_schar_result_65536_26
	mov	dpl,___ckd_sub_schar_r_65536_25
	mov	dph,(___ckd_sub_schar_r_65536_25 + 1)
	mov	b,(___ckd_sub_schar_r_65536_25 + 2)
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
	cjne	a,___ckd_sub_schar_result_65536_26,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_schar_result_65536_26 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_schar_result_65536_26 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_schar_result_65536_26 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_schar_result_65536_26 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_schar_result_65536_26 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_schar_result_65536_26 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_schar_result_65536_26 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_schar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_uchar_r_65536_27,dpl
	mov	(___ckd_sub_uchar_r_65536_27 + 1),dph
	mov	(___ckd_sub_uchar_r_65536_27 + 2),b
	mov	a,___ckd_sub_uchar_PARM_2
	clr	c
	subb	a,___ckd_sub_uchar_PARM_3
	mov	___ckd_sub_uchar_result_65536_28,a
	mov	a,(___ckd_sub_uchar_PARM_2 + 1)
	subb	a,(___ckd_sub_uchar_PARM_3 + 1)
	mov	(___ckd_sub_uchar_result_65536_28 + 1),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 2)
	subb	a,(___ckd_sub_uchar_PARM_3 + 2)
	mov	(___ckd_sub_uchar_result_65536_28 + 2),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 3)
	subb	a,(___ckd_sub_uchar_PARM_3 + 3)
	mov	(___ckd_sub_uchar_result_65536_28 + 3),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 4)
	subb	a,(___ckd_sub_uchar_PARM_3 + 4)
	mov	(___ckd_sub_uchar_result_65536_28 + 4),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 5)
	subb	a,(___ckd_sub_uchar_PARM_3 + 5)
	mov	(___ckd_sub_uchar_result_65536_28 + 5),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 6)
	subb	a,(___ckd_sub_uchar_PARM_3 + 6)
	mov	(___ckd_sub_uchar_result_65536_28 + 6),a
	mov	a,(___ckd_sub_uchar_PARM_2 + 7)
	subb	a,(___ckd_sub_uchar_PARM_3 + 7)
	mov	(___ckd_sub_uchar_result_65536_28 + 7),a
	mov	r7,___ckd_sub_uchar_result_65536_28
	mov	dpl,___ckd_sub_uchar_r_65536_27
	mov	dph,(___ckd_sub_uchar_r_65536_27 + 1)
	mov	b,(___ckd_sub_uchar_r_65536_27 + 2)
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
	cjne	a,___ckd_sub_uchar_result_65536_28,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_uchar_result_65536_28 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_uchar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_short_r_65536_29,dpl
	mov	(___ckd_sub_short_r_65536_29 + 1),dph
	mov	(___ckd_sub_short_r_65536_29 + 2),b
	mov	a,___ckd_sub_short_PARM_2
	clr	c
	subb	a,___ckd_sub_short_PARM_3
	mov	___ckd_sub_short_result_65536_30,a
	mov	a,(___ckd_sub_short_PARM_2 + 1)
	subb	a,(___ckd_sub_short_PARM_3 + 1)
	mov	(___ckd_sub_short_result_65536_30 + 1),a
	mov	a,(___ckd_sub_short_PARM_2 + 2)
	subb	a,(___ckd_sub_short_PARM_3 + 2)
	mov	(___ckd_sub_short_result_65536_30 + 2),a
	mov	a,(___ckd_sub_short_PARM_2 + 3)
	subb	a,(___ckd_sub_short_PARM_3 + 3)
	mov	(___ckd_sub_short_result_65536_30 + 3),a
	mov	a,(___ckd_sub_short_PARM_2 + 4)
	subb	a,(___ckd_sub_short_PARM_3 + 4)
	mov	(___ckd_sub_short_result_65536_30 + 4),a
	mov	a,(___ckd_sub_short_PARM_2 + 5)
	subb	a,(___ckd_sub_short_PARM_3 + 5)
	mov	(___ckd_sub_short_result_65536_30 + 5),a
	mov	a,(___ckd_sub_short_PARM_2 + 6)
	subb	a,(___ckd_sub_short_PARM_3 + 6)
	mov	(___ckd_sub_short_result_65536_30 + 6),a
	mov	a,(___ckd_sub_short_PARM_2 + 7)
	subb	a,(___ckd_sub_short_PARM_3 + 7)
	mov	(___ckd_sub_short_result_65536_30 + 7),a
	mov	r1,___ckd_sub_short_result_65536_30
	mov	r7,(___ckd_sub_short_result_65536_30 + 1)
	mov	dpl,___ckd_sub_short_r_65536_29
	mov	dph,(___ckd_sub_short_r_65536_29 + 1)
	mov	b,(___ckd_sub_short_r_65536_29 + 2)
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
	cjne	a,___ckd_sub_short_result_65536_30,00103$
	mov	a,r0
	cjne	a,(___ckd_sub_short_result_65536_30 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_short_result_65536_30 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_short_result_65536_30 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_short_result_65536_30 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_short_result_65536_30 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_short_result_65536_30 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_short_result_65536_30 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_short_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_ushort_r_65536_31,dpl
	mov	(___ckd_sub_ushort_r_65536_31 + 1),dph
	mov	(___ckd_sub_ushort_r_65536_31 + 2),b
	mov	a,___ckd_sub_ushort_PARM_2
	clr	c
	subb	a,___ckd_sub_ushort_PARM_3
	mov	___ckd_sub_ushort_result_65536_32,a
	mov	a,(___ckd_sub_ushort_PARM_2 + 1)
	subb	a,(___ckd_sub_ushort_PARM_3 + 1)
	mov	(___ckd_sub_ushort_result_65536_32 + 1),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 2)
	subb	a,(___ckd_sub_ushort_PARM_3 + 2)
	mov	(___ckd_sub_ushort_result_65536_32 + 2),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 3)
	subb	a,(___ckd_sub_ushort_PARM_3 + 3)
	mov	(___ckd_sub_ushort_result_65536_32 + 3),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 4)
	subb	a,(___ckd_sub_ushort_PARM_3 + 4)
	mov	(___ckd_sub_ushort_result_65536_32 + 4),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 5)
	subb	a,(___ckd_sub_ushort_PARM_3 + 5)
	mov	(___ckd_sub_ushort_result_65536_32 + 5),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 6)
	subb	a,(___ckd_sub_ushort_PARM_3 + 6)
	mov	(___ckd_sub_ushort_result_65536_32 + 6),a
	mov	a,(___ckd_sub_ushort_PARM_2 + 7)
	subb	a,(___ckd_sub_ushort_PARM_3 + 7)
	mov	(___ckd_sub_ushort_result_65536_32 + 7),a
	mov	r1,___ckd_sub_ushort_result_65536_32
	mov	r7,(___ckd_sub_ushort_result_65536_32 + 1)
	mov	dpl,___ckd_sub_ushort_r_65536_31
	mov	dph,(___ckd_sub_ushort_r_65536_31 + 1)
	mov	b,(___ckd_sub_ushort_r_65536_31 + 2)
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
	cjne	a,___ckd_sub_ushort_result_65536_32,00103$
	mov	a,r0
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_ushort_result_65536_32 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_ushort_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_int_r_65536_33,dpl
	mov	(___ckd_sub_int_r_65536_33 + 1),dph
	mov	(___ckd_sub_int_r_65536_33 + 2),b
	mov	a,___ckd_sub_int_PARM_2
	clr	c
	subb	a,___ckd_sub_int_PARM_3
	mov	___ckd_sub_int_result_65536_34,a
	mov	a,(___ckd_sub_int_PARM_2 + 1)
	subb	a,(___ckd_sub_int_PARM_3 + 1)
	mov	(___ckd_sub_int_result_65536_34 + 1),a
	mov	a,(___ckd_sub_int_PARM_2 + 2)
	subb	a,(___ckd_sub_int_PARM_3 + 2)
	mov	(___ckd_sub_int_result_65536_34 + 2),a
	mov	a,(___ckd_sub_int_PARM_2 + 3)
	subb	a,(___ckd_sub_int_PARM_3 + 3)
	mov	(___ckd_sub_int_result_65536_34 + 3),a
	mov	a,(___ckd_sub_int_PARM_2 + 4)
	subb	a,(___ckd_sub_int_PARM_3 + 4)
	mov	(___ckd_sub_int_result_65536_34 + 4),a
	mov	a,(___ckd_sub_int_PARM_2 + 5)
	subb	a,(___ckd_sub_int_PARM_3 + 5)
	mov	(___ckd_sub_int_result_65536_34 + 5),a
	mov	a,(___ckd_sub_int_PARM_2 + 6)
	subb	a,(___ckd_sub_int_PARM_3 + 6)
	mov	(___ckd_sub_int_result_65536_34 + 6),a
	mov	a,(___ckd_sub_int_PARM_2 + 7)
	subb	a,(___ckd_sub_int_PARM_3 + 7)
	mov	(___ckd_sub_int_result_65536_34 + 7),a
	mov	r1,___ckd_sub_int_result_65536_34
	mov	r7,(___ckd_sub_int_result_65536_34 + 1)
	mov	dpl,___ckd_sub_int_r_65536_33
	mov	dph,(___ckd_sub_int_r_65536_33 + 1)
	mov	b,(___ckd_sub_int_r_65536_33 + 2)
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
	cjne	a,___ckd_sub_int_result_65536_34,00103$
	mov	a,r0
	cjne	a,(___ckd_sub_int_result_65536_34 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_int_result_65536_34 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_int_result_65536_34 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_int_result_65536_34 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_int_result_65536_34 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_int_result_65536_34 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_int_result_65536_34 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_int_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_uint_r_65536_35,dpl
	mov	(___ckd_sub_uint_r_65536_35 + 1),dph
	mov	(___ckd_sub_uint_r_65536_35 + 2),b
	mov	a,___ckd_sub_uint_PARM_2
	clr	c
	subb	a,___ckd_sub_uint_PARM_3
	mov	___ckd_sub_uint_result_65536_36,a
	mov	a,(___ckd_sub_uint_PARM_2 + 1)
	subb	a,(___ckd_sub_uint_PARM_3 + 1)
	mov	(___ckd_sub_uint_result_65536_36 + 1),a
	mov	a,(___ckd_sub_uint_PARM_2 + 2)
	subb	a,(___ckd_sub_uint_PARM_3 + 2)
	mov	(___ckd_sub_uint_result_65536_36 + 2),a
	mov	a,(___ckd_sub_uint_PARM_2 + 3)
	subb	a,(___ckd_sub_uint_PARM_3 + 3)
	mov	(___ckd_sub_uint_result_65536_36 + 3),a
	mov	a,(___ckd_sub_uint_PARM_2 + 4)
	subb	a,(___ckd_sub_uint_PARM_3 + 4)
	mov	(___ckd_sub_uint_result_65536_36 + 4),a
	mov	a,(___ckd_sub_uint_PARM_2 + 5)
	subb	a,(___ckd_sub_uint_PARM_3 + 5)
	mov	(___ckd_sub_uint_result_65536_36 + 5),a
	mov	a,(___ckd_sub_uint_PARM_2 + 6)
	subb	a,(___ckd_sub_uint_PARM_3 + 6)
	mov	(___ckd_sub_uint_result_65536_36 + 6),a
	mov	a,(___ckd_sub_uint_PARM_2 + 7)
	subb	a,(___ckd_sub_uint_PARM_3 + 7)
	mov	(___ckd_sub_uint_result_65536_36 + 7),a
	mov	r1,___ckd_sub_uint_result_65536_36
	mov	r7,(___ckd_sub_uint_result_65536_36 + 1)
	mov	dpl,___ckd_sub_uint_r_65536_35
	mov	dph,(___ckd_sub_uint_r_65536_35 + 1)
	mov	b,(___ckd_sub_uint_r_65536_35 + 2)
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
	cjne	a,___ckd_sub_uint_result_65536_36,00103$
	mov	a,r0
	cjne	a,(___ckd_sub_uint_result_65536_36 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_uint_result_65536_36 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_uint_result_65536_36 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_uint_result_65536_36 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_uint_result_65536_36 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_uint_result_65536_36 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_uint_result_65536_36 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_uint_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_long_r_65536_37,dpl
	mov	(___ckd_sub_long_r_65536_37 + 1),dph
	mov	(___ckd_sub_long_r_65536_37 + 2),b
	mov	a,___ckd_sub_long_PARM_2
	clr	c
	subb	a,___ckd_sub_long_PARM_3
	mov	___ckd_sub_long_result_65536_38,a
	mov	a,(___ckd_sub_long_PARM_2 + 1)
	subb	a,(___ckd_sub_long_PARM_3 + 1)
	mov	(___ckd_sub_long_result_65536_38 + 1),a
	mov	a,(___ckd_sub_long_PARM_2 + 2)
	subb	a,(___ckd_sub_long_PARM_3 + 2)
	mov	(___ckd_sub_long_result_65536_38 + 2),a
	mov	a,(___ckd_sub_long_PARM_2 + 3)
	subb	a,(___ckd_sub_long_PARM_3 + 3)
	mov	(___ckd_sub_long_result_65536_38 + 3),a
	mov	a,(___ckd_sub_long_PARM_2 + 4)
	subb	a,(___ckd_sub_long_PARM_3 + 4)
	mov	(___ckd_sub_long_result_65536_38 + 4),a
	mov	a,(___ckd_sub_long_PARM_2 + 5)
	subb	a,(___ckd_sub_long_PARM_3 + 5)
	mov	(___ckd_sub_long_result_65536_38 + 5),a
	mov	a,(___ckd_sub_long_PARM_2 + 6)
	subb	a,(___ckd_sub_long_PARM_3 + 6)
	mov	(___ckd_sub_long_result_65536_38 + 6),a
	mov	a,(___ckd_sub_long_PARM_2 + 7)
	subb	a,(___ckd_sub_long_PARM_3 + 7)
	mov	(___ckd_sub_long_result_65536_38 + 7),a
	mov	r1,___ckd_sub_long_result_65536_38
	mov	r2,(___ckd_sub_long_result_65536_38 + 1)
	mov	r3,(___ckd_sub_long_result_65536_38 + 2)
	mov	r7,(___ckd_sub_long_result_65536_38 + 3)
	mov	dpl,___ckd_sub_long_r_65536_37
	mov	dph,(___ckd_sub_long_r_65536_37 + 1)
	mov	b,(___ckd_sub_long_r_65536_37 + 2)
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
	cjne	a,___ckd_sub_long_result_65536_38,00103$
	mov	a,r2
	cjne	a,(___ckd_sub_long_result_65536_38 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_long_result_65536_38 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_sub_long_result_65536_38 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_long_result_65536_38 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_long_result_65536_38 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_long_result_65536_38 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_long_result_65536_38 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_long_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_sub_ulong_r_65536_39,dpl
	mov	(___ckd_sub_ulong_r_65536_39 + 1),dph
	mov	(___ckd_sub_ulong_r_65536_39 + 2),b
	mov	a,___ckd_sub_ulong_PARM_2
	clr	c
	subb	a,___ckd_sub_ulong_PARM_3
	mov	___ckd_sub_ulong_result_65536_40,a
	mov	a,(___ckd_sub_ulong_PARM_2 + 1)
	subb	a,(___ckd_sub_ulong_PARM_3 + 1)
	mov	(___ckd_sub_ulong_result_65536_40 + 1),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 2)
	subb	a,(___ckd_sub_ulong_PARM_3 + 2)
	mov	(___ckd_sub_ulong_result_65536_40 + 2),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 3)
	subb	a,(___ckd_sub_ulong_PARM_3 + 3)
	mov	(___ckd_sub_ulong_result_65536_40 + 3),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 4)
	subb	a,(___ckd_sub_ulong_PARM_3 + 4)
	mov	(___ckd_sub_ulong_result_65536_40 + 4),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 5)
	subb	a,(___ckd_sub_ulong_PARM_3 + 5)
	mov	(___ckd_sub_ulong_result_65536_40 + 5),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 6)
	subb	a,(___ckd_sub_ulong_PARM_3 + 6)
	mov	(___ckd_sub_ulong_result_65536_40 + 6),a
	mov	a,(___ckd_sub_ulong_PARM_2 + 7)
	subb	a,(___ckd_sub_ulong_PARM_3 + 7)
	mov	(___ckd_sub_ulong_result_65536_40 + 7),a
	mov	r1,___ckd_sub_ulong_result_65536_40
	mov	r2,(___ckd_sub_ulong_result_65536_40 + 1)
	mov	r3,(___ckd_sub_ulong_result_65536_40 + 2)
	mov	r7,(___ckd_sub_ulong_result_65536_40 + 3)
	mov	dpl,___ckd_sub_ulong_r_65536_39
	mov	dph,(___ckd_sub_ulong_r_65536_39 + 1)
	mov	b,(___ckd_sub_ulong_r_65536_39 + 2)
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
	cjne	a,___ckd_sub_ulong_result_65536_40,00103$
	mov	a,r2
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_ulong_result_65536_40 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_sub_ulong_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
