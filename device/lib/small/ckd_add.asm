;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_add
	.optsdcc -mmcs51 --model-small
	
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
___ckd_add_schar_PARM_2:
	.ds 8
___ckd_add_schar_PARM_3:
	.ds 8
___ckd_add_schar_r_65536_9:
	.ds 3
___ckd_add_schar_result_65536_10:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_uchar_r_65536_11:
	.ds 3
___ckd_add_uchar_result_65536_12:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_short_r_65536_13:
	.ds 3
___ckd_add_short_result_65536_14:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_ushort_r_65536_15:
	.ds 3
___ckd_add_ushort_result_65536_16:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_int_r_65536_17:
	.ds 3
___ckd_add_int_result_65536_18:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_uint_r_65536_19:
	.ds 3
___ckd_add_uint_result_65536_20:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_long_r_65536_21:
	.ds 3
___ckd_add_long_result_65536_22:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
	.ds 8
___ckd_add_ulong_r_65536_23:
	.ds 3
___ckd_add_ulong_result_65536_24:
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
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	___ckd_add_schar_r_65536_9,dpl
	mov	(___ckd_add_schar_r_65536_9 + 1),dph
	mov	(___ckd_add_schar_r_65536_9 + 2),b
	mov	a,___ckd_add_schar_PARM_3
	add	a,___ckd_add_schar_PARM_2
	mov	___ckd_add_schar_result_65536_10,a
	mov	a,(___ckd_add_schar_PARM_3 + 1)
	addc	a,(___ckd_add_schar_PARM_2 + 1)
	mov	(___ckd_add_schar_result_65536_10 + 1),a
	mov	a,(___ckd_add_schar_PARM_3 + 2)
	addc	a,(___ckd_add_schar_PARM_2 + 2)
	mov	(___ckd_add_schar_result_65536_10 + 2),a
	mov	a,(___ckd_add_schar_PARM_3 + 3)
	addc	a,(___ckd_add_schar_PARM_2 + 3)
	mov	(___ckd_add_schar_result_65536_10 + 3),a
	mov	a,(___ckd_add_schar_PARM_3 + 4)
	addc	a,(___ckd_add_schar_PARM_2 + 4)
	mov	(___ckd_add_schar_result_65536_10 + 4),a
	mov	a,(___ckd_add_schar_PARM_3 + 5)
	addc	a,(___ckd_add_schar_PARM_2 + 5)
	mov	(___ckd_add_schar_result_65536_10 + 5),a
	mov	a,(___ckd_add_schar_PARM_3 + 6)
	addc	a,(___ckd_add_schar_PARM_2 + 6)
	mov	(___ckd_add_schar_result_65536_10 + 6),a
	mov	a,(___ckd_add_schar_PARM_3 + 7)
	addc	a,(___ckd_add_schar_PARM_2 + 7)
	mov	(___ckd_add_schar_result_65536_10 + 7),a
	mov	r7,___ckd_add_schar_result_65536_10
	mov	dpl,___ckd_add_schar_r_65536_9
	mov	dph,(___ckd_add_schar_r_65536_9 + 1)
	mov	b,(___ckd_add_schar_r_65536_9 + 2)
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
	cjne	a,___ckd_add_schar_result_65536_10,00103$
	mov	a,r1
	cjne	a,(___ckd_add_schar_result_65536_10 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_schar_result_65536_10 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_schar_result_65536_10 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_schar_result_65536_10 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_schar_result_65536_10 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_schar_result_65536_10 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_schar_result_65536_10 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_schar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_uchar_r_65536_11,dpl
	mov	(___ckd_add_uchar_r_65536_11 + 1),dph
	mov	(___ckd_add_uchar_r_65536_11 + 2),b
	mov	a,___ckd_add_uchar_PARM_3
	add	a,___ckd_add_uchar_PARM_2
	mov	___ckd_add_uchar_result_65536_12,a
	mov	a,(___ckd_add_uchar_PARM_3 + 1)
	addc	a,(___ckd_add_uchar_PARM_2 + 1)
	mov	(___ckd_add_uchar_result_65536_12 + 1),a
	mov	a,(___ckd_add_uchar_PARM_3 + 2)
	addc	a,(___ckd_add_uchar_PARM_2 + 2)
	mov	(___ckd_add_uchar_result_65536_12 + 2),a
	mov	a,(___ckd_add_uchar_PARM_3 + 3)
	addc	a,(___ckd_add_uchar_PARM_2 + 3)
	mov	(___ckd_add_uchar_result_65536_12 + 3),a
	mov	a,(___ckd_add_uchar_PARM_3 + 4)
	addc	a,(___ckd_add_uchar_PARM_2 + 4)
	mov	(___ckd_add_uchar_result_65536_12 + 4),a
	mov	a,(___ckd_add_uchar_PARM_3 + 5)
	addc	a,(___ckd_add_uchar_PARM_2 + 5)
	mov	(___ckd_add_uchar_result_65536_12 + 5),a
	mov	a,(___ckd_add_uchar_PARM_3 + 6)
	addc	a,(___ckd_add_uchar_PARM_2 + 6)
	mov	(___ckd_add_uchar_result_65536_12 + 6),a
	mov	a,(___ckd_add_uchar_PARM_3 + 7)
	addc	a,(___ckd_add_uchar_PARM_2 + 7)
	mov	(___ckd_add_uchar_result_65536_12 + 7),a
	mov	r7,___ckd_add_uchar_result_65536_12
	mov	dpl,___ckd_add_uchar_r_65536_11
	mov	dph,(___ckd_add_uchar_r_65536_11 + 1)
	mov	b,(___ckd_add_uchar_r_65536_11 + 2)
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
	cjne	a,___ckd_add_uchar_result_65536_12,00103$
	mov	a,r1
	cjne	a,(___ckd_add_uchar_result_65536_12 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_uchar_result_65536_12 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_uchar_result_65536_12 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_uchar_result_65536_12 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_uchar_result_65536_12 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_uchar_result_65536_12 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_uchar_result_65536_12 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_uchar_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_short_r_65536_13,dpl
	mov	(___ckd_add_short_r_65536_13 + 1),dph
	mov	(___ckd_add_short_r_65536_13 + 2),b
	mov	a,___ckd_add_short_PARM_3
	add	a,___ckd_add_short_PARM_2
	mov	___ckd_add_short_result_65536_14,a
	mov	a,(___ckd_add_short_PARM_3 + 1)
	addc	a,(___ckd_add_short_PARM_2 + 1)
	mov	(___ckd_add_short_result_65536_14 + 1),a
	mov	a,(___ckd_add_short_PARM_3 + 2)
	addc	a,(___ckd_add_short_PARM_2 + 2)
	mov	(___ckd_add_short_result_65536_14 + 2),a
	mov	a,(___ckd_add_short_PARM_3 + 3)
	addc	a,(___ckd_add_short_PARM_2 + 3)
	mov	(___ckd_add_short_result_65536_14 + 3),a
	mov	a,(___ckd_add_short_PARM_3 + 4)
	addc	a,(___ckd_add_short_PARM_2 + 4)
	mov	(___ckd_add_short_result_65536_14 + 4),a
	mov	a,(___ckd_add_short_PARM_3 + 5)
	addc	a,(___ckd_add_short_PARM_2 + 5)
	mov	(___ckd_add_short_result_65536_14 + 5),a
	mov	a,(___ckd_add_short_PARM_3 + 6)
	addc	a,(___ckd_add_short_PARM_2 + 6)
	mov	(___ckd_add_short_result_65536_14 + 6),a
	mov	a,(___ckd_add_short_PARM_3 + 7)
	addc	a,(___ckd_add_short_PARM_2 + 7)
	mov	(___ckd_add_short_result_65536_14 + 7),a
	mov	r1,___ckd_add_short_result_65536_14
	mov	r7,(___ckd_add_short_result_65536_14 + 1)
	mov	dpl,___ckd_add_short_r_65536_13
	mov	dph,(___ckd_add_short_r_65536_13 + 1)
	mov	b,(___ckd_add_short_r_65536_13 + 2)
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
	cjne	a,___ckd_add_short_result_65536_14,00103$
	mov	a,r0
	cjne	a,(___ckd_add_short_result_65536_14 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_short_result_65536_14 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_short_result_65536_14 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_short_result_65536_14 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_short_result_65536_14 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_short_result_65536_14 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_short_result_65536_14 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_short_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_ushort_r_65536_15,dpl
	mov	(___ckd_add_ushort_r_65536_15 + 1),dph
	mov	(___ckd_add_ushort_r_65536_15 + 2),b
	mov	a,___ckd_add_ushort_PARM_3
	add	a,___ckd_add_ushort_PARM_2
	mov	___ckd_add_ushort_result_65536_16,a
	mov	a,(___ckd_add_ushort_PARM_3 + 1)
	addc	a,(___ckd_add_ushort_PARM_2 + 1)
	mov	(___ckd_add_ushort_result_65536_16 + 1),a
	mov	a,(___ckd_add_ushort_PARM_3 + 2)
	addc	a,(___ckd_add_ushort_PARM_2 + 2)
	mov	(___ckd_add_ushort_result_65536_16 + 2),a
	mov	a,(___ckd_add_ushort_PARM_3 + 3)
	addc	a,(___ckd_add_ushort_PARM_2 + 3)
	mov	(___ckd_add_ushort_result_65536_16 + 3),a
	mov	a,(___ckd_add_ushort_PARM_3 + 4)
	addc	a,(___ckd_add_ushort_PARM_2 + 4)
	mov	(___ckd_add_ushort_result_65536_16 + 4),a
	mov	a,(___ckd_add_ushort_PARM_3 + 5)
	addc	a,(___ckd_add_ushort_PARM_2 + 5)
	mov	(___ckd_add_ushort_result_65536_16 + 5),a
	mov	a,(___ckd_add_ushort_PARM_3 + 6)
	addc	a,(___ckd_add_ushort_PARM_2 + 6)
	mov	(___ckd_add_ushort_result_65536_16 + 6),a
	mov	a,(___ckd_add_ushort_PARM_3 + 7)
	addc	a,(___ckd_add_ushort_PARM_2 + 7)
	mov	(___ckd_add_ushort_result_65536_16 + 7),a
	mov	r1,___ckd_add_ushort_result_65536_16
	mov	r7,(___ckd_add_ushort_result_65536_16 + 1)
	mov	dpl,___ckd_add_ushort_r_65536_15
	mov	dph,(___ckd_add_ushort_r_65536_15 + 1)
	mov	b,(___ckd_add_ushort_r_65536_15 + 2)
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
	cjne	a,___ckd_add_ushort_result_65536_16,00103$
	mov	a,r0
	cjne	a,(___ckd_add_ushort_result_65536_16 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_ushort_result_65536_16 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_ushort_result_65536_16 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_ushort_result_65536_16 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_ushort_result_65536_16 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_ushort_result_65536_16 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_ushort_result_65536_16 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_ushort_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_int_r_65536_17,dpl
	mov	(___ckd_add_int_r_65536_17 + 1),dph
	mov	(___ckd_add_int_r_65536_17 + 2),b
	mov	a,___ckd_add_int_PARM_3
	add	a,___ckd_add_int_PARM_2
	mov	___ckd_add_int_result_65536_18,a
	mov	a,(___ckd_add_int_PARM_3 + 1)
	addc	a,(___ckd_add_int_PARM_2 + 1)
	mov	(___ckd_add_int_result_65536_18 + 1),a
	mov	a,(___ckd_add_int_PARM_3 + 2)
	addc	a,(___ckd_add_int_PARM_2 + 2)
	mov	(___ckd_add_int_result_65536_18 + 2),a
	mov	a,(___ckd_add_int_PARM_3 + 3)
	addc	a,(___ckd_add_int_PARM_2 + 3)
	mov	(___ckd_add_int_result_65536_18 + 3),a
	mov	a,(___ckd_add_int_PARM_3 + 4)
	addc	a,(___ckd_add_int_PARM_2 + 4)
	mov	(___ckd_add_int_result_65536_18 + 4),a
	mov	a,(___ckd_add_int_PARM_3 + 5)
	addc	a,(___ckd_add_int_PARM_2 + 5)
	mov	(___ckd_add_int_result_65536_18 + 5),a
	mov	a,(___ckd_add_int_PARM_3 + 6)
	addc	a,(___ckd_add_int_PARM_2 + 6)
	mov	(___ckd_add_int_result_65536_18 + 6),a
	mov	a,(___ckd_add_int_PARM_3 + 7)
	addc	a,(___ckd_add_int_PARM_2 + 7)
	mov	(___ckd_add_int_result_65536_18 + 7),a
	mov	r1,___ckd_add_int_result_65536_18
	mov	r7,(___ckd_add_int_result_65536_18 + 1)
	mov	dpl,___ckd_add_int_r_65536_17
	mov	dph,(___ckd_add_int_r_65536_17 + 1)
	mov	b,(___ckd_add_int_r_65536_17 + 2)
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
	cjne	a,___ckd_add_int_result_65536_18,00103$
	mov	a,r0
	cjne	a,(___ckd_add_int_result_65536_18 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_int_result_65536_18 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_int_result_65536_18 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_int_result_65536_18 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_int_result_65536_18 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_int_result_65536_18 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_int_result_65536_18 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_int_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_uint_r_65536_19,dpl
	mov	(___ckd_add_uint_r_65536_19 + 1),dph
	mov	(___ckd_add_uint_r_65536_19 + 2),b
	mov	a,___ckd_add_uint_PARM_3
	add	a,___ckd_add_uint_PARM_2
	mov	___ckd_add_uint_result_65536_20,a
	mov	a,(___ckd_add_uint_PARM_3 + 1)
	addc	a,(___ckd_add_uint_PARM_2 + 1)
	mov	(___ckd_add_uint_result_65536_20 + 1),a
	mov	a,(___ckd_add_uint_PARM_3 + 2)
	addc	a,(___ckd_add_uint_PARM_2 + 2)
	mov	(___ckd_add_uint_result_65536_20 + 2),a
	mov	a,(___ckd_add_uint_PARM_3 + 3)
	addc	a,(___ckd_add_uint_PARM_2 + 3)
	mov	(___ckd_add_uint_result_65536_20 + 3),a
	mov	a,(___ckd_add_uint_PARM_3 + 4)
	addc	a,(___ckd_add_uint_PARM_2 + 4)
	mov	(___ckd_add_uint_result_65536_20 + 4),a
	mov	a,(___ckd_add_uint_PARM_3 + 5)
	addc	a,(___ckd_add_uint_PARM_2 + 5)
	mov	(___ckd_add_uint_result_65536_20 + 5),a
	mov	a,(___ckd_add_uint_PARM_3 + 6)
	addc	a,(___ckd_add_uint_PARM_2 + 6)
	mov	(___ckd_add_uint_result_65536_20 + 6),a
	mov	a,(___ckd_add_uint_PARM_3 + 7)
	addc	a,(___ckd_add_uint_PARM_2 + 7)
	mov	(___ckd_add_uint_result_65536_20 + 7),a
	mov	r1,___ckd_add_uint_result_65536_20
	mov	r7,(___ckd_add_uint_result_65536_20 + 1)
	mov	dpl,___ckd_add_uint_r_65536_19
	mov	dph,(___ckd_add_uint_r_65536_19 + 1)
	mov	b,(___ckd_add_uint_r_65536_19 + 2)
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
	cjne	a,___ckd_add_uint_result_65536_20,00103$
	mov	a,r0
	cjne	a,(___ckd_add_uint_result_65536_20 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_uint_result_65536_20 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_uint_result_65536_20 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_uint_result_65536_20 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_uint_result_65536_20 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_uint_result_65536_20 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_uint_result_65536_20 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_uint_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_long_r_65536_21,dpl
	mov	(___ckd_add_long_r_65536_21 + 1),dph
	mov	(___ckd_add_long_r_65536_21 + 2),b
	mov	a,___ckd_add_long_PARM_3
	add	a,___ckd_add_long_PARM_2
	mov	___ckd_add_long_result_65536_22,a
	mov	a,(___ckd_add_long_PARM_3 + 1)
	addc	a,(___ckd_add_long_PARM_2 + 1)
	mov	(___ckd_add_long_result_65536_22 + 1),a
	mov	a,(___ckd_add_long_PARM_3 + 2)
	addc	a,(___ckd_add_long_PARM_2 + 2)
	mov	(___ckd_add_long_result_65536_22 + 2),a
	mov	a,(___ckd_add_long_PARM_3 + 3)
	addc	a,(___ckd_add_long_PARM_2 + 3)
	mov	(___ckd_add_long_result_65536_22 + 3),a
	mov	a,(___ckd_add_long_PARM_3 + 4)
	addc	a,(___ckd_add_long_PARM_2 + 4)
	mov	(___ckd_add_long_result_65536_22 + 4),a
	mov	a,(___ckd_add_long_PARM_3 + 5)
	addc	a,(___ckd_add_long_PARM_2 + 5)
	mov	(___ckd_add_long_result_65536_22 + 5),a
	mov	a,(___ckd_add_long_PARM_3 + 6)
	addc	a,(___ckd_add_long_PARM_2 + 6)
	mov	(___ckd_add_long_result_65536_22 + 6),a
	mov	a,(___ckd_add_long_PARM_3 + 7)
	addc	a,(___ckd_add_long_PARM_2 + 7)
	mov	(___ckd_add_long_result_65536_22 + 7),a
	mov	r1,___ckd_add_long_result_65536_22
	mov	r2,(___ckd_add_long_result_65536_22 + 1)
	mov	r3,(___ckd_add_long_result_65536_22 + 2)
	mov	r7,(___ckd_add_long_result_65536_22 + 3)
	mov	dpl,___ckd_add_long_r_65536_21
	mov	dph,(___ckd_add_long_r_65536_21 + 1)
	mov	b,(___ckd_add_long_r_65536_21 + 2)
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
	cjne	a,___ckd_add_long_result_65536_22,00103$
	mov	a,r2
	cjne	a,(___ckd_add_long_result_65536_22 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_add_long_result_65536_22 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_add_long_result_65536_22 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_long_result_65536_22 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_long_result_65536_22 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_long_result_65536_22 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_long_result_65536_22 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_long_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
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
	mov	___ckd_add_ulong_r_65536_23,dpl
	mov	(___ckd_add_ulong_r_65536_23 + 1),dph
	mov	(___ckd_add_ulong_r_65536_23 + 2),b
	mov	a,___ckd_add_ulong_PARM_3
	add	a,___ckd_add_ulong_PARM_2
	mov	___ckd_add_ulong_result_65536_24,a
	mov	a,(___ckd_add_ulong_PARM_3 + 1)
	addc	a,(___ckd_add_ulong_PARM_2 + 1)
	mov	(___ckd_add_ulong_result_65536_24 + 1),a
	mov	a,(___ckd_add_ulong_PARM_3 + 2)
	addc	a,(___ckd_add_ulong_PARM_2 + 2)
	mov	(___ckd_add_ulong_result_65536_24 + 2),a
	mov	a,(___ckd_add_ulong_PARM_3 + 3)
	addc	a,(___ckd_add_ulong_PARM_2 + 3)
	mov	(___ckd_add_ulong_result_65536_24 + 3),a
	mov	a,(___ckd_add_ulong_PARM_3 + 4)
	addc	a,(___ckd_add_ulong_PARM_2 + 4)
	mov	(___ckd_add_ulong_result_65536_24 + 4),a
	mov	a,(___ckd_add_ulong_PARM_3 + 5)
	addc	a,(___ckd_add_ulong_PARM_2 + 5)
	mov	(___ckd_add_ulong_result_65536_24 + 5),a
	mov	a,(___ckd_add_ulong_PARM_3 + 6)
	addc	a,(___ckd_add_ulong_PARM_2 + 6)
	mov	(___ckd_add_ulong_result_65536_24 + 6),a
	mov	a,(___ckd_add_ulong_PARM_3 + 7)
	addc	a,(___ckd_add_ulong_PARM_2 + 7)
	mov	(___ckd_add_ulong_result_65536_24 + 7),a
	mov	r1,___ckd_add_ulong_result_65536_24
	mov	r2,(___ckd_add_ulong_result_65536_24 + 1)
	mov	r3,(___ckd_add_ulong_result_65536_24 + 2)
	mov	r7,(___ckd_add_ulong_result_65536_24 + 3)
	mov	dpl,___ckd_add_ulong_r_65536_23
	mov	dph,(___ckd_add_ulong_r_65536_23 + 1)
	mov	b,(___ckd_add_ulong_r_65536_23 + 2)
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
	cjne	a,___ckd_add_ulong_result_65536_24,00103$
	mov	a,r2
	cjne	a,(___ckd_add_ulong_result_65536_24 + 1),00103$
	mov	a,r3
	cjne	a,(___ckd_add_ulong_result_65536_24 + 2),00103$
	mov	a,r0
	cjne	a,(___ckd_add_ulong_result_65536_24 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_ulong_result_65536_24 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_ulong_result_65536_24 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_ulong_result_65536_24 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_ulong_result_65536_24 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_add_ulong_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
