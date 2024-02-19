;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module logf
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
	.globl _frexpf
	.globl _logf
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +25
;Rz                        Allocated to stack - sp +19
;f                         Allocated to stack - sp +15
;z                         Allocated to stack - sp +11
;w                         Allocated to stack - sp +7
;znum                      Allocated to stack - sp +7
;zden                      Allocated to stack - sp +3
;xn                        Allocated to stack - sp -5
;n                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +19
;sloc1                     Allocated to stack - sp +15
;sloc2                     Allocated to stack - sp +11
;------------------------------------------------------------
;../logf.c:216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_logf:
	ais	#-22
;../logf.c:226: if (x<=0.0)
	ldhx	#___fslt_PARM_1
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	tsx
	ldhx	#___fslt_PARM_2
	lda	25,s
	sta	,x
	lda	26,s
	sta	1,x
	lda	27,s
	sta	2,x
	lda	28,s
	sta	3,x
	jsr	___fslt
	tsta
	bne	00102$
;../logf.c:228: errno=EDOM;
	clra
	sta	_errno
	lda	#0x21
	sta	(_errno + 1)
;../logf.c:229: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00106$
00102$:
;../logf.c:231: f=frexpf(x, &n);
	tsx
	stx	(_frexpf_PARM_2 + 1)
	pshh
	pula
	sta	_frexpf_PARM_2
	tsx
	ldhx	#_frexpf_PARM_1
	lda	25,s
	sta	,x
	lda	26,s
	sta	1,x
	lda	27,s
	sta	2,x
	lda	28,s
	sta	3,x
	jsr	_frexpf
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
;../logf.c:232: znum=f-0.5;
	tsx
	ldhx	#___fssub_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	ldhx	#___fssub_PARM_2
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	jsr	___fssub
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	14,x
	sta	6,x
	lda	15,x
	sta	7,x
	lda	16,x
	sta	8,x
	lda	17,x
	sta	9,x
;../logf.c:233: if (f>C0)
	ldhx	#___fslt_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x35
	sta	1,x
	lda	#0x04
	sta	2,x
	lda	#0xf3
	sta	3,x
	tsx
	ldhx	#___fslt_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	jsr	___fslt
	tsta
	bne	00119$
	jmp	00104$
00119$:
;../logf.c:235: znum-=0.5;
	tsx
	ldhx	#___fssub_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	ldhx	#___fssub_PARM_2
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	jsr	___fssub
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../logf.c:236: zden=(f*0.5)+0.5;
	ldhx	#___fsmul_PARM_1
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
	bra	00105$
00104$:
;../logf.c:240: n--;
	tsx
	lda	1,x
	sub	#0x01
	sta	1,x
	lda	,x
	sbc	#0
	sta	,x
;../logf.c:241: zden=znum*0.5+0.5;
	ldhx	#___fsmul_PARM_1
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
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
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
00105$:
;../logf.c:243: z=znum/zden;
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	3,s
	sta	,x
	lda	4,s
	sta	1,x
	lda	5,s
	sta	2,x
	lda	6,s
	sta	3,x
;../logf.c:244: w=z*z;
	jsr	___fsdiv
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	ldhx	#___fsmul_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
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
;../logf.c:246: Rz=z+z*(w*A(w)/B(w));
	jsr	___fsmul
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	ldhx	#___fsmul_PARM_1
	lda	#0xbf
	sta	,x
	lda	#0x0d
	sta	1,x
	lda	#0x7e
	sta	2,x
	lda	#0x3d
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	jsr	___fsmul
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	ldhx	#___fsadd_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	ldhx	#___fsadd_PARM_2
	lda	#0xc0
	sta	,x
	lda	#0xd4
	sta	1,x
	lda	#0x3f
	sta	2,x
	lda	#0x3a
	sta	3,x
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsdiv
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	tsx
	ldhx	#___fsmul_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	ldhx	#___fsadd_PARM_1
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
;../logf.c:247: xn=n;
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	1,x
	ldx	,x
	jsr	___sint2fs
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
;../logf.c:248: return ((xn*C2+Rz)+xn*C1);
	ldhx	#___fsmul_PARM_1
	lda	#0xb9
	sta	,x
	lda	#0x5e
	sta	1,x
	lda	#0x80
	sta	2,x
	lda	#0x83
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
	tsx
	ldhx	#___fsadd_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	ldhx	#___fsmul_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x31
	sta	1,x
	lda	#0x80
	sta	2,x
	clra
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
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	10,x
	sta	*___SDCC_hc08_ret3
	lda	11,x
	sta	*___SDCC_hc08_ret2
	ldx	12,x
	lda	14,s
00106$:
;../logf.c:249: }
	ais	#22
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
