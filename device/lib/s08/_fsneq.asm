;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fsneq
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
	.globl ___fsneq_PARM_2
	.globl ___fsneq_PARM_1
	.globl ___fsneq
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsneq_sloc0_1_0:
	.ds 4
___fsneq_sloc1_1_0:
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
___fsneq_PARM_1:
	.ds 4
___fsneq_PARM_2:
	.ds 4
___fsneq_fl1_65536_21:
	.ds 4
___fsneq_fl2_65536_21:
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
;Allocation info for local variables in function '__fsneq'
;------------------------------------------------------------
;a1                        Allocated with name '___fsneq_PARM_1'
;a2                        Allocated with name '___fsneq_PARM_2'
;fl1                       Allocated with name '___fsneq_fl1_65536_21'
;fl2                       Allocated with name '___fsneq_fl2_65536_21'
;sloc0                     Allocated with name '___fsneq_sloc0_1_0'
;sloc1                     Allocated with name '___fsneq_sloc1_1_0'
;------------------------------------------------------------
;../_fsneq.c:80: _Bool __fsneq (float a1, float a2)
;	-----------------------------------------
;	 function __fsneq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsneq:
;../_fsneq.c:84: fl1.f = a1;
	lda	___fsneq_PARM_1
	sta	___fsneq_fl1_65536_21
	lda	(___fsneq_PARM_1 + 1)
	sta	(___fsneq_fl1_65536_21 + 1)
	lda	(___fsneq_PARM_1 + 2)
	sta	(___fsneq_fl1_65536_21 + 2)
	lda	(___fsneq_PARM_1 + 3)
	sta	(___fsneq_fl1_65536_21 + 3)
;../_fsneq.c:85: fl2.f = a2;
	lda	___fsneq_PARM_2
	sta	___fsneq_fl2_65536_21
	lda	(___fsneq_PARM_2 + 1)
	sta	(___fsneq_fl2_65536_21 + 1)
	lda	(___fsneq_PARM_2 + 2)
	sta	(___fsneq_fl2_65536_21 + 2)
	lda	(___fsneq_PARM_2 + 3)
	sta	(___fsneq_fl2_65536_21 + 3)
;../_fsneq.c:87: if (fl1.l == fl2.l)
	lda	___fsneq_fl1_65536_21
	sta	*___fsneq_sloc0_1_0
	lda	(___fsneq_fl1_65536_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	(___fsneq_fl1_65536_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl1_65536_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	___fsneq_fl2_65536_21
	sta	*___fsneq_sloc1_1_0
	lda	(___fsneq_fl2_65536_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	(___fsneq_fl2_65536_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl2_65536_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	*(___fsneq_sloc0_1_0 + 3)
	cmp	*(___fsneq_sloc1_1_0 + 3)
	bne	00117$
	lda	*(___fsneq_sloc0_1_0 + 2)
	cmp	*(___fsneq_sloc1_1_0 + 2)
	bne	00117$
	lda	*(___fsneq_sloc0_1_0 + 1)
	cmp	*(___fsneq_sloc1_1_0 + 1)
	bne	00117$
	lda	*___fsneq_sloc0_1_0
	cbeq	*___fsneq_sloc1_1_0,00118$
00117$:
	bra	00102$
00118$:
;../_fsneq.c:88: return (0);
	clra
	rts
00102$:
;../_fsneq.c:89: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	lda	___fsneq_fl1_65536_21
	sta	*___fsneq_sloc1_1_0
	lda	(___fsneq_fl1_65536_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	(___fsneq_fl1_65536_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl1_65536_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	___fsneq_fl2_65536_21
	sta	*___fsneq_sloc0_1_0
	lda	(___fsneq_fl2_65536_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	(___fsneq_fl2_65536_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl2_65536_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	*(___fsneq_sloc1_1_0 + 3)
	ora	*(___fsneq_sloc0_1_0 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	*(___fsneq_sloc1_1_0 + 2)
	ora	*(___fsneq_sloc0_1_0 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	*(___fsneq_sloc1_1_0 + 1)
	ora	*(___fsneq_sloc0_1_0 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	*___fsneq_sloc1_1_0
	ora	*___fsneq_sloc0_1_0
	sta	*___fsneq_sloc1_1_0
	tst	*(___fsneq_sloc1_1_0 + 3)
	bne	00119$
	tst	*(___fsneq_sloc1_1_0 + 2)
	bne	00119$
	tst	*(___fsneq_sloc1_1_0 + 1)
	bne	00119$
	lda	*___fsneq_sloc1_1_0
	bit	#0x7f
00119$:
	bne	00104$
;../_fsneq.c:90: return (0);
	clra
	rts
00104$:
;../_fsneq.c:91: return (1);
	lda	#0x01
;../_fsneq.c:92: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
