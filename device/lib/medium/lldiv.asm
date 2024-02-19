;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module lldiv
	.optsdcc -mmcs51 --model-medium
	
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
_lldiv_PARM_1:
	.ds 8
_lldiv_PARM_2:
	.ds 8
_lldiv_ret_65536_40:
	.ds 16
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
;Allocation info for local variables in function 'lldiv'
;------------------------------------------------------------
;sloc0                     Allocated with name '_lldiv_sloc0_1_0'
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
	mov	r0,#_lldiv_PARM_2
	mov	r1,#__divslonglong_PARM_2
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
	mov	r0,#_lldiv_PARM_1
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
	lcall	__divslonglong
	mov	_lldiv_sloc0_1_0,dpl
	mov	(_lldiv_sloc0_1_0 + 1),dph
	mov	(_lldiv_sloc0_1_0 + 2),b
	mov	(_lldiv_sloc0_1_0 + 3),a
	mov	(_lldiv_sloc0_1_0 + 4),r4
	mov	(_lldiv_sloc0_1_0 + 5),r5
	mov	(_lldiv_sloc0_1_0 + 6),r6
	mov	(_lldiv_sloc0_1_0 + 7),r7
	mov	r0,#_lldiv_ret_65536_40
	mov	a,_lldiv_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 3)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 4)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 5)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 6)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 7)
	movx	@r0,a
;	lldiv.c:36: ret.rem = numer % denom;
	mov	r0,#_lldiv_PARM_2
	mov	r1,#__modslonglong_PARM_2
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
	mov	r0,#_lldiv_PARM_1
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
	lcall	__modslonglong
	mov	_lldiv_sloc0_1_0,dpl
	mov	(_lldiv_sloc0_1_0 + 1),dph
	mov	(_lldiv_sloc0_1_0 + 2),b
	mov	(_lldiv_sloc0_1_0 + 3),a
	mov	(_lldiv_sloc0_1_0 + 4),r4
	mov	(_lldiv_sloc0_1_0 + 5),r5
	mov	(_lldiv_sloc0_1_0 + 6),r6
	mov	(_lldiv_sloc0_1_0 + 7),r7
	mov	r0,#(_lldiv_ret_65536_40 + 0x0008)
	mov	a,_lldiv_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 3)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 4)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 5)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 6)
	movx	@r0,a
	inc	r0
	mov	a,(_lldiv_sloc0_1_0 + 7)
	movx	@r0,a
;	lldiv.c:37: return(ret);
	mov	r0,#_lldiv_ret_65536_40
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
;	lldiv.c:38: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
