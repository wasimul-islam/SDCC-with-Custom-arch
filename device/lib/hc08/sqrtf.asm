;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sqrtf
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
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf
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
;Allocation info for local variables in function 'sqrtf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +21
;f                         Allocated to stack - sp +15
;y                         Allocated to stack - sp +3
;n                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +15
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +7
;------------------------------------------------------------
;../sqrtf.c:37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_sqrtf:
	ais	#-18
;../sqrtf.c:42: if (x==0.0) return x;
	tsx
	lda	20,x
	and	#0x7F
	ora	21,x
	ora	22,x
	ora	23,x
	bne	00107$
	lda	20,x
	sta	*___SDCC_hc08_ret3
	lda	21,x
	sta	*___SDCC_hc08_ret2
	ldx	22,x
	lda	24,s
	jmp	00111$
00107$:
;../sqrtf.c:43: else if (x==1.0) return 1.0;
	tsx
	ldhx	#___fseq_PARM_1
	lda	21,s
	sta	,x
	lda	22,s
	sta	1,x
	lda	23,s
	sta	2,x
	lda	24,s
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
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3f,*___SDCC_hc08_ret3
	jmp	00111$
00104$:
;../sqrtf.c:44: else if (x<0.0)
	tsx
	ldhx	#___fslt_PARM_1
	lda	21,s
	sta	,x
	lda	22,s
	sta	1,x
	lda	23,s
	sta	2,x
	lda	24,s
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00108$
;../sqrtf.c:46: errno=EDOM;
	clra
	sta	_errno
	lda	#0x21
	sta	(_errno + 1)
;../sqrtf.c:47: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00111$
00108$:
;../sqrtf.c:49: f=frexpf(x, &n);
	tsx
	stx	(_frexpf_PARM_2 + 1)
	pshh
	pula
	sta	_frexpf_PARM_2
	tsx
	ldhx	#_frexpf_PARM_1
	lda	21,s
	sta	,x
	lda	22,s
	sta	1,x
	lda	23,s
	sta	2,x
	lda	24,s
	sta	3,x
	jsr	_frexpf
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
;../sqrtf.c:50: y=0.41731+0.59016*f; /*Educated guess*/
	ldhx	#___fsmul_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x17
	sta	1,x
	lda	#0x14
	sta	2,x
	lda	#0xba
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0x3e
	sta	,x
	lda	#0xd5
	sta	1,x
	lda	#0xa9
	sta	2,x
	deca
	sta	3,x
;../sqrtf.c:52: y+=f/y;
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	ldhx	#___fsadd_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
;../sqrtf.c:53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	ldhx	#_ldexpf_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	lda	#0xff
	sta	_ldexpf_PARM_2
	deca
	sta	(_ldexpf_PARM_2 + 1)
	jsr	_ldexpf
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	ldhx	#___fsadd_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	jsr	___fsadd
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
	tsx
	lda	6,x
	sta	2,x
	lda	7,x
	sta	3,x
	lda	8,x
	sta	4,x
	lda	9,x
	sta	5,x
;../sqrtf.c:55: if (n&1)
	lda	1,x
	bit	#0x01
	beq	00110$
;../sqrtf.c:57: y*=0.7071067812;
	ldhx	#___fsmul_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x35
	sta	1,x
	lda	#0x04
	sta	2,x
	lda	#0xf3
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	jsr	___fsmul
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
;../sqrtf.c:58: ++n;
	tsx
	inc	1,x
	bne	00144$
	inc	,x
00144$:
00110$:
;../sqrtf.c:60: return ldexpf(y, n/2);
	ldx	1,s
	lda	2,s
	psha
	txa
	sub	#0x00
	pula
	bge	00113$
	inca
	bne	00146$
	incx
00146$:
00113$:
	asrx
	rora
	sta	(_ldexpf_PARM_2 + 1)
	stx	_ldexpf_PARM_2
	tsx
	ldhx	#_ldexpf_PARM_1
	lda	3,s
	sta	,x
	lda	4,s
	sta	1,x
	lda	5,s
	sta	2,x
	lda	6,s
	sta	3,x
	jsr	_ldexpf
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
	tsx
	lda	6,x
	sta	*___SDCC_hc08_ret3
	lda	7,x
	sta	*___SDCC_hc08_ret2
	ldx	8,x
	lda	10,s
00111$:
;../sqrtf.c:61: }
	ais	#18
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
