;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module cotf
	.optsdcc -ms08
	
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
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
;Allocation info for local variables in function 'cotf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +7
;y                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;../cotf.c:37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_cotf:
	ais	#-4
;../cotf.c:41: y=fabsf(x);
	tsx
	lda	9,x
	psha
	lda	8,x
	psha
	lda	7,x
	psha
	lda	6,x
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ais	#4
;../cotf.c:42: if (y<1.0E-30) //This one requires more thinking...
	ldhx	#0x0da2
	sthx	___fslt_PARM_2
	ldhx	#0x4260
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00105$
;../cotf.c:44: errno = ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../cotf.c:45: if (x<0.0)
	tsx
	lda	6,x
	sta	___fslt_PARM_1
	lda	7,x
	sta	(___fslt_PARM_1 + 1)
	lda	8,x
	sta	(___fslt_PARM_1 + 2)
	lda	9,x
	sta	(___fslt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00102$
;../cotf.c:46: return -HUGE_VALF;
	lda	#0xff
	tax
	mov	#0x7f,*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	bra	00106$
00102$:
;../cotf.c:48: return +HUGE_VALF;
	lda	#0xff
	tax
	mov	#0x7f,*___SDCC_hc08_ret2
	mov	#0x7f,*___SDCC_hc08_ret3
	bra	00106$
00105$:
;../cotf.c:50: return tancotf(x, 1);
	tsx
	lda	6,x
	sta	_tancotf_PARM_1
	lda	7,x
	sta	(_tancotf_PARM_1 + 1)
	lda	8,x
	sta	(_tancotf_PARM_1 + 2)
	lda	9,x
	sta	(_tancotf_PARM_1 + 3)
	lda	#0x01
	sta	_tancotf_PARM_2
	jsr	_tancotf
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
00106$:
;../cotf.c:51: }
	ais	#4
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
