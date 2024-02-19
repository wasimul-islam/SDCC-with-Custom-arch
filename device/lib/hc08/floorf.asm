;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module floorf
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
	.globl _floorf
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
;Allocation info for local variables in function 'floorf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +15
;r                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;../floorf.c:33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_floorf:
	ais	#-12
;../floorf.c:36: r=x;
	tsx
	ldhx	#___fs2slong_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	jsr	___fs2slong
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
;../floorf.c:38: return (r+((r>x)?-1:0));
	tsx
	ldhx	#___slong2fs_PARM_1
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	jsr	___slong2fs
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../floorf.c:37: if (r<=0)
	tsx
	clra
	sub	11,x
	clra
	sbc	10,x
	clra
	sbc	9,x
	clra
	sbc	8,x
	bge	00118$
	jmp	00102$
00118$:
;../floorf.c:38: return (r+((r>x)?-1:0));
	ldhx	#___fslt_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	tsx
	ldhx	#___fslt_PARM_2
	lda	5,s
	sta	,x
	lda	6,s
	sta	1,x
	lda	7,s
	sta	2,x
	lda	8,s
	sta	3,x
	jsr	___fslt
	tsta
	beq	00106$
	ldx	#0xff
	txa
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
	lda	12,s
	add	4,s
	sta	3,x
	lda	11,s
	adc	3,s
	sta	2,x
	lda	10,s
	adc	2,s
	sta	1,x
	lda	9,s
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
	bra	00104$
00102$:
;../floorf.c:40: return r;
	tsx
	lda	4,x
	sta	*___SDCC_hc08_ret3
	lda	5,x
	sta	*___SDCC_hc08_ret2
	ldx	6,x
	lda	8,s
00104$:
;../floorf.c:41: }
	ais	#12
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
