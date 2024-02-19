;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ceilf
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
	.globl _ceilf
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
;Allocation info for local variables in function 'ceilf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +11
;r                         Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;../ceilf.c:33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_ceilf:
	ais	#-8
;../ceilf.c:36: r=x;
	tsx
	ldhx	#___fs2slong_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fs2slong
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../ceilf.c:38: return r;
	tsx
	ldhx	#___slong2fs_PARM_1
	lda	5,s
	sta	,x
	lda	6,s
	sta	1,x
	lda	7,s
	sta	2,x
	lda	8,s
	sta	3,x
	jsr	___slong2fs
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
;../ceilf.c:37: if (r<0)
	tsx
	lda	4,x
	sub	#0x00
	bge	00102$
;../ceilf.c:38: return r;
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
	jmp	00104$
00102$:
;../ceilf.c:40: return (r+((r<x)?1:0));
	tsx
	ldhx	#___fslt_PARM_1
	lda	1,s
	sta	,x
	lda	2,s
	sta	1,x
	lda	3,s
	sta	2,x
	lda	4,s
	sta	3,x
	tsx
	ldhx	#___fslt_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fslt
	tsta
	beq	00106$
	clrx
	lda	#0x01
	bra	00107$
00106$:
	clrx
	txa
00107$:
	sta	4,s
	txa
	sta	3,s
	rola	
	clra	
	sbc	#0x00
	sta	2,s
	sta	1,s
	tsx
	ldhx	#___slong2fs_PARM_1
	lda	8,s
	add	4,s
	sta	3,x
	lda	7,s
	adc	3,s
	sta	2,x
	lda	6,s
	adc	2,s
	sta	1,x
	lda	5,s
	adc	1,s
	sta	,x
	jsr	___slong2fs
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
00104$:
;../ceilf.c:41: }
	ais	#8
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
