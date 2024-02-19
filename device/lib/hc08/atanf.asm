;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atanf
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +19
;f                         Allocated to stack - sp +5
;r                         Allocated to stack - sp +1
;g                         Allocated to stack - sp +5
;n                         Allocated to registers x h 
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;../atanf.c:55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_atanf:
	ais	#-16
;../atanf.c:58: int n=0;
	clrh
	clrx
;../atanf.c:61: f=fabsf(x);
	pshx
	pshh
	lda	24,s
	psha
	lda	24,s
	psha
	lda	24,s
	psha
	lda	24,s
	psha
	jsr	_fabsf
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	ais	#4
	pulh
	pulx
	lda	13,s
	sta	5,s
	lda	14,s
	sta	6,s
	lda	15,s
	sta	7,s
	lda	16,s
	sta	8,s
;../atanf.c:62: if(f>1.0)
	lda	#0x3f
	sta	___fslt_PARM_1
	lda	#0x80
	sta	(___fslt_PARM_1 + 1)
	clra
	sta	(___fslt_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 3)
	lda	13,s
	sta	___fslt_PARM_2
	lda	14,s
	sta	(___fslt_PARM_2 + 1)
	lda	15,s
	sta	(___fslt_PARM_2 + 2)
	lda	16,s
	sta	(___fslt_PARM_2 + 3)
	pshx
	pshh
	jsr	___fslt
	pulh
	pulx
	tsta
	beq	00102$
;../atanf.c:64: f=1.0/f;
	ldhx	#___fsdiv_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	jsr	___fsdiv
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../atanf.c:65: n=2;
	ldhx	#0x0002
00102$:
;../atanf.c:67: if(f>K1)
	lda	#0x3e
	sta	___fslt_PARM_1
	lda	#0x89
	sta	(___fslt_PARM_1 + 1)
	lda	#0x30
	sta	(___fslt_PARM_1 + 2)
	lda	#0xa3
	sta	(___fslt_PARM_1 + 3)
	lda	5,s
	sta	___fslt_PARM_2
	lda	6,s
	sta	(___fslt_PARM_2 + 1)
	lda	7,s
	sta	(___fslt_PARM_2 + 2)
	lda	8,s
	sta	(___fslt_PARM_2 + 3)
	pshx
	pshh
	jsr	___fslt
	pulh
	pulx
	tsta
	bne	00140$
	jmp	00104$
