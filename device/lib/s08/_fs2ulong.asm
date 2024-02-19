;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fs2ulong
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
	.globl ___fs2ulong_PARM_1
	.globl ___fs2ulong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fs2ulong_sloc0_1_0:
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
___fs2ulong_PARM_1:
	.ds 4
___fs2ulong_fl1_65536_21:
	.ds 4
___fs2ulong_l_65536_21:
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1                        Allocated with name '___fs2ulong_PARM_1'
;fl1                       Allocated with name '___fs2ulong_fl1_65536_21'
;exp                       Allocated to registers x h 
;l                         Allocated with name '___fs2ulong_l_65536_21'
;sloc0                     Allocated with name '___fs2ulong_sloc0_1_0'
;------------------------------------------------------------
;../_fs2ulong.c:104: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2ulong:
;../_fs2ulong.c:110: fl1.f = a1;
	lda	___fs2ulong_PARM_1
	sta	___fs2ulong_fl1_65536_21
	lda	(___fs2ulong_PARM_1 + 1)
	sta	(___fs2ulong_fl1_65536_21 + 1)
	lda	(___fs2ulong_PARM_1 + 2)
	sta	(___fs2ulong_fl1_65536_21 + 2)
	lda	(___fs2ulong_PARM_1 + 3)
	sta	(___fs2ulong_fl1_65536_21 + 3)
;../_fs2ulong.c:112: if (!fl1.l || SIGN(fl1.l))
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*___fs2ulong_sloc0_1_0
	ora	*(___fs2ulong_sloc0_1_0 + 1)
	ora	*(___fs2ulong_sloc0_1_0 + 2)
	ora	*(___fs2ulong_sloc0_1_0 + 3)
	beq	00101$
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*___fs2ulong_sloc0_1_0
	rola
	clra
	rola
	tsta
	beq	00102$
00101$:
;../_fs2ulong.c:113: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_fs2ulong.c:115: exp = EXP (fl1.l) - EXCESS - 24;
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	ldx	*___fs2ulong_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	stx	*(___fs2ulong_sloc0_1_0 + 2)
	mov	#0x00,*(___fs2ulong_sloc0_1_0 + 1)
	mov	#0x00,*___fs2ulong_sloc0_1_0
	ldx	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	psha
	pulh
	clra
	psha
	txa
	sub	#0x96
	tax
	pula
	sbc	#0x00
	psha
	pulh
;../_fs2ulong.c:116: l = MANT (fl1.l);
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	mov	#0x00,*___fs2ulong_sloc0_1_0
	bset	#7,*(___fs2ulong_sloc0_1_0 + 1)
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_65536_21
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_65536_21 + 3)
;../_fs2ulong.c:118: if (exp > 8)
	cphx	#0x0008
	ble	00105$
;../_fs2ulong.c:119: return 0xfffffffful;
	lda	#0xff
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00105$:
;../_fs2ulong.c:121: if (exp < 0)
	cphx	#0x0000
	bge	00107$
;../_fs2ulong.c:122: l >>= -exp;
	txa
	nega
	tax
	tstx
	beq	00131$
00130$:
	lda	___fs2ulong_l_65536_21
	lsra
	sta	___fs2ulong_l_65536_21
	lda	(___fs2ulong_l_65536_21 + 1)
	rora
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	(___fs2ulong_l_65536_21 + 2)
	rora
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	(___fs2ulong_l_65536_21 + 3)
	rora
	sta	(___fs2ulong_l_65536_21 + 3)
	dbnzx	00130$
00131$:
	bra	00108$
00107$:
;../_fs2ulong.c:124: l <<= exp;
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_65536_21 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_65536_21
	tstx
	beq	00133$
00132$:
	lda	(___fs2ulong_l_65536_21 + 3)
	lsla
	sta	(___fs2ulong_l_65536_21 + 3)
	lda	(___fs2ulong_l_65536_21 + 2)
	rola
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	(___fs2ulong_l_65536_21 + 1)
	rola
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	___fs2ulong_l_65536_21
	rola
	sta	___fs2ulong_l_65536_21
	dbnzx	00132$
00133$:
00108$:
;../_fs2ulong.c:126: return l;
	lda	___fs2ulong_l_65536_21
	sta	*___SDCC_hc08_ret3
	lda	(___fs2ulong_l_65536_21 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fs2ulong_l_65536_21 + 2)
	lda	(___fs2ulong_l_65536_21 + 3)
;../_fs2ulong.c:127: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
