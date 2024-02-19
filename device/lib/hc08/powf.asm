;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module powf
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
	.globl _logf
	.globl _expf
	.globl _powf_PARM_2
	.globl _powf_PARM_1
	.globl _powf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_powf_sloc0_1_0:
	.ds 4
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
_powf_PARM_1:
	.ds 4
_powf_PARM_2:
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
;Allocation info for local variables in function 'powf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_powf_sloc0_1_0'
;x                         Allocated with name '_powf_PARM_1'
;y                         Allocated with name '_powf_PARM_2'
;------------------------------------------------------------
;../powf.c:35: float powf(float x, float y)
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_powf:
;../powf.c:37: if(y == 0.0) return 1.0;
	lda	_powf_PARM_2
	and	#0x7F
	ora	(_powf_PARM_2 + 1)
	ora	(_powf_PARM_2 + 2)
	ora	(_powf_PARM_2 + 3)
	bne	00102$
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3f,*___SDCC_hc08_ret3
	rts
00102$:
;../powf.c:38: if(y == 1.0) return x;
	ldhx	#___fseq_PARM_1
	lda	_powf_PARM_2
	sta	,x
	lda	(_powf_PARM_2 + 1)
	sta	1,x
	lda	(_powf_PARM_2 + 2)
	sta	2,x
	lda	(_powf_PARM_2 + 3)
	sta	3,x
	ldhx	#___fseq_PARM_2
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fseq
	tsta
	beq	00104$
	lda	_powf_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(_powf_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_powf_PARM_1 + 2)
	lda	(_powf_PARM_1 + 3)
	rts
00104$:
;../powf.c:39: if(x <= 0.0) return 0.0;
	ldhx	#___fslt_PARM_1
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	ldhx	#___fslt_PARM_2
	lda	_powf_PARM_1
	sta	,x
	lda	(_powf_PARM_1 + 1)
	sta	1,x
	lda	(_powf_PARM_1 + 2)
	sta	2,x
	lda	(_powf_PARM_1 + 3)
	sta	3,x
	jsr	___fslt
	tsta
	bne	00106$
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00106$:
;../powf.c:40: return expf(logf(x) * y);
	lda	(_powf_PARM_1 + 3)
	psha
	lda	(_powf_PARM_1 + 2)
	psha
	lda	(_powf_PARM_1 + 1)
	psha
	lda	_powf_PARM_1
	psha
	jsr	_logf
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ais	#4
	ldhx	#___fsmul_PARM_2
	lda	_powf_PARM_2
	sta	,x
	lda	(_powf_PARM_2 + 1)
	sta	1,x
	lda	(_powf_PARM_2 + 2)
	sta	2,x
	lda	(_powf_PARM_2 + 3)
	sta	3,x
	jsr	___fsmul
	sta	*(_powf_sloc0_1_0 + 3)
	stx	*(_powf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_powf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_powf_sloc0_1_0
	lda	*(_powf_sloc0_1_0 + 3)
	psha
	lda	*(_powf_sloc0_1_0 + 2)
	psha
	lda	*(_powf_sloc0_1_0 + 1)
	psha
	lda	*_powf_sloc0_1_0
	psha
	jsr	_expf
	sta	*(_powf_sloc0_1_0 + 3)
	stx	*(_powf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_powf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_powf_sloc0_1_0
	ais	#4
	mov	*_powf_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(_powf_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_powf_sloc0_1_0 + 2)
	lda	*(_powf_sloc0_1_0 + 3)
;../powf.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
