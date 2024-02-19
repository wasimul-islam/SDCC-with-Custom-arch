;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module atanf
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
;x                         Allocated to stack - sp +21
;f                         Allocated to stack - sp +5
;r                         Allocated to stack - sp +1
;g                         Allocated to stack - sp +7
;n                         Allocated to stack - sp +17
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;../atanf.c:55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_atanf:
	ais	#-18
;../atanf.c:58: int n=0;
	tsx
	clrh
	clrx
	sthx	17,s
;../atanf.c:61: f=fabsf(x);
	tsx
	lda	23,x
	psha
	lda	22,x
	psha
	lda	21,x
	psha
	lda	20,x
	psha
	jsr	_fabsf
	sta	20,s
	stx	19,s
	lda	*___SDCC_hc08_ret2
	sta	18,s
	lda	*___SDCC_hc08_ret3
	sta	17,s
	ais	#4
	tsx
	lda	12,x
	sta	4,x
	lda	13,x
	sta	5,x
	lda	14,x
	sta	6,x
	lda	15,x
	sta	7,x
;../atanf.c:62: if(f>1.0)
	ldhx	#0x3f80
	sthx	___fslt_PARM_1
	clrh
	clrx
	sthx	(___fslt_PARM_1 + 2)
	tsx
	lda	12,x
	sta	___fslt_PARM_2
	lda	13,x
	sta	(___fslt_PARM_2 + 1)
	lda	14,x
	sta	(___fslt_PARM_2 + 2)
	lda	15,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	tsta
	beq	00102$
;../atanf.c:64: f=1.0/f;
	ldhx	#0x3f80
	sthx	___fsdiv_PARM_1
	clrh
	clrx
	sthx	(___fsdiv_PARM_1 + 2)
	tsx
	lda	12,x
	sta	___fsdiv_PARM_2
	lda	13,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	14,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	15,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../atanf.c:65: n=2;
	tsx
	ldhx	#0x0002
	sthx	17,s
00102$:
;../atanf.c:67: if(f>K1)
	ldhx	#0x3e89
	sthx	___fslt_PARM_1
	ldhx	#0x30a3
	sthx	(___fslt_PARM_1 + 2)
	tsx
	lda	4,x
	sta	___fslt_PARM_2
	lda	5,x
	sta	(___fslt_PARM_2 + 1)
	lda	6,x
	sta	(___fslt_PARM_2 + 2)
	lda	7,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	tsta
	bne	00140$
	jmp	00104$
00140$:
;../atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
	ldhx	#0x3f3b
	sthx	___fsmul_PARM_1
	ldhx	#0x67af
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	4,x
	sta	___fsmul_PARM_2
	lda	5,x
	sta	(___fsmul_PARM_2 + 1)
	lda	6,x
	sta	(___fsmul_PARM_2 + 2)
	lda	7,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	ldhx	#0x3f80
	sthx	___fssub_PARM_2
	clrh
	clrx
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	tsx
	lda	4,x
	sta	___fsadd_PARM_2
	lda	5,x
	sta	(___fsadd_PARM_2 + 1)
	lda	6,x
	sta	(___fsadd_PARM_2 + 2)
	lda	7,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	16,s
	stx	15,s
	lda	*___SDCC_hc08_ret2
	sta	14,s
	lda	*___SDCC_hc08_ret3
	sta	13,s
	tsx
	lda	4,x
	sta	___fsadd_PARM_1
	lda	5,x
	sta	(___fsadd_PARM_1 + 1)
	lda	6,x
	sta	(___fsadd_PARM_1 + 2)
	lda	7,x
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0x3fdd
	sthx	___fsadd_PARM_2
	ldhx	#0xb3d7
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	lda	12,x
	sta	___fsdiv_PARM_1
	lda	13,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	14,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	15,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../atanf.c:73: n++;
	tsx
	inc	17,x
	bne	00141$
	inc	16,x
