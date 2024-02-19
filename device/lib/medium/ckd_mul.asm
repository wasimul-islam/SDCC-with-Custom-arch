;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mmcs51 --model-medium
	
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
___ckd_mul_schar_PARM_2:
	.ds 8
___ckd_mul_schar_PARM_3:
	.ds 8
___ckd_mul_schar_result_65536_42:
	.ds 8
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_uchar_result_65536_44:
	.ds 8
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_short_result_65536_46:
	.ds 8
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_ushort_result_65536_48:
	.ds 8
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_int_result_65536_50:
	.ds 8
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
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
;sloc0                     Allocated with name '___ckd_mul_schar_sloc0_1_0'
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
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r0,#___ckd_mul_schar_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#___ckd_mul_schar_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_schar_result_65536_42
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar4
	pop	ar5
	pop	ar6
	mov	r0,#___ckd_mul_schar_result_65536_42
	movx	a,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
	mov	___ckd_mul_schar_sloc0_1_0,a
	rlc	a
	subb	a,acc
	mov	(___ckd_mul_schar_sloc0_1_0 + 1),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 2),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 3),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 4),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 5),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 6),a
	mov	(___ckd_mul_schar_sloc0_1_0 + 7),a
	mov	r0,#___ckd_mul_schar_result_65536_42
	movx	a,@r0
	cjne	a,___ckd_mul_schar_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_schar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_schar_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uchar_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
___ckd_mul_uchar:
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r0,#___ckd_mul_uchar_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#___ckd_mul_uchar_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_uchar_result_65536_44
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar4
	pop	ar5
	pop	ar6
	mov	r0,#___ckd_mul_uchar_result_65536_44
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
	mov	___ckd_mul_uchar_sloc0_1_0,r7
	mov	(___ckd_mul_uchar_sloc0_1_0 + 1),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 2),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 3),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 4),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 5),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 6),#0x00
	mov	(___ckd_mul_uchar_sloc0_1_0 + 7),#0x00
	mov	r0,#___ckd_mul_uchar_result_65536_44
	movx	a,@r0
	cjne	a,___ckd_mul_uchar_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uchar_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_uchar_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_short_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
