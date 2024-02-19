;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module expf
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
	.globl _ldexpf
	.globl _expf
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +22
;n                         Allocated to registers 
;xn                        Allocated to stack - sp +14
;g                         Allocated to stack - sp +10
;r                         Allocated to stack - sp +5
;z                         Allocated to stack - sp +2
;y                         Allocated to stack - sp +1
;sign                      Allocated to stack - sp +19
;sloc0                     Allocated to stack - sp +15
;sloc1                     Allocated to stack - sp +13
;sloc2                     Allocated to stack - sp +9
;------------------------------------------------------------
;../expf.c:331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 19 bytes.
_expf:
	ais	#-19
;../expf.c:337: if(x>=0.0)
	tsx
	lda	21,x
	sta	___fslt_PARM_1
	lda	22,x
	sta	(___fslt_PARM_1 + 1)
	lda	23,x
	sta	(___fslt_PARM_1 + 2)
	lda	24,x
	sta	(___fslt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	bne	00102$
;../expf.c:338: { y=x;  sign=0; }
	tsx
	lda	21,x
	sta	,x
	lda	22,x
	sta	1,x
	lda	23,x
	sta	2,x
	lda	24,x
	sta	3,x
	clra
	sta	18,x
	bra	00103$
00102$:
;../expf.c:340: { y=-x; sign=1; }
	tsx
	lda	24,x
	sta	3,x
	lda	23,x
	sta	2,x
	lda	22,x
	sta	1,x
	lda	21,x
	eor	#0x80
	sta	,x
	lda	#0x01
	sta	18,x
00103$:
;../expf.c:342: if(y<EXPEPS) return 1.0;
	tsx
	lda	,x
	sta	___fslt_PARM_1
	lda	1,x
	sta	(___fslt_PARM_1 + 1)
	lda	2,x
	sta	(___fslt_PARM_1 + 2)
	lda	3,x
	sta	(___fslt_PARM_1 + 3)
	ldhx	#0x33d6
	sthx	___fslt_PARM_2
	ldhx	#0xbf95
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00105$
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3f,*___SDCC_hc08_ret3
	jmp	00118$
00105$:
;../expf.c:344: if(y>BIGX)
	ldhx	#0x42b1
	sthx	___fslt_PARM_1
	ldhx	#0x7218
	sthx	(___fslt_PARM_1 + 2)
	tsx
	lda	,x
	sta	___fslt_PARM_2
	lda	1,x
	sta	(___fslt_PARM_2 + 1)
	lda	2,x
	sta	(___fslt_PARM_2 + 2)
	lda	3,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	tsta
	beq	00110$
;../expf.c:346: if(sign)
	tst	19,s
	beq	00107$
;../expf.c:348: errno=ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../expf.c:350: ;
	lda	#0xff
	tax
	mov	#0x7f,*___SDCC_hc08_ret2
	mov	#0x7f,*___SDCC_hc08_ret3
	jmp	00118$
00107$:
;../expf.c:354: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00118$
00110$:
;../expf.c:358: z=y*K1;
	ldhx	#0x3fb8
	sthx	___fsmul_PARM_1
	ldhx	#0xaa3b
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	,x
	sta	___fsmul_PARM_2
	lda	1,x
	sta	(___fsmul_PARM_2 + 1)
	lda	2,x
	sta	(___fsmul_PARM_2 + 2)
	lda	3,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:359: n=z;
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	14,x
	sta	___fs2sint_PARM_1
	lda	15,x
	sta	(___fs2sint_PARM_1 + 1)
	lda	16,x
	sta	(___fs2sint_PARM_1 + 2)
	lda	17,x
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	sta	14,s
	stx	13,s
;../expf.c:361: if(n<0) --n;
	tsx
	lda	12,x
	sub	#0x00
	bge	00112$
	lda	13,x
	sub	#0x01
	sta	13,x
	lda	12,x
	sbc	#0
	sta	12,x
00112$:
;../expf.c:362: if(z-n>=0.5) ++n;
	tsx
	lda	13,x
	ldx	12,x
	jsr	___sint2fs
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	14,x
	sta	___fssub_PARM_1
	lda	15,x
	sta	(___fssub_PARM_1 + 1)
	lda	16,x
	sta	(___fssub_PARM_1 + 2)
	lda	17,x
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ldhx	#0x3f00
	sthx	___fslt_PARM_2
	clrh
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	bne	00114$
	tsx
	inc	13,x
	bne	00161$
	inc	12,x
00161$:
00114$:
;../expf.c:363: xn=n;
	tsx
	lda	13,x
	ldx	12,x
	jsr	___sint2fs
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
;../expf.c:364: g=((y-xn*C1))-xn*C2;
	ldhx	#0x3f31
	sthx	___fsmul_PARM_1
	ldhx	#0x8000
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	,x
	sta	___fssub_PARM_1
	lda	1,x
	sta	(___fssub_PARM_1 + 1)
	lda	2,x
	sta	(___fssub_PARM_1 + 2)
	lda	3,x
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	ldhx	#0xb95e
	sthx	___fsmul_PARM_1
	ldhx	#0x8083
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	8,x
	sta	___fssub_PARM_1
	lda	9,x
	sta	(___fssub_PARM_1 + 1)
	lda	10,x
	sta	(___fssub_PARM_1 + 2)
	lda	11,x
	sta	(___fssub_PARM_1 + 3)
;../expf.c:365: z=g*g;
	jsr	___fssub
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	tsx
	lda	8,x
	sta	___fsmul_PARM_1
	lda	9,x
	sta	(___fsmul_PARM_1 + 1)
	lda	10,x
	sta	(___fsmul_PARM_1 + 2)
	lda	11,x
	sta	(___fsmul_PARM_1 + 3)
	lda	8,x
	sta	___fsmul_PARM_2
	lda	9,x
	sta	(___fsmul_PARM_2 + 1)
	lda	10,x
	sta	(___fsmul_PARM_2 + 2)
	lda	11,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:366: r=P(z)*g;
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	ldhx	#0x3b88
	sthx	___fsmul_PARM_1
	ldhx	#0x5308
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3e80
	sthx	___fsadd_PARM_2
	clrh
	clrx
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	lda	8,x
	sta	___fsmul_PARM_2
	lda	9,x
	sta	(___fsmul_PARM_2 + 1)
	lda	10,x
	sta	(___fsmul_PARM_2 + 2)
	lda	11,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:367: r=0.5+(r/(Q(z)-r));
	jsr	___fsmul
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	ldhx	#0x3d4c
	sthx	___fsmul_PARM_1
	ldhx	#0xbf5b
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3f00
	sthx	___fsadd_PARM_2
	clrh
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	tsx
	lda	8,x
	sta	___fssub_PARM_2
	lda	9,x
	sta	(___fssub_PARM_2 + 1)
	lda	10,x
	sta	(___fssub_PARM_2 + 2)
	lda	11,x
	sta	(___fssub_PARM_2 + 3)
	jsr	___fssub
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
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3f00
	sthx	___fsadd_PARM_2
	clrh
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../expf.c:369: n++;
	tsx
	ldhx	#_ldexpf_PARM_2
	lda	14,s
	add	#0x01
	sta	1,x
	lda	13,s
	adc	#0
	sta	,x
;../expf.c:370: z=ldexpf(r, n);
	tsx
	lda	4,x
	sta	_ldexpf_PARM_1
	lda	5,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	6,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	7,x
	sta	(_ldexpf_PARM_1 + 3)
	jsr	_ldexpf
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
;../expf.c:371: if(sign)
	tst	19,s
	beq	00116$
;../expf.c:372: return 1.0/z;
	ldhx	#0x3f80
	sthx	___fsdiv_PARM_1
	clrh
	clrx
	sthx	(___fsdiv_PARM_1 + 2)
	tsx
	lda	8,x
	sta	___fsdiv_PARM_2
	lda	9,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	10,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	11,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	14,x
	sta	*___SDCC_hc08_ret3
	lda	15,x
	sta	*___SDCC_hc08_ret2
	ldx	16,x
	lda	18,s
	bra	00118$
00116$:
;../expf.c:374: return z;
	tsx
	lda	8,x
	sta	*___SDCC_hc08_ret3
	lda	9,x
	sta	*___SDCC_hc08_ret2
	ldx	10,x
	lda	12,s
00118$:
;../expf.c:375: }
	ais	#19
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
