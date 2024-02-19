;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf
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
_ldexpf_PARM_2:
	.ds 2
_ldexpf_fl_65536_26:
	.ds 4
_ldexpf_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;pw2                       Allocated with name '_ldexpf_PARM_2'
;x                         Allocated to registers r4 r5 r6 r7 
;fl                        Allocated with name '_ldexpf_fl_65536_26'
;e                         Allocated to registers r2 r3 r6 r7 
;sloc0                     Allocated with name '_ldexpf_sloc0_1_0'
;------------------------------------------------------------
;	ldexpf.c:34: float ldexpf(float x, int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ldexpf.c:39: fl.f = x;
	mov	(_ldexpf_fl_65536_26 + 0),r4
	mov	(_ldexpf_fl_65536_26 + 1),r5
	mov	(_ldexpf_fl_65536_26 + 2),r6
	mov	(_ldexpf_fl_65536_26 + 3),r7
;	ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	mov	r4,(_ldexpf_fl_65536_26 + 2)
	mov	a,(_ldexpf_fl_65536_26 + 3)
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xfffffffe
00103$:
	rlc	a
	subb	a,acc
	mov	_ldexpf_sloc0_1_0,r4
	mov	(_ldexpf_sloc0_1_0 + 1),#0x00
	mov	(_ldexpf_sloc0_1_0 + 2),#0x00
	mov	(_ldexpf_sloc0_1_0 + 3),#0x00
;	ldexpf.c:42: e+=pw2;
	mov	r2,_ldexpf_PARM_2
	mov	a,(_ldexpf_PARM_2 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r2
	add	a,_ldexpf_sloc0_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_ldexpf_sloc0_1_0 + 1)
	mov	a,r6
	addc	a,(_ldexpf_sloc0_1_0 + 2)
	mov	a,r7
	addc	a,(_ldexpf_sloc0_1_0 + 3)
;	ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	mov	r3,#0x00
	mov	(_ldexpf_sloc0_1_0 + 2),r2
	mov	a,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	rrc	a
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	rrc	a
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	mov	(_ldexpf_sloc0_1_0 + 3),a
	mov	_ldexpf_sloc0_1_0,#0x00
	mov	(_ldexpf_sloc0_1_0 + 1),#0x00
	mov	r4,_ldexpf_fl_65536_26
	mov	r5,(_ldexpf_fl_65536_26 + 1)
	mov	a,#0x7f
	anl	a,(_ldexpf_fl_65536_26 + 2)
	mov	r6,a
	mov	a,#0x80
	anl	a,(_ldexpf_fl_65536_26 + 3)
	mov	r7,a
	mov	a,_ldexpf_sloc0_1_0
	orl	ar4,a
	mov	a,(_ldexpf_sloc0_1_0 + 1)
	orl	ar5,a
	mov	a,(_ldexpf_sloc0_1_0 + 2)
	orl	ar6,a
	mov	a,(_ldexpf_sloc0_1_0 + 3)
	orl	ar7,a
	mov	(_ldexpf_fl_65536_26 + 0),r4
	mov	(_ldexpf_fl_65536_26 + 1),r5
	mov	(_ldexpf_fl_65536_26 + 2),r6
	mov	(_ldexpf_fl_65536_26 + 3),r7
;	ldexpf.c:45: return(fl.f);
	mov	dpl,_ldexpf_fl_65536_26
	mov	dph,(_ldexpf_fl_65536_26 + 1)
	mov	b,(_ldexpf_fl_65536_26 + 2)
	mov	a,(_ldexpf_fl_65536_26 + 3)
;	ldexpf.c:46: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
