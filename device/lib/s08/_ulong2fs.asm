;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _ulong2fs
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
	.globl ___ulong2fs_PARM_1
	.globl ___ulong2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ulong2fs_sloc0_1_0:
	.ds 1
___ulong2fs_sloc1_1_0:
	.ds 4
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
___ulong2fs_PARM_1:
	.ds 4
___ulong2fs_fl_65536_21:
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated with name '___ulong2fs_PARM_1'
;exp                       Allocated to registers 
;fl                        Allocated with name '___ulong2fs_fl_65536_21'
;sloc0                     Allocated with name '___ulong2fs_sloc0_1_0'
;sloc1                     Allocated with name '___ulong2fs_sloc1_1_0'
;------------------------------------------------------------
;../_ulong2fs.c:84: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulong2fs:
;../_ulong2fs.c:89: if (!a)
	lda	___ulong2fs_PARM_1
	ora	(___ulong2fs_PARM_1 + 1)
	ora	(___ulong2fs_PARM_1 + 2)
	ora	(___ulong2fs_PARM_1 + 3)
	bne	00102$
;../_ulong2fs.c:91: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_ulong2fs.c:94: if (a == 0xfffffffful)
	lda	(___ulong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00153$
	lda	(___ulong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00153$
	lda	(___ulong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00153$
	lda	___ulong2fs_PARM_1
	cbeqa	#0xff,00154$
00153$:
	bra	00118$
00154$:
;../_ulong2fs.c:96: return 4294967296.0f;
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x4f,*___SDCC_hc08_ret3
	rts
;../_ulong2fs.c:99: while (a < HIDDEN)
00118$:
	ldx	#0x96
00105$:
	lda	(___ulong2fs_PARM_1 + 1)
	sub	#0x80
	lda	___ulong2fs_PARM_1
	sbc	#0x00
	bcc	00121$
;../_ulong2fs.c:101: a <<= 1;
	pshx
	lda	(___ulong2fs_PARM_1 + 3)
	ldx	(___ulong2fs_PARM_1 + 2)
	lsla
	rolx
	sta	(___ulong2fs_PARM_1 + 3)
	stx	(___ulong2fs_PARM_1 + 2)
	lda	(___ulong2fs_PARM_1 + 1)
	ldx	___ulong2fs_PARM_1
	rola
	rolx
	sta	(___ulong2fs_PARM_1 + 1)
	stx	___ulong2fs_PARM_1
	pulx
;../_ulong2fs.c:102: exp--;
	decx
	bra	00105$
;../_ulong2fs.c:105: while (a & NORM)
00121$:
	stx	*___ulong2fs_sloc0_1_0
00110$:
	lda	___ulong2fs_PARM_1
	beq	00112$
;../_ulong2fs.c:108: if (a & 1)
	lda	(___ulong2fs_PARM_1 + 3)
	bit	#0x01
	beq	00109$
;../_ulong2fs.c:109: a += 2;
	ldhx	#___ulong2fs_PARM_1
	lda	3,x
	add	#0x02
	sta	3,x
	bcc	00159$
	inc	2,x
	bne	00159$
	inc	1,x
	bne	00159$
	inc	,x
00159$:
00109$:
;../_ulong2fs.c:110: a >>= 1;
	lda	(___ulong2fs_PARM_1 + 1)
	ldx	___ulong2fs_PARM_1
	lsrx
	rora
	sta	(___ulong2fs_PARM_1 + 1)
	stx	___ulong2fs_PARM_1
	lda	(___ulong2fs_PARM_1 + 3)
	ldx	(___ulong2fs_PARM_1 + 2)
	rorx
	rora
	sta	(___ulong2fs_PARM_1 + 3)
	stx	(___ulong2fs_PARM_1 + 2)
;../_ulong2fs.c:111: exp++;
	inc	*___ulong2fs_sloc0_1_0
	bra	00110$
00112$:
;../_ulong2fs.c:114: a &= ~HIDDEN ;
	lda	(___ulong2fs_PARM_1 + 1)
	and	#0x7f
	sta	(___ulong2fs_PARM_1 + 1)
;../_ulong2fs.c:116: fl.l = PACK(0,(unsigned long)exp, a);
	mov	*___ulong2fs_sloc0_1_0,*(___ulong2fs_sloc1_1_0 + 3)
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 2)
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 1)
	mov	#0x00,*___ulong2fs_sloc1_1_0
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	ldx	*(___ulong2fs_sloc1_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	stx	*___ulong2fs_sloc1_1_0
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 3)
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	ora	(___ulong2fs_PARM_1 + 3)
	sta	*(___ulong2fs_sloc1_1_0 + 3)
	lda	*(___ulong2fs_sloc1_1_0 + 2)
	ora	(___ulong2fs_PARM_1 + 2)
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 1)
	ora	(___ulong2fs_PARM_1 + 1)
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	lda	*___ulong2fs_sloc1_1_0
	ora	___ulong2fs_PARM_1
	sta	*___ulong2fs_sloc1_1_0
	lda	*___ulong2fs_sloc1_1_0
	sta	___ulong2fs_fl_65536_21
	lda	*(___ulong2fs_sloc1_1_0 + 1)
	sta	(___ulong2fs_fl_65536_21 + 1)
	lda	*(___ulong2fs_sloc1_1_0 + 2)
	sta	(___ulong2fs_fl_65536_21 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	sta	(___ulong2fs_fl_65536_21 + 3)
;../_ulong2fs.c:118: return (fl.f);
	lda	___ulong2fs_fl_65536_21
	sta	*___ulong2fs_sloc1_1_0
	lda	(___ulong2fs_fl_65536_21 + 1)
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	lda	(___ulong2fs_fl_65536_21 + 2)
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	lda	(___ulong2fs_fl_65536_21 + 3)
	sta	*(___ulong2fs_sloc1_1_0 + 3)
	mov	*___ulong2fs_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(___ulong2fs_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
;../_ulong2fs.c:119: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
