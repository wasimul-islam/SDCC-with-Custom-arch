;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
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
	.globl ___ulonglong2fs_PARM_1
	.globl ___ulonglong2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___ulonglong2fs_sloc0_1_0:
	.ds 1
___ulonglong2fs_sloc1_1_0:
	.ds 4
___ulonglong2fs_sloc2_1_0:
	.ds 4
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
___ulonglong2fs_PARM_1:
	.ds 8
___ulonglong2fs_fl_65536_21:
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ulonglong2fs_sloc0_1_0'
;sloc1                     Allocated with name '___ulonglong2fs_sloc1_1_0'
;sloc2                     Allocated with name '___ulonglong2fs_sloc2_1_0'
;a                         Allocated with name '___ulonglong2fs_PARM_1'
;exp                       Allocated to registers 
;fl                        Allocated with name '___ulonglong2fs_fl_65536_21'
;------------------------------------------------------------
;../_ulonglong2fs.c:61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulonglong2fs:
;../_ulonglong2fs.c:66: if (!a)
	lda	___ulonglong2fs_PARM_1
	ora	(___ulonglong2fs_PARM_1 + 1)
	ora	(___ulonglong2fs_PARM_1 + 2)
	ora	(___ulonglong2fs_PARM_1 + 3)
	ora	(___ulonglong2fs_PARM_1 + 4)
	ora	(___ulonglong2fs_PARM_1 + 5)
	ora	(___ulonglong2fs_PARM_1 + 6)
	ora	(___ulonglong2fs_PARM_1 + 7)
	bne	00102$
;../_ulonglong2fs.c:68: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_ulonglong2fs.c:71: if (a == 0xffffffffffffffffull)
	lda	(___ulonglong2fs_PARM_1 + 7)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 6)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 5)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 4)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00153$
	lda	(___ulonglong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00153$
	lda	___ulonglong2fs_PARM_1
	cbeqa	#0xff,00154$
00153$:
	bra	00118$
00154$:
;../_ulonglong2fs.c:73: return 18446744073709551616.0f;
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x5f,*___SDCC_hc08_ret3
	rts
;../_ulonglong2fs.c:76: while (a < HIDDEN)
00118$:
	ldx	#0x96
00105$:
	lda	(___ulonglong2fs_PARM_1 + 5)
	sub	#0x80
	lda	(___ulonglong2fs_PARM_1 + 4)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 3)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 2)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 1)
	sbc	#0x00
	lda	___ulonglong2fs_PARM_1
	sbc	#0x00
	bcc	00121$
;../_ulonglong2fs.c:78: a <<= 1;
	lda	___ulonglong2fs_PARM_1
	sta	__rlulonglong_PARM_1
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rlulonglong_PARM_2
	pshx
	jsr	__rlulonglong
	sta	(___ulonglong2fs_PARM_1 + 7)
	stx	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_hc08_ret7
	sta	___ulonglong2fs_PARM_1
	pulx
;../_ulonglong2fs.c:79: exp--;
	decx
	jmp	00105$
;../_ulonglong2fs.c:82: while (a & NORM)
00121$:
	stx	*___ulonglong2fs_sloc0_1_0
00110$:
	lda	(___ulonglong2fs_PARM_1 + 4)
	bne	00157$
	jmp	00112$
00157$:
;../_ulonglong2fs.c:85: if (a & 1)
	lda	(___ulonglong2fs_PARM_1 + 7)
	bit	#0x01
	beq	00109$
;../_ulonglong2fs.c:86: a += 2;
	ldhx	#___ulonglong2fs_PARM_1
	lda	7,x
	add	#0x02
	sta	7,x
	bcc	00160$
	inc	6,x
	bne	00160$
	inc	5,x
	bne	00160$
	inc	4,x
	bne	00160$
	inc	3,x
	bne	00160$
	inc	2,x
	bne	00160$
	inc	1,x
	bne	00160$
	inc	,x