___ckd_mul_short:
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	r0,#___ckd_mul_short_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#___ckd_mul_short_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_short_result_65536_46
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,#___ckd_mul_short_result_65536_46
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_short_sloc0_1_0,r6
	mov	a,r7
	mov	(___ckd_mul_short_sloc0_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(___ckd_mul_short_sloc0_1_0 + 2),a
	mov	(___ckd_mul_short_sloc0_1_0 + 3),a
	mov	(___ckd_mul_short_sloc0_1_0 + 4),a
	mov	(___ckd_mul_short_sloc0_1_0 + 5),a
	mov	(___ckd_mul_short_sloc0_1_0 + 6),a
	mov	(___ckd_mul_short_sloc0_1_0 + 7),a
	mov	r0,#___ckd_mul_short_result_65536_46
	movx	a,@r0
	cjne	a,___ckd_mul_short_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_short_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_short_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ushort_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
___ckd_mul_ushort:
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	r0,#___ckd_mul_ushort_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#___ckd_mul_ushort_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_ushort_result_65536_48
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,#___ckd_mul_ushort_result_65536_48
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_ushort_sloc0_1_0,r6
	mov	(___ckd_mul_ushort_sloc0_1_0 + 1),r7
	mov	(___ckd_mul_ushort_sloc0_1_0 + 2),#0x00
	mov	(___ckd_mul_ushort_sloc0_1_0 + 3),#0x00
	mov	(___ckd_mul_ushort_sloc0_1_0 + 4),#0x00
	mov	(___ckd_mul_ushort_sloc0_1_0 + 5),#0x00
	mov	(___ckd_mul_ushort_sloc0_1_0 + 6),#0x00
	mov	(___ckd_mul_ushort_sloc0_1_0 + 7),#0x00
	mov	r0,#___ckd_mul_ushort_result_65536_48
	movx	a,@r0
	cjne	a,___ckd_mul_ushort_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ushort_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_ushort_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_int_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
___ckd_mul_int:
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	r0,#___ckd_mul_int_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#___ckd_mul_int_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_int_result_65536_50
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,#___ckd_mul_int_result_65536_50
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_int_sloc0_1_0,r6
	mov	a,r7
	mov	(___ckd_mul_int_sloc0_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(___ckd_mul_int_sloc0_1_0 + 2),a
	mov	(___ckd_mul_int_sloc0_1_0 + 3),a
	mov	(___ckd_mul_int_sloc0_1_0 + 4),a
	mov	(___ckd_mul_int_sloc0_1_0 + 5),a
	mov	(___ckd_mul_int_sloc0_1_0 + 6),a
	mov	(___ckd_mul_int_sloc0_1_0 + 7),a
	mov	r0,#___ckd_mul_int_result_65536_50
	movx	a,@r0
	cjne	a,___ckd_mul_int_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_int_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_int_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uint_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
___ckd_mul_uint:
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	r0,#___ckd_mul_uint_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#___ckd_mul_uint_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_uint_result_65536_52
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	r0,#___ckd_mul_uint_result_65536_52
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_uint_sloc0_1_0,r6
	mov	(___ckd_mul_uint_sloc0_1_0 + 1),r7
	mov	(___ckd_mul_uint_sloc0_1_0 + 2),#0x00
	mov	(___ckd_mul_uint_sloc0_1_0 + 3),#0x00
	mov	(___ckd_mul_uint_sloc0_1_0 + 4),#0x00
	mov	(___ckd_mul_uint_sloc0_1_0 + 5),#0x00
	mov	(___ckd_mul_uint_sloc0_1_0 + 6),#0x00
	mov	(___ckd_mul_uint_sloc0_1_0 + 7),#0x00
	mov	r0,#___ckd_mul_uint_result_65536_52
	movx	a,@r0
	cjne	a,___ckd_mul_uint_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_uint_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_uint_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_long_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
___ckd_mul_long:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#___ckd_mul_long_r_65536_53
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#___ckd_mul_long_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#___ckd_mul_long_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_long_result_65536_54
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#___ckd_mul_long_result_65536_54
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#___ckd_mul_long_r_65536_53
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_long_sloc0_1_0,r5
	mov	(___ckd_mul_long_sloc0_1_0 + 1),r6
	mov	(___ckd_mul_long_sloc0_1_0 + 2),r4
	mov	a,r7
	mov	(___ckd_mul_long_sloc0_1_0 + 3),a
	rlc	a
	subb	a,acc
	mov	(___ckd_mul_long_sloc0_1_0 + 4),a
	mov	(___ckd_mul_long_sloc0_1_0 + 5),a
	mov	(___ckd_mul_long_sloc0_1_0 + 6),a
	mov	(___ckd_mul_long_sloc0_1_0 + 7),a
	mov	r0,#___ckd_mul_long_result_65536_54
	movx	a,@r0
	cjne	a,___ckd_mul_long_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_long_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_long_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ulong_sloc0_1_0'
;------------------------------------------------------------
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
___ckd_mul_ulong:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#___ckd_mul_ulong_r_65536_55
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#___ckd_mul_ulong_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#___ckd_mul_ulong_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#___ckd_mul_ulong_result_65536_56
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#___ckd_mul_ulong_result_65536_56
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#___ckd_mul_ulong_r_65536_55
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	___ckd_mul_ulong_sloc0_1_0,r5
	mov	(___ckd_mul_ulong_sloc0_1_0 + 1),r6
	mov	(___ckd_mul_ulong_sloc0_1_0 + 2),r4
	mov	(___ckd_mul_ulong_sloc0_1_0 + 3),r7
	mov	(___ckd_mul_ulong_sloc0_1_0 + 4),#0x00
	mov	(___ckd_mul_ulong_sloc0_1_0 + 5),#0x00
	mov	(___ckd_mul_ulong_sloc0_1_0 + 6),#0x00
	mov	(___ckd_mul_ulong_sloc0_1_0 + 7),#0x00
	mov	r0,#___ckd_mul_ulong_result_65536_56
	movx	a,@r0
	cjne	a,___ckd_mul_ulong_sloc0_1_0,00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 1),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 2),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 3),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 4),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 5),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 6),00103$
	inc	r0
	movx	a,@r0
	cjne	a,(___ckd_mul_ulong_sloc0_1_0 + 7),00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  ___ckd_mul_ulong_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
