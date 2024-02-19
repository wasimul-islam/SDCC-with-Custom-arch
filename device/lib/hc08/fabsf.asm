;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module fabsf
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
;Allocation info for local variables in function 'fabsf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +11
;fl                        Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +5
;------------------------------------------------------------
;../fabsf.c:34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_fabsf:
	ais	#-8
;../fabsf.c:38: fl.f = x;
	tsx
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
;../fabsf.c:39: fl.l &= 0x7fffffff;
	tsx
	lda	,x
	sta	5,s
	lda	1,x
	sta	6,s
	lda	2,x
	sta	7,s
	lda	3,x
	sta	8,s
	lda	5,s
	and	#0x7f
	sta	5,s
	lda	5,s
	sta	,x
	lda	6,s
	sta	1,x
	lda	7,s
	sta	2,x
	lda	8,s
	sta	3,x
;../fabsf.c:40: return fl.f;
	tsx
	lda	,x
	sta	5,s
	lda	1,x
	sta	6,s
	lda	2,x
	sta	7,s
	lda	3,x
	sta	8,s
	tsx
	lda	4,x
	sta	*___SDCC_hc08_ret3
	lda	5,x
	sta	*___SDCC_hc08_ret2
	ldx	6,x
	lda	8,s
;../fabsf.c:41: }
	ais	#8
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
