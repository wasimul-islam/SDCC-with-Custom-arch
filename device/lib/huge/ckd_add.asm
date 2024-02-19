;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_add
	.optsdcc -mmcs51 --model-huge
	
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
___ckd_add_schar_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_uchar_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_short_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_ushort_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_int_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_uint_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_long_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_add_ulong_sloc0_1_0:
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
___ckd_add_schar_sloc1_1_0:
	.ds 1
___ckd_add_uchar_sloc1_1_0:
	.ds 1
___ckd_add_short_sloc1_1_0:
	.ds 1
___ckd_add_ushort_sloc1_1_0:
	.ds 1
___ckd_add_int_sloc1_1_0:
	.ds 1
___ckd_add_uint_sloc1_1_0:
	.ds 1
___ckd_add_long_sloc1_1_0:
	.ds 1
___ckd_add_ulong_sloc1_1_0:
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
	.ds 3
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_uchar_r_65536_11:
	.ds 3
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_short_r_65536_13:
	.ds 3
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_ushort_r_65536_15:
	.ds 3
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_int_r_65536_17:
	.ds 3
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_uint_r_65536_19:
	.ds 3
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_long_r_65536_21:
	.ds 3
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
	.ds 8
___ckd_add_ulong_r_65536_23:
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
;Allocation info for local variables in function '__ckd_add_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_schar_PARM_2'
;b                         Allocated with name '___ckd_add_schar_PARM_3'
;r                         Allocated with name '___ckd_add_schar_r_65536_9'
;result                    Allocated with name '___ckd_add_schar_result_65536_10'
;sloc0                     Allocated with name '___ckd_add_schar_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_schar_r_65536_9
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_schar_PARM_3
	movx	a,@dptr
	mov	___ckd_add_schar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_schar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_schar_PARM_2
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
	mov	a,___ckd_add_schar_sloc0_1_0
	add	a,r0
	mov	___ckd_add_schar_sloc0_1_0,a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_schar_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_schar_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_schar_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_schar_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_schar_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_schar_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_schar_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_schar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_schar_r_65536_9
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_schar_sloc0_1_0
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
	cjne	a,___ckd_add_schar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_schar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_schar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uchar_PARM_2'
;b                         Allocated with name '___ckd_add_uchar_PARM_3'
;r                         Allocated with name '___ckd_add_uchar_r_65536_11'
;result                    Allocated with name '___ckd_add_uchar_result_65536_12'
;sloc0                     Allocated with name '___ckd_add_uchar_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:52: inline _Bool __ckd_add_uchar __CKD_DEFAULT_IMPL(unsigned char, +)
;	-----------------------------------------
;	 function __ckd_add_uchar
;	-----------------------------------------
___ckd_add_uchar:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_uchar_r_65536_11
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_uchar_PARM_3
	movx	a,@dptr
	mov	___ckd_add_uchar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uchar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_uchar_PARM_2
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
	mov	a,___ckd_add_uchar_sloc0_1_0
	add	a,r0
	mov	___ckd_add_uchar_sloc0_1_0,a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_uchar_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_uchar_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_uchar_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_uchar_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_uchar_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_uchar_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_uchar_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_uchar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_uchar_r_65536_11
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_uchar_sloc0_1_0
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
	cjne	a,___ckd_add_uchar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_add_uchar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_uchar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_short_PARM_2'
