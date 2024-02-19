;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module acosf
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
	.globl _asincosf
	.globl _acosf
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
;Allocation info for local variables in function 'acosf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;../acosf.c:36: float acosf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function acosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_acosf:
	ais	#-4
;../acosf.c:38: if (x == 1.0) return 0.0;
	tsx
	ldhx	#___fseq_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
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
	beq	00108$
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00110$
00108$:
;../acosf.c:39: else if (x ==-1.0) return PI;
	tsx
	ldhx	#___fseq_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	ldhx	#___fseq_PARM_2
	lda	#0xbf
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fseq
	tsta
	beq	00105$
	lda	#0xdb
	ldx	#0x0f
	mov	#0x49,*___SDCC_hc08_ret2
	mov	#0x40,*___SDCC_hc08_ret3
	bra	00110$
00105$:
;../acosf.c:40: else if (x == 0.0) return HALF_PI;
	tsx
	lda	6,x
	and	#0x7F
	ora	7,x
	ora	8,x
	ora	9,x
	bne	00102$
	lda	#0xdb
	ldx	#0x0f
	mov	#0xc9,*___SDCC_hc08_ret2
	mov	#0x3f,*___SDCC_hc08_ret3
	bra	00110$
00102$:
;../acosf.c:41: else               return asincosf(x, true);
	tsx
	ldhx	#_asincosf_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	lda	#0x01
	sta	_asincosf_PARM_2
	jsr	_asincosf
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
00110$:
;../acosf.c:42: }
	ais	#4
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
