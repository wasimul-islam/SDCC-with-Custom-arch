;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module lldiv
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lldiv_PARM_2
	.globl _lldiv_PARM_1
	.globl _lldiv
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
_lldiv_sloc0_1_0:
	.ds 8
_lldiv_sloc1_1_0:
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lldiv_PARM_1:
	.ds 8
_lldiv_PARM_2:
	.ds 8
_lldiv_ret_65536_40:
	.ds 16
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
;Allocation info for local variables in function 'lldiv'
;------------------------------------------------------------
;sloc0                     Allocated with name '_lldiv_sloc0_1_0'
;sloc1                     Allocated with name '_lldiv_sloc1_1_0'
;numer                     Allocated with name '_lldiv_PARM_1'
;denom                     Allocated with name '_lldiv_PARM_2'
;ret                       Allocated with name '_lldiv_ret_65536_40'
;------------------------------------------------------------
;	lldiv.c:32: lldiv_t lldiv(long long int numer, long long int denom)
;	-----------------------------------------
;	 function lldiv
;	-----------------------------------------
_lldiv:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lldiv.c:35: ret.quot = numer / denom;
	mov	dptr,#_lldiv_PARM_2
	movx	a,@dptr
	mov	_lldiv_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc0_1_0 + 7),a
	mov	dptr,#_lldiv_PARM_1
	movx	a,@dptr
	mov	_lldiv_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(_lldiv_sloc1_1_0 + 7),a
	mov	dptr,#__divslonglong_PARM_2
	mov	a,_lldiv_sloc0_1_0
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_lldiv_sloc1_1_0
	mov	dph,(_lldiv_sloc1_1_0 + 1)
	mov	b,(_lldiv_sloc1_1_0 + 2)
	mov	a,(_lldiv_sloc1_1_0 + 3)
	mov	r4,(_lldiv_sloc1_1_0 + 4)
	mov	r5,(_lldiv_sloc1_1_0 + 5)
	mov	r6,(_lldiv_sloc1_1_0 + 6)
	mov	r7,(_lldiv_sloc1_1_0 + 7)
	lcall	__divslonglong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#_lldiv_ret_65536_40
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
	mov	a,r4
	inc	dptr
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
;	lldiv.c:36: ret.rem = numer % denom;
	mov	dptr,#__modslonglong_PARM_2
	mov	a,_lldiv_sloc0_1_0
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(_lldiv_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_lldiv_sloc1_1_0
	mov	dph,(_lldiv_sloc1_1_0 + 1)
	mov	b,(_lldiv_sloc1_1_0 + 2)
	mov	a,(_lldiv_sloc1_1_0 + 3)
	mov	r4,(_lldiv_sloc1_1_0 + 4)
	mov	r5,(_lldiv_sloc1_1_0 + 5)
	mov	r6,(_lldiv_sloc1_1_0 + 6)
	mov	r7,(_lldiv_sloc1_1_0 + 7)
	lcall	__modslonglong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#(_lldiv_ret_65536_40 + 0x0008)
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
	mov	a,r4
	inc	dptr
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
;	lldiv.c:37: return(ret);
	mov	dptr,#_lldiv_ret_65536_40
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	add	a,#0xf9
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
	inc	dptr
	movx	a,@dptr
	push	dpl
	push	dph
	push	acc
	mov	a,sp
	add	a,#0xf9
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
	inc	dptr
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
;	lldiv.c:38: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
