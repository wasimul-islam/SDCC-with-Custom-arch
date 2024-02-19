;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	.optsdcc -mmcs51 --model-huge
	
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
___ckd_sub_schar_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_uchar_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_short_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_ushort_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_int_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_uint_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_long_sloc0_1_0:
	.ds 8
	.area	OSEG    (OVR,DATA)
___ckd_sub_ulong_sloc0_1_0:
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
___ckd_sub_schar_sloc1_1_0:
	.ds 1
___ckd_sub_uchar_sloc1_1_0:
	.ds 1
___ckd_sub_short_sloc1_1_0:
	.ds 1
___ckd_sub_ushort_sloc1_1_0:
	.ds 1
___ckd_sub_int_sloc1_1_0:
	.ds 1
___ckd_sub_uint_sloc1_1_0:
	.ds 1
___ckd_sub_long_sloc1_1_0:
	.ds 1
___ckd_sub_ulong_sloc1_1_0:
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
	.ds 3
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_uchar_r_65536_27:
	.ds 3
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_short_r_65536_29:
	.ds 3
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_ushort_r_65536_31:
	.ds 3
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_int_r_65536_33:
	.ds 3
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_uint_r_65536_35:
	.ds 3
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_long_r_65536_37:
	.ds 3
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
	.ds 8
___ckd_sub_ulong_r_65536_39:
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_schar_PARM_2'
;b                         Allocated with name '___ckd_sub_schar_PARM_3'
;r                         Allocated with name '___ckd_sub_schar_r_65536_25'
;result                    Allocated with name '___ckd_sub_schar_result_65536_26'
;sloc0                     Allocated with name '___ckd_sub_schar_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_schar_r_65536_25
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_schar_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_schar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_schar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_schar_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_schar_sloc0_1_0
	mov	___ckd_sub_schar_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 1)
	mov	(___ckd_sub_schar_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 2)
	mov	(___ckd_sub_schar_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 3)
	mov	(___ckd_sub_schar_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 4)
	mov	(___ckd_sub_schar_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 5)
	mov	(___ckd_sub_schar_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 6)
	mov	(___ckd_sub_schar_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_schar_sloc0_1_0 + 7)
	mov	(___ckd_sub_schar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_schar_r_65536_25
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_schar_sloc0_1_0
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
	cjne	a,___ckd_sub_schar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_schar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_schar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uchar_PARM_2'
;b                         Allocated with name '___ckd_sub_uchar_PARM_3'
;r                         Allocated with name '___ckd_sub_uchar_r_65536_27'
;result                    Allocated with name '___ckd_sub_uchar_result_65536_28'
;sloc0                     Allocated with name '___ckd_sub_uchar_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
___ckd_sub_uchar:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_uchar_r_65536_27
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_uchar_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_uchar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uchar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_uchar_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_uchar_sloc0_1_0
	mov	___ckd_sub_uchar_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 1)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 2)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 3)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 4)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 5)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 6)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_uchar_sloc0_1_0 + 7)
	mov	(___ckd_sub_uchar_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_uchar_r_65536_27
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_uchar_sloc0_1_0
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
	cjne	a,___ckd_sub_uchar_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 3),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 4),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 5),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 6),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_uchar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_uchar_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_short_PARM_2'
;b                         Allocated with name '___ckd_sub_short_PARM_3'
;r                         Allocated with name '___ckd_sub_short_r_65536_29'
;result                    Allocated with name '___ckd_sub_short_result_65536_30'
;sloc0                     Allocated with name '___ckd_sub_short_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
___ckd_sub_short:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_short_r_65536_29
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_short_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_short_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_short_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_short_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_short_sloc0_1_0
	mov	___ckd_sub_short_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_short_sloc0_1_0 + 1)
	mov	(___ckd_sub_short_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_short_sloc0_1_0 + 2)
	mov	(___ckd_sub_short_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_short_sloc0_1_0 + 3)
	mov	(___ckd_sub_short_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_short_sloc0_1_0 + 4)
	mov	(___ckd_sub_short_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_short_sloc0_1_0 + 5)
	mov	(___ckd_sub_short_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_short_sloc0_1_0 + 6)
	mov	(___ckd_sub_short_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_short_sloc0_1_0 + 7)
	mov	(___ckd_sub_short_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_short_r_65536_29
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_short_sloc0_1_0
	mov	r1,(___ckd_sub_short_sloc0_1_0 + 1)
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
	cjne	a,___ckd_sub_short_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_short_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_short_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ushort_PARM_2'
;b                         Allocated with name '___ckd_sub_ushort_PARM_3'
;r                         Allocated with name '___ckd_sub_ushort_r_65536_31'
;result                    Allocated with name '___ckd_sub_ushort_result_65536_32'
;sloc0                     Allocated with name '___ckd_sub_ushort_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
___ckd_sub_ushort:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_ushort_r_65536_31
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_ushort_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_ushort_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ushort_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_ushort_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_ushort_sloc0_1_0
	mov	___ckd_sub_ushort_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 1)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 2)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 3)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 4)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 5)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 6)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_ushort_sloc0_1_0 + 7)
	mov	(___ckd_sub_ushort_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_ushort_r_65536_31
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_ushort_sloc0_1_0
	mov	r1,(___ckd_sub_ushort_sloc0_1_0 + 1)
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
	cjne	a,___ckd_sub_ushort_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_ushort_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_ushort_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_int_PARM_2'
;b                         Allocated with name '___ckd_sub_int_PARM_3'
;r                         Allocated with name '___ckd_sub_int_r_65536_33'
;result                    Allocated with name '___ckd_sub_int_result_65536_34'
;sloc0                     Allocated with name '___ckd_sub_int_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
___ckd_sub_int:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_int_r_65536_33
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_int_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_int_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_int_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_int_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_int_sloc0_1_0
	mov	___ckd_sub_int_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_int_sloc0_1_0 + 1)
	mov	(___ckd_sub_int_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_int_sloc0_1_0 + 2)
	mov	(___ckd_sub_int_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_int_sloc0_1_0 + 3)
	mov	(___ckd_sub_int_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_int_sloc0_1_0 + 4)
	mov	(___ckd_sub_int_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_int_sloc0_1_0 + 5)
	mov	(___ckd_sub_int_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_int_sloc0_1_0 + 6)
	mov	(___ckd_sub_int_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_int_sloc0_1_0 + 7)
	mov	(___ckd_sub_int_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_int_r_65536_33
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_int_sloc0_1_0
	mov	r1,(___ckd_sub_int_sloc0_1_0 + 1)
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
	cjne	a,___ckd_sub_int_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_int_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_int_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uint_PARM_2'
;b                         Allocated with name '___ckd_sub_uint_PARM_3'
;r                         Allocated with name '___ckd_sub_uint_r_65536_35'
;result                    Allocated with name '___ckd_sub_uint_result_65536_36'
;sloc0                     Allocated with name '___ckd_sub_uint_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
___ckd_sub_uint:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_uint_r_65536_35
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_uint_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_uint_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_uint_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_uint_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_uint_sloc0_1_0
	mov	___ckd_sub_uint_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 1)
	mov	(___ckd_sub_uint_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 2)
	mov	(___ckd_sub_uint_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 3)
	mov	(___ckd_sub_uint_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 4)
	mov	(___ckd_sub_uint_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 5)
	mov	(___ckd_sub_uint_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 6)
	mov	(___ckd_sub_uint_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_uint_sloc0_1_0 + 7)
	mov	(___ckd_sub_uint_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_uint_r_65536_35
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_uint_sloc0_1_0
	mov	r1,(___ckd_sub_uint_sloc0_1_0 + 1)
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
	cjne	a,___ckd_sub_uint_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 1),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 2),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 3),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 4),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 5),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 6),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_uint_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_uint_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_long_PARM_2'
