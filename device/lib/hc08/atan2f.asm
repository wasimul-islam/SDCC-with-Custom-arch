;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f_PARM_1
	.globl _atan2f
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atan2f_sloc0_1_0:
	.ds 4
_atan2f_sloc1_1_0:
	.ds 4
_atan2f_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_atan2f_PARM_1:
	.ds 4
_atan2f_PARM_2:
	.ds 4
_atan2f_r_65536_26:
	.ds 4
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atan2f_sloc0_1_0'
;sloc1                     Allocated with name '_atan2f_sloc1_1_0'
;sloc2                     Allocated with name '_atan2f_sloc2_1_0'
;x                         Allocated with name '_atan2f_PARM_1'
;y                         Allocated with name '_atan2f_PARM_2'
;r                         Allocated with name '_atan2f_r_65536_26'
;------------------------------------------------------------
;../atan2f.c:34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atan2f:
;../atan2f.c:38: if ((x==0.0) && (y==0.0))
	lda	_atan2f_PARM_1
	and	#0x7F
	ora	(_atan2f_PARM_1 + 1)
	ora	(_atan2f_PARM_1 + 2)
	ora	(_atan2f_PARM_1 + 3)
	bne	00102$
	lda	_atan2f_PARM_2
	and	#0x7F
	ora	(_atan2f_PARM_2 + 1)
	ora	(_atan2f_PARM_2 + 2)
	ora	(_atan2f_PARM_2 + 3)
	bne	00102$
;../atan2f.c:40: errno=EDOM;
	clra
	sta	_errno
	lda	#0x21
	sta	(_errno + 1)