;b                         Allocated with name '___ckd_add_short_PARM_3'
;r                         Allocated with name '___ckd_add_short_r_65536_13'
;result                    Allocated with name '___ckd_add_short_result_65536_14'
;sloc0                     Allocated with name '___ckd_add_short_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:53: inline _Bool __ckd_add_short __CKD_DEFAULT_IMPL(short, +)
;	-----------------------------------------
;	 function __ckd_add_short
;	-----------------------------------------
___ckd_add_short:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_short_r_65536_13
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_short_PARM_3
	movx	a,@dptr
	mov	___ckd_add_short_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_short_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_short_PARM_2
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
	mov	a,___ckd_add_short_sloc0_1_0
	add	a,r0
	mov	___ckd_add_short_sloc0_1_0,a
	mov	a,(___ckd_add_short_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_short_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_short_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_short_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_short_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_short_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_short_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_short_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_short_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_short_r_65536_13
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_short_sloc0_1_0
	mov	r1,(___ckd_add_short_sloc0_1_0 + 1)
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
	cjne	a,___ckd_add_short_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_short_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_add_short_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_add_short_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_add_short_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_add_short_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_add_short_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_add_short_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_short_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ushort_PARM_2'
;b                         Allocated with name '___ckd_add_ushort_PARM_3'
;r                         Allocated with name '___ckd_add_ushort_r_65536_15'
;result                    Allocated with name '___ckd_add_ushort_result_65536_16'
;sloc0                     Allocated with name '___ckd_add_ushort_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:54: inline _Bool __ckd_add_ushort __CKD_DEFAULT_IMPL(unsigned short, +)
;	-----------------------------------------
;	 function __ckd_add_ushort
;	-----------------------------------------
___ckd_add_ushort:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_ushort_r_65536_15
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_ushort_PARM_3
	movx	a,@dptr
	mov	___ckd_add_ushort_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ushort_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_ushort_PARM_2
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
	mov	a,___ckd_add_ushort_sloc0_1_0
	add	a,r0
	mov	___ckd_add_ushort_sloc0_1_0,a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_ushort_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_ushort_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_ushort_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_ushort_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_ushort_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_ushort_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_ushort_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_ushort_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_ushort_r_65536_15
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_ushort_sloc0_1_0
	mov	r1,(___ckd_add_ushort_sloc0_1_0 + 1)
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
	cjne	a,___ckd_add_ushort_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_add_ushort_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_ushort_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_int_PARM_2'
;b                         Allocated with name '___ckd_add_int_PARM_3'
;r                         Allocated with name '___ckd_add_int_r_65536_17'
;result                    Allocated with name '___ckd_add_int_result_65536_18'
;sloc0                     Allocated with name '___ckd_add_int_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:55: inline _Bool __ckd_add_int __CKD_DEFAULT_IMPL(int, +)
;	-----------------------------------------
;	 function __ckd_add_int
;	-----------------------------------------
___ckd_add_int:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_int_r_65536_17
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_int_PARM_3
	movx	a,@dptr
	mov	___ckd_add_int_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_int_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_int_PARM_2
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
	mov	a,___ckd_add_int_sloc0_1_0
	add	a,r0
	mov	___ckd_add_int_sloc0_1_0,a
	mov	a,(___ckd_add_int_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_int_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_int_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_int_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_int_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_int_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_int_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_int_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_int_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_int_r_65536_17
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_int_sloc0_1_0
	mov	r1,(___ckd_add_int_sloc0_1_0 + 1)
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
	cjne	a,___ckd_add_int_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_int_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_add_int_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_add_int_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_add_int_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_add_int_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_add_int_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_add_int_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_int_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uint_PARM_2'
;b                         Allocated with name '___ckd_add_uint_PARM_3'
;r                         Allocated with name '___ckd_add_uint_r_65536_19'
;result                    Allocated with name '___ckd_add_uint_result_65536_20'
;sloc0                     Allocated with name '___ckd_add_uint_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:56: inline _Bool __ckd_add_uint __CKD_DEFAULT_IMPL(unsigned int, +)
;	-----------------------------------------
;	 function __ckd_add_uint
;	-----------------------------------------
___ckd_add_uint:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_uint_r_65536_19
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_uint_PARM_3
	movx	a,@dptr
	mov	___ckd_add_uint_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_uint_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_uint_PARM_2
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
	mov	a,___ckd_add_uint_sloc0_1_0
	add	a,r0
	mov	___ckd_add_uint_sloc0_1_0,a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_uint_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_uint_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_uint_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_uint_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_uint_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_uint_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_uint_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_uint_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_uint_r_65536_19
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_uint_sloc0_1_0
	mov	r1,(___ckd_add_uint_sloc0_1_0 + 1)
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
	cjne	a,___ckd_add_uint_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_add_uint_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_uint_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_long_PARM_2'
;b                         Allocated with name '___ckd_add_long_PARM_3'
;r                         Allocated with name '___ckd_add_long_r_65536_21'
;result                    Allocated with name '___ckd_add_long_result_65536_22'
;sloc0                     Allocated with name '___ckd_add_long_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:57: inline _Bool __ckd_add_long __CKD_DEFAULT_IMPL(long, +)
;	-----------------------------------------
;	 function __ckd_add_long
;	-----------------------------------------
___ckd_add_long:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_long_r_65536_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_long_PARM_3
	movx	a,@dptr
	mov	___ckd_add_long_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_long_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_long_PARM_2
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
	mov	a,___ckd_add_long_sloc0_1_0
	add	a,r0
	mov	___ckd_add_long_sloc0_1_0,a
	mov	a,(___ckd_add_long_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_long_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_long_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_long_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_long_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_long_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_long_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_long_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_long_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_long_r_65536_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_long_sloc0_1_0
	mov	r1,(___ckd_add_long_sloc0_1_0 + 1)
	mov	r2,(___ckd_add_long_sloc0_1_0 + 2)
	mov	r3,(___ckd_add_long_sloc0_1_0 + 3)
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
	cjne	a,___ckd_add_long_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_long_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_long_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_long_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_add_long_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_add_long_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_add_long_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_add_long_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_long_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ulong_PARM_2'
;b                         Allocated with name '___ckd_add_ulong_PARM_3'
;r                         Allocated with name '___ckd_add_ulong_r_65536_23'
;result                    Allocated with name '___ckd_add_ulong_result_65536_24'
;sloc0                     Allocated with name '___ckd_add_ulong_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:58: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	-----------------------------------------
;	 function __ckd_add_ulong
;	-----------------------------------------
___ckd_add_ulong:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_add_ulong_r_65536_23
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_add_ulong_PARM_3
	movx	a,@dptr
	mov	___ckd_add_ulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_add_ulong_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_ulong_PARM_2
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
	mov	a,___ckd_add_ulong_sloc0_1_0
	add	a,r0
	mov	___ckd_add_ulong_sloc0_1_0,a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 1)
	addc	a,r1
	mov	(___ckd_add_ulong_sloc0_1_0 + 1),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 2)
	addc	a,r2
	mov	(___ckd_add_ulong_sloc0_1_0 + 2),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 3)
	addc	a,r3
	mov	(___ckd_add_ulong_sloc0_1_0 + 3),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 4)
	addc	a,r4
	mov	(___ckd_add_ulong_sloc0_1_0 + 4),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 5)
	addc	a,r5
	mov	(___ckd_add_ulong_sloc0_1_0 + 5),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 6)
	addc	a,r6
	mov	(___ckd_add_ulong_sloc0_1_0 + 6),a
	mov	a,(___ckd_add_ulong_sloc0_1_0 + 7)
	addc	a,r7
	mov	(___ckd_add_ulong_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_add_ulong_r_65536_23
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_add_ulong_sloc0_1_0
	mov	r1,(___ckd_add_ulong_sloc0_1_0 + 1)
	mov	r2,(___ckd_add_ulong_sloc0_1_0 + 2)
	mov	r3,(___ckd_add_ulong_sloc0_1_0 + 3)
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
	cjne	a,___ckd_add_ulong_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_add_ulong_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_add_ulong_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
