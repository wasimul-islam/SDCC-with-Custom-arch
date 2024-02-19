;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r6 r5 r4 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r6 r5 r4 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../device/include/stdckdint.h:61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
___ckd_sub_uchar:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r5 r4 r3 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../device/include/stdckdint.h:62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
___ckd_sub_short:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r5 r4 r3 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../device/include/stdckdint.h:63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
___ckd_sub_ushort:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r5 r4 r3 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../device/include/stdckdint.h:64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
___ckd_sub_int:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to registers r5 r4 r3 
;result                    Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../device/include/stdckdint.h:65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
___ckd_sub_uint:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to stack - _bp +1
;result                    Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../device/include/stdckdint.h:66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
___ckd_sub_long:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x10
	mov	sp,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated to stack - _bp -10
;b                         Allocated to stack - _bp -18
;r                         Allocated to stack - _bp +1
;result                    Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../device/include/stdckdint.h:67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
___ckd_sub_ulong:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x10
	mov	sp,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0xee
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