;../atan2f.c:41: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	lda	(_atan2f_PARM_2 + 3)
	psha
	lda	(_atan2f_PARM_2 + 2)
	psha
	lda	(_atan2f_PARM_2 + 1)
	psha
	lda	_atan2f_PARM_2
	psha
	jsr	_fabsf
	sta	*(_atan2f_sloc0_1_0 + 3)
	stx	*(_atan2f_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc0_1_0
	ais	#4
	lda	(_atan2f_PARM_1 + 3)
	psha
	lda	(_atan2f_PARM_1 + 2)
	psha
	lda	(_atan2f_PARM_1 + 1)
	psha
	lda	_atan2f_PARM_1
	psha
	jsr	_fabsf
	sta	*(_atan2f_sloc1_1_0 + 3)
	stx	*(_atan2f_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc1_1_0
	ais	#4
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	ldhx	#___fslt_PARM_1
	lda	_atan2f_PARM_1
	sta	,x
	lda	(_atan2f_PARM_1 + 1)
	sta	1,x
	lda	(_atan2f_PARM_1 + 2)
	sta	2,x
	lda	(_atan2f_PARM_1 + 3)
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	jsr	___fslt
	sta	*_atan2f_sloc2_1_0
	ldhx	#___fslt_PARM_1
	mov	*_atan2f_sloc0_1_0,x+
	mov	*(_atan2f_sloc0_1_0 + 1),x+
	mov	*(_atan2f_sloc0_1_0 + 2),x+
	mov	*(_atan2f_sloc0_1_0 + 3),x+
	ldhx	#___fslt_PARM_2
	mov	*_atan2f_sloc1_1_0,x+
	mov	*(_atan2f_sloc1_1_0 + 1),x+
	mov	*(_atan2f_sloc1_1_0 + 2),x+
	mov	*(_atan2f_sloc1_1_0 + 3),x+
	jsr	___fslt
	tsta
	beq	00147$
	jmp	00107$
00147$:
;../atan2f.c:46: r=atanf(x/y);
	ldhx	#___fsdiv_PARM_1
	lda	_atan2f_PARM_1
	sta	,x
	lda	(_atan2f_PARM_1 + 1)
	sta	1,x
	lda	(_atan2f_PARM_1 + 2)
	sta	2,x
	lda	(_atan2f_PARM_1 + 3)
	sta	3,x
	ldhx	#___fsdiv_PARM_2
	lda	_atan2f_PARM_2
	sta	,x
	lda	(_atan2f_PARM_2 + 1)
	sta	1,x
	lda	(_atan2f_PARM_2 + 2)
	sta	2,x
	lda	(_atan2f_PARM_2 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_atan2f_sloc1_1_0 + 3)
	stx	*(_atan2f_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc1_1_0
	lda	*(_atan2f_sloc1_1_0 + 3)
	psha
	lda	*(_atan2f_sloc1_1_0 + 2)
	psha
	lda	*(_atan2f_sloc1_1_0 + 1)
	psha
	lda	*_atan2f_sloc1_1_0
	psha
	jsr	_atanf
	sta	*(_atan2f_sloc1_1_0 + 3)
	stx	*(_atan2f_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc1_1_0
	ais	#4
	ldhx	#_atan2f_r_65536_26
	mov	*_atan2f_sloc1_1_0,x+
	mov	*(_atan2f_sloc1_1_0 + 1),x+
	mov	*(_atan2f_sloc1_1_0 + 2),x+
	mov	*(_atan2f_sloc1_1_0 + 3),x+
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	ldhx	#___fslt_PARM_1
	lda	_atan2f_PARM_2
	sta	,x
	lda	(_atan2f_PARM_2 + 1)
	sta	1,x
	lda	(_atan2f_PARM_2 + 2)
	sta	2,x
	lda	(_atan2f_PARM_2 + 3)
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	bne	00148$
	jmp	00108$
00148$:
	tst	*_atan2f_sloc2_1_0
	bne	00111$
	ldhx	#0x4049
	sthx	*_atan2f_sloc0_1_0
	ldhx	#0x0fdb
	sthx	*(_atan2f_sloc0_1_0 + 2)
	bra	00112$
00111$:
	ldhx	#0xc049
	sthx	*_atan2f_sloc0_1_0
	ldhx	#0x0fdb
	sthx	*(_atan2f_sloc0_1_0 + 2)
00112$:
	ldhx	#___fsadd_PARM_1
	mov	*_atan2f_sloc1_1_0,x+
	mov	*(_atan2f_sloc1_1_0 + 1),x+
	mov	*(_atan2f_sloc1_1_0 + 2),x+
	mov	*(_atan2f_sloc1_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	mov	*_atan2f_sloc0_1_0,x+
	mov	*(_atan2f_sloc0_1_0 + 1),x+
	mov	*(_atan2f_sloc0_1_0 + 2),x+
	mov	*(_atan2f_sloc0_1_0 + 3),x+
	jsr	___fsadd
	sta	(_atan2f_r_65536_26 + 3)
	stx	(_atan2f_r_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atan2f_r_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atan2f_r_65536_26
	jmp	00108$
00107$:
;../atan2f.c:51: r=-atanf(y/x);
	ldhx	#___fsdiv_PARM_1
	lda	_atan2f_PARM_2
	sta	,x
	lda	(_atan2f_PARM_2 + 1)
	sta	1,x
	lda	(_atan2f_PARM_2 + 2)
	sta	2,x
	lda	(_atan2f_PARM_2 + 3)
	sta	3,x
	ldhx	#___fsdiv_PARM_2
	lda	_atan2f_PARM_1
	sta	,x
	lda	(_atan2f_PARM_1 + 1)
	sta	1,x
	lda	(_atan2f_PARM_1 + 2)
	sta	2,x
	lda	(_atan2f_PARM_1 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_atan2f_sloc1_1_0 + 3)
	stx	*(_atan2f_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc1_1_0
	lda	*(_atan2f_sloc1_1_0 + 3)
	psha
	lda	*(_atan2f_sloc1_1_0 + 2)
	psha
	lda	*(_atan2f_sloc1_1_0 + 1)
	psha
	lda	*_atan2f_sloc1_1_0
	psha
	jsr	_atanf
	sta	*(_atan2f_sloc1_1_0 + 3)
	stx	*(_atan2f_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atan2f_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atan2f_sloc1_1_0
	ais	#4
	lda	*_atan2f_sloc1_1_0
	eor	#0x80
	sta	*_atan2f_sloc1_1_0
;../atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	lda	*_atan2f_sloc2_1_0
	beq	00113$
	ldhx	#0xbfc9
	sthx	*_atan2f_sloc0_1_0
	ldhx	#0x0fdb
	sthx	*(_atan2f_sloc0_1_0 + 2)
	bra	00114$
00113$:
	ldhx	#0x3fc9
	sthx	*_atan2f_sloc0_1_0
	ldhx	#0x0fdb
	sthx	*(_atan2f_sloc0_1_0 + 2)
00114$:
	ldhx	#___fsadd_PARM_1
	mov	*_atan2f_sloc1_1_0,x+
	mov	*(_atan2f_sloc1_1_0 + 1),x+
	mov	*(_atan2f_sloc1_1_0 + 2),x+
	mov	*(_atan2f_sloc1_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	mov	*_atan2f_sloc0_1_0,x+
	mov	*(_atan2f_sloc0_1_0 + 1),x+
	mov	*(_atan2f_sloc0_1_0 + 2),x+
	mov	*(_atan2f_sloc0_1_0 + 3),x+
	jsr	___fsadd
	sta	(_atan2f_r_65536_26 + 3)
	stx	(_atan2f_r_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atan2f_r_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atan2f_r_65536_26
00108$:
;../atan2f.c:54: return r;
	lda	_atan2f_r_65536_26
	sta	*___SDCC_hc08_ret3
	lda	(_atan2f_r_65536_26 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_atan2f_r_65536_26 + 2)
	lda	(_atan2f_r_65536_26 + 3)
;../atan2f.c:55: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