00141$:
00104$:
;../atanf.c:75: if(fabsf(f)<EPS) r=f;
	tsx
	lda	7,x
	psha
	lda	6,x
	psha
	lda	5,x
	psha
	lda	4,x
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ais	#4
	ldhx	#0x3980
	sthx	___fslt_PARM_2
	clrh
	clrx
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00106$
	tsx
	lda	4,x
	sta	,x
	lda	5,x
	sta	1,x
	lda	6,x
	sta	2,x
	lda	7,x
	sta	3,x
	jmp	00107$
00106$:
;../atanf.c:78: g=f*f;
	tsx
	lda	4,x
	sta	___fsmul_PARM_1
	lda	5,x
	sta	(___fsmul_PARM_1 + 1)
	lda	6,x
	sta	(___fsmul_PARM_1 + 2)
	lda	7,x
	sta	(___fsmul_PARM_1 + 3)
	lda	4,x
	sta	___fsmul_PARM_2
	lda	5,x
	sta	(___fsmul_PARM_2 + 1)
	lda	6,x
	sta	(___fsmul_PARM_2 + 2)
	lda	7,x
	sta	(___fsmul_PARM_2 + 3)
;../atanf.c:79: r=f+P(g,f)/Q(g);
	jsr	___fsmul
	sta	16,s
	stx	15,s
	lda	*___SDCC_hc08_ret2
	sta	14,s
	lda	*___SDCC_hc08_ret3
	sta	13,s
	ldhx	#0xbd50
	sthx	___fsmul_PARM_1
	ldhx	#0x8691
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	12,x
	sta	___fsmul_PARM_2
	lda	13,x
	sta	(___fsmul_PARM_2 + 1)
	lda	14,x
	sta	(___fsmul_PARM_2 + 2)
	lda	15,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xbef1
	sthx	___fsadd_PARM_2
	ldhx	#0x10f6
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	lda	12,x
	sta	___fsmul_PARM_2
	lda	13,x
	sta	(___fsmul_PARM_2 + 1)
	lda	14,x
	sta	(___fsmul_PARM_2 + 2)
	lda	15,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	lda	4,x
	sta	___fsmul_PARM_2
	lda	5,x
	sta	(___fsmul_PARM_2 + 1)
	lda	6,x
	sta	(___fsmul_PARM_2 + 2)
	lda	7,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	tsx
	lda	12,x
	sta	___fsadd_PARM_1
	lda	13,x
	sta	(___fsadd_PARM_1 + 1)
	lda	14,x
	sta	(___fsadd_PARM_1 + 2)
	lda	15,x
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0x3fb4
	sthx	___fsadd_PARM_2
	ldhx	#0xccd3
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	lda	8,x
	sta	___fsdiv_PARM_1
	lda	9,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	10,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	11,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	lda	4,x
	sta	___fsadd_PARM_1
	lda	5,x
	sta	(___fsadd_PARM_1 + 1)
	lda	6,x
	sta	(___fsadd_PARM_1 + 2)
	lda	7,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
00107$:
;../atanf.c:81: if(n>1) r=-r;
	tsx
	lda	#0x01
	sub	17,x
	clra
	sbc	16,x
	bge	00109$
	lda	,x
	eor	#0x80
	sta	,x
00109$:
;../atanf.c:82: r+=a[n];
	lda	18,s
	ldx	17,s
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
	lda	,x
	sta	___fsadd_PARM_1
	lda	1,x
	sta	(___fsadd_PARM_1 + 1)
	lda	2,x
	sta	(___fsadd_PARM_1 + 2)
	lda	3,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
;../atanf.c:83: if(x<0.0) r=-r;
	tsx
	lda	20,x
	sta	___fslt_PARM_1
	lda	21,x
	sta	(___fslt_PARM_1 + 1)
	lda	22,x
	sta	(___fslt_PARM_1 + 2)
	lda	23,x
	sta	(___fslt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
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
	ais	#18
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