00140$:
;../atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
	lda	#0x3f
	sta	___fsmul_PARM_1
	lda	#0x3b
	sta	(___fsmul_PARM_1 + 1)
	lda	#0x67
	sta	(___fsmul_PARM_1 + 2)
	lda	#0xaf
	sta	(___fsmul_PARM_1 + 3)
	lda	5,s
	sta	___fsmul_PARM_2
	lda	6,s
	sta	(___fsmul_PARM_2 + 1)
	lda	7,s
	sta	(___fsmul_PARM_2 + 2)
	lda	8,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	pulh
	pulx
	lda	#0x3f
	sta	___fssub_PARM_2
	lda	#0x80
	sta	(___fssub_PARM_2 + 1)
	clra
	sta	(___fssub_PARM_2 + 2)
	sta	(___fssub_PARM_2 + 3)
	pshx
	pshh
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	pulh
	pulx
	lda	5,s
	sta	___fsadd_PARM_2
	lda	6,s
	sta	(___fsadd_PARM_2 + 1)
	lda	7,s
	sta	(___fsadd_PARM_2 + 2)
	lda	8,s
	sta	(___fsadd_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	pulh
	pulx
	lda	5,s
	sta	___fsadd_PARM_1
	lda	6,s
	sta	(___fsadd_PARM_1 + 1)
	lda	7,s
	sta	(___fsadd_PARM_1 + 2)
	lda	8,s
	sta	(___fsadd_PARM_1 + 3)
	lda	#0x3f
	sta	___fsadd_PARM_2
	lda	#0xdd
	sta	(___fsadd_PARM_2 + 1)
	lda	#0xb3
	sta	(___fsadd_PARM_2 + 2)
	lda	#0xd7
	sta	(___fsadd_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	pulh
	pulx
	lda	13,s
	sta	___fsdiv_PARM_1
	lda	14,s
	sta	(___fsdiv_PARM_1 + 1)
	lda	15,s
	sta	(___fsdiv_PARM_1 + 2)
	lda	16,s
	sta	(___fsdiv_PARM_1 + 3)
	pshx
	pshh
	jsr	___fsdiv
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
	pulh
	pulx
;../atanf.c:73: n++;
	aix	#1
00104$:
;../atanf.c:75: if(fabsf(f)<EPS) r=f;
	pshx
	pshh
	lda	10,s
	psha
	lda	10,s
	psha
	lda	10,s
	psha
	lda	10,s
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ais	#4
	pulh
	pulx
	lda	#0x39
	sta	___fslt_PARM_2
	lda	#0x80
	sta	(___fslt_PARM_2 + 1)
	clra
	sta	(___fslt_PARM_2 + 2)
	sta	(___fslt_PARM_2 + 3)
	pshx
	pshh
	jsr	___fslt
	pulh
	pulx
	tsta
	beq	00106$
	lda	5,s
	sta	1,s
	lda	6,s
	sta	2,s
	lda	7,s
	sta	3,s
	lda	8,s
	sta	4,s
	jmp	00107$
00106$:
;../atanf.c:78: g=f*f;
	lda	5,s
	sta	___fsmul_PARM_1
	lda	6,s
	sta	(___fsmul_PARM_1 + 1)
	lda	7,s
	sta	(___fsmul_PARM_1 + 2)
	lda	8,s
	sta	(___fsmul_PARM_1 + 3)
	lda	5,s
	sta	___fsmul_PARM_2
	lda	6,s
	sta	(___fsmul_PARM_2 + 1)
	lda	7,s
	sta	(___fsmul_PARM_2 + 2)
	lda	8,s
	sta	(___fsmul_PARM_2 + 3)
;../atanf.c:79: r=f+P(g,f)/Q(g);
	pshx
	pshh
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	pulh
	pulx
	lda	#0xbd
	sta	___fsmul_PARM_1
	lda	#0x50
	sta	(___fsmul_PARM_1 + 1)
	lda	#0x86
	sta	(___fsmul_PARM_1 + 2)
	lda	#0x91
	sta	(___fsmul_PARM_1 + 3)
	lda	13,s
	sta	___fsmul_PARM_2
	lda	14,s
	sta	(___fsmul_PARM_2 + 1)
	lda	15,s
	sta	(___fsmul_PARM_2 + 2)
	lda	16,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	pulh
	pulx
	lda	#0xbe
	sta	___fsadd_PARM_2
	lda	#0xf1
	sta	(___fsadd_PARM_2 + 1)
	lda	#0x10
	sta	(___fsadd_PARM_2 + 2)
	lda	#0xf6
	sta	(___fsadd_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	pulh
	pulx
	lda	13,s
	sta	___fsmul_PARM_2
	lda	14,s
	sta	(___fsmul_PARM_2 + 1)
	lda	15,s
	sta	(___fsmul_PARM_2 + 2)
	lda	16,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	pulh
	pulx
	lda	5,s
	sta	___fsmul_PARM_2
	lda	6,s
	sta	(___fsmul_PARM_2 + 1)
	lda	7,s
	sta	(___fsmul_PARM_2 + 2)
	lda	8,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	pulh
	pulx
	lda	13,s
	sta	___fsadd_PARM_1
	lda	14,s
	sta	(___fsadd_PARM_1 + 1)
	lda	15,s
	sta	(___fsadd_PARM_1 + 2)
	lda	16,s
	sta	(___fsadd_PARM_1 + 3)
	lda	#0x3f
	sta	___fsadd_PARM_2
	lda	#0xb4
	sta	(___fsadd_PARM_2 + 1)
	lda	#0xcc
	sta	(___fsadd_PARM_2 + 2)
	lda	#0xd3
	sta	(___fsadd_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	pulh
	pulx
	lda	9,s
	sta	___fsdiv_PARM_1
	lda	10,s
	sta	(___fsdiv_PARM_1 + 1)
	lda	11,s
	sta	(___fsdiv_PARM_1 + 2)
	lda	12,s
	sta	(___fsdiv_PARM_1 + 3)
	pshx
	pshh
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	pulh
	pulx
	lda	5,s
	sta	___fsadd_PARM_1
	lda	6,s
	sta	(___fsadd_PARM_1 + 1)
	lda	7,s
	sta	(___fsadd_PARM_1 + 2)
	lda	8,s
	sta	(___fsadd_PARM_1 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
	pulh
	pulx
00107$:
;../atanf.c:81: if(n>1) r=-r;
	cphx	#0x0001
	ble	00109$
	lda	1,s
	eor	#0x80
	sta	1,s
00109$:
;../atanf.c:82: r+=a[n];
	txa
	pshh
	pulx
	lsla
	rolx
	lsla
	rolx
	pshx
	pulh
	tax
	lda	(_atanf_a_65536_26),x
	sta	___fsadd_PARM_2
	lda	(_atanf_a_65536_26+1),x
	sta	(___fsadd_PARM_2 + 1)
	lda	(_atanf_a_65536_26+2),x
	sta	(___fsadd_PARM_2 + 2)
	lda	(_atanf_a_65536_26+3),x
	sta	(___fsadd_PARM_2 + 3)
	tsx
	ldhx	#___fsadd_PARM_1
	lda	1,s
	sta	,x
	lda	2,s
	sta	1,x
	lda	3,s
	sta	2,x
	lda	4,s
	sta	3,x
	jsr	___fsadd
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
;../atanf.c:83: if(x<0.0) r=-r;
	tsx
	ldhx	#___fslt_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00111$
	tsx
	lda	,x
	eor	#0x80
	sta	,x
00111$:
;../atanf.c:84: return r;
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
;../atanf.c:85: }
	ais	#16
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
_atanf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x3f, #0x06, #0x0a, #0x92	;  5.235988e-01
	.byte #0x3f, #0xc9, #0x0f, #0xdb	;  1.570796e+00
	.byte #0x3f, #0x86, #0x0a, #0x92	;  1.047198e+00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