;b                         Allocated with name '___ckd_sub_long_PARM_3'
;r                         Allocated with name '___ckd_sub_long_r_65536_37'
;result                    Allocated with name '___ckd_sub_long_result_65536_38'
;sloc0                     Allocated with name '___ckd_sub_long_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
___ckd_sub_long:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_long_r_65536_37
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_long_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_long_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_long_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_long_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_long_sloc0_1_0
	mov	___ckd_sub_long_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_long_sloc0_1_0 + 1)
	mov	(___ckd_sub_long_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_long_sloc0_1_0 + 2)
	mov	(___ckd_sub_long_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_long_sloc0_1_0 + 3)
	mov	(___ckd_sub_long_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_long_sloc0_1_0 + 4)
	mov	(___ckd_sub_long_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_long_sloc0_1_0 + 5)
	mov	(___ckd_sub_long_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_long_sloc0_1_0 + 6)
	mov	(___ckd_sub_long_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_long_sloc0_1_0 + 7)
	mov	(___ckd_sub_long_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_long_r_65536_37
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_long_sloc0_1_0
	mov	r1,(___ckd_sub_long_sloc0_1_0 + 1)
	mov	r2,(___ckd_sub_long_sloc0_1_0 + 2)
	mov	r3,(___ckd_sub_long_sloc0_1_0 + 3)
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
	cjne	a,___ckd_sub_long_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_long_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_long_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ulong_PARM_2'
;b                         Allocated with name '___ckd_sub_ulong_PARM_3'
;r                         Allocated with name '___ckd_sub_ulong_r_65536_39'
;result                    Allocated with name '___ckd_sub_ulong_result_65536_40'
;sloc0                     Allocated with name '___ckd_sub_ulong_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
___ckd_sub_ulong:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___ckd_sub_ulong_r_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ckd_sub_ulong_PARM_3
	movx	a,@dptr
	mov	___ckd_sub_ulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ckd_sub_ulong_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_ulong_PARM_2
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
	mov	a,r0
	clr	c
	subb	a,___ckd_sub_ulong_sloc0_1_0
	mov	___ckd_sub_ulong_sloc0_1_0,a
	mov	a,r1
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 1)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 1),a
	mov	a,r2
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 2)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 2),a
	mov	a,r3
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 3)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 3),a
	mov	a,r4
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 4)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 4),a
	mov	a,r5
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 5)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 5),a
	mov	a,r6
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 6)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 6),a
	mov	a,r7
	subb	a,(___ckd_sub_ulong_sloc0_1_0 + 7)
	mov	(___ckd_sub_ulong_sloc0_1_0 + 7),a
	mov	dptr,#___ckd_sub_ulong_r_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,___ckd_sub_ulong_sloc0_1_0
	mov	r1,(___ckd_sub_ulong_sloc0_1_0 + 1)
	mov	r2,(___ckd_sub_ulong_sloc0_1_0 + 2)
	mov	r3,(___ckd_sub_ulong_sloc0_1_0 + 3)
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
	cjne	a,___ckd_sub_ulong_sloc0_1_0,00103$
	mov	a,r1
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 1),00103$
	mov	a,r2
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 2),00103$
	mov	a,r3
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 3),00103$
	mov	a,r7
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 4),00103$
	mov	a,r6
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 5),00103$
	mov	a,r5
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 6),00103$
	mov	a,r4
	cjne	a,(___ckd_sub_ulong_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	___ckd_sub_ulong_sloc1_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