00160$:
00109$:
;../_ulonglong2fs.c:87: a >>= 1;
	ldhx	#__rrulonglong_PARM_1
	lda	___ulonglong2fs_PARM_1
	sta	,x
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	1,x
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	2,x
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	3,x
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	4,x
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	5,x
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	6,x
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	7,x
	lda	#0x01
	sta	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	(___ulonglong2fs_PARM_1 + 7)
	stx	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_hc08_ret7
	sta	___ulonglong2fs_PARM_1
;../_ulonglong2fs.c:88: exp++;
	inc	*___ulonglong2fs_sloc0_1_0
	jmp	00110$
00112$:
;../_ulonglong2fs.c:91: a &= ~HIDDEN ;
	lda	(___ulonglong2fs_PARM_1 + 5)
	and	#0x7f
	sta	(___ulonglong2fs_PARM_1 + 5)
	clra
	sta	(___ulonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 1)
	sta	___ulonglong2fs_PARM_1
;../_ulonglong2fs.c:93: fl.l = PACK(0,(unsigned long)exp, a);
	mov	*___ulonglong2fs_sloc0_1_0,*(___ulonglong2fs_sloc1_1_0 + 3)
	sta	*(___ulonglong2fs_sloc1_1_0 + 2)
	sta	*(___ulonglong2fs_sloc1_1_0 + 1)
	sta	*___ulonglong2fs_sloc1_1_0
	lda	*(___ulonglong2fs_sloc1_1_0 + 3)
	ldx	*(___ulonglong2fs_sloc1_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___ulonglong2fs_sloc1_1_0 + 1)
	stx	*___ulonglong2fs_sloc1_1_0
	mov	#0x00,*(___ulonglong2fs_sloc1_1_0 + 3)
	mov	#0x00,*(___ulonglong2fs_sloc1_1_0 + 2)
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	*___ulonglong2fs_sloc2_1_0
	lda	*(___ulonglong2fs_sloc1_1_0 + 3)
	ora	*(___ulonglong2fs_sloc2_1_0 + 3)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	lda	*(___ulonglong2fs_sloc1_1_0 + 2)
	ora	*(___ulonglong2fs_sloc2_1_0 + 2)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	*(___ulonglong2fs_sloc1_1_0 + 1)
	ora	*(___ulonglong2fs_sloc2_1_0 + 1)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	*___ulonglong2fs_sloc1_1_0
	ora	*___ulonglong2fs_sloc2_1_0
	sta	*___ulonglong2fs_sloc2_1_0
	lda	*___ulonglong2fs_sloc2_1_0
	sta	___ulonglong2fs_fl_65536_21
	lda	*(___ulonglong2fs_sloc2_1_0 + 1)
	sta	(___ulonglong2fs_fl_65536_21 + 1)
	lda	*(___ulonglong2fs_sloc2_1_0 + 2)
	sta	(___ulonglong2fs_fl_65536_21 + 2)
	lda	*(___ulonglong2fs_sloc2_1_0 + 3)
	sta	(___ulonglong2fs_fl_65536_21 + 3)
;../_ulonglong2fs.c:95: return (fl.f);
	lda	___ulonglong2fs_fl_65536_21
	sta	*___ulonglong2fs_sloc2_1_0
	lda	(___ulonglong2fs_fl_65536_21 + 1)
	sta	*(___ulonglong2fs_sloc2_1_0 + 1)
	lda	(___ulonglong2fs_fl_65536_21 + 2)
	sta	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	(___ulonglong2fs_fl_65536_21 + 3)
	sta	*(___ulonglong2fs_sloc2_1_0 + 3)
	mov	*___ulonglong2fs_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(___ulonglong2fs_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___ulonglong2fs_sloc2_1_0 + 2)
	lda	*(___ulonglong2fs_sloc2_1_0 + 3)
;../_ulonglong2fs.c:96: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
