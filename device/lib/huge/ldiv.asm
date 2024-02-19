;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ldiv
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldiv_PARM_2
	.globl _ldiv_PARM_1
	.globl _ldiv
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
_ldiv_sloc0_1_0:
	.ds 4
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
_ldiv_PARM_1:
	.ds 4
_ldiv_PARM_2:
	.ds 4
_ldiv_ret_65536_40:
	.ds 8
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
;Allocation info for local variables in function 'ldiv'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ldiv_sloc0_1_0'
;numer                     Allocated with name '_ldiv_PARM_1'
;denom                     Allocated with name '_ldiv_PARM_2'
;ret                       Allocated with name '_ldiv_ret_65536_40'
;------------------------------------------------------------
;	ldiv.c:32: ldiv_t ldiv(long int numer, long int denom)
;	-----------------------------------------
;	 function ldiv
;	-----------------------------------------
_ldiv:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ldiv.c:35: ret.quot = numer / denom;
	mov	dptr,#_ldiv_PARM_2
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
	mov	dptr,#_ldiv_PARM_1
	movx	a,@dptr
	mov	_ldiv_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_ldiv_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_ldiv_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_ldiv_sloc0_1_0 + 3),a
	mov	dptr,#__divslong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_ldiv_sloc0_1_0
	mov	dph,(_ldiv_sloc0_1_0 + 1)
	mov	b,(_ldiv_sloc0_1_0 + 2)
	mov	a,(_ldiv_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_ldiv_ret_65536_40
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	ldiv.c:36: ret.rem = numer % denom;
	mov	dptr,#__modslong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_ldiv_sloc0_1_0
	mov	dph,(_ldiv_sloc0_1_0 + 1)
	mov	b,(_ldiv_sloc0_1_0 + 2)
	mov	a,(_ldiv_sloc0_1_0 + 3)
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#(_ldiv_ret_65536_40 + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ldiv.c:37: return(ret);
	mov	dptr,#_ldiv_ret_65536_40
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	pop	acc
	lcall	__gptrput
	pop	dph
	pop	dpl
;	ldiv.c:38: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
