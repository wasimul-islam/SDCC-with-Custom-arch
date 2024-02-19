;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt_PARM_2
	.globl ___fslt_PARM_1
	.globl ___fslt
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fslt_sloc0_1_0:
	.ds 4
___fslt_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fslt_PARM_1:
	.ds 4
___fslt_PARM_2:
	.ds 4
___fslt_fl1_65536_21:
	.ds 4
___fslt_fl2_65536_21:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function '__fslt'
;------------------------------------------------------------
;a1                        Allocated with name '___fslt_PARM_1'
;a2                        Allocated with name '___fslt_PARM_2'
;fl1                       Allocated with name '___fslt_fl1_65536_21'
;fl2                       Allocated with name '___fslt_fl2_65536_21'
;sloc0                     Allocated with name '___fslt_sloc0_1_0'
;sloc1                     Allocated with name '___fslt_sloc1_1_0'
;------------------------------------------------------------
;	../_fslt.c: 108: _Bool __fslt (float a1, float a2)
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fslt:
;	../_fslt.c: 112: fl1.f = a1;
	lda	(___fslt_PARM_1 + 3)
	sta	(___fslt_fl1_65536_21 + 3)
	lda	(___fslt_PARM_1 + 2)
	sta	(___fslt_fl1_65536_21 + 2)
	lda	(___fslt_PARM_1 + 1)
	sta	(___fslt_fl1_65536_21 + 1)
	lda	___fslt_PARM_1
	sta	___fslt_fl1_65536_21
;	../_fslt.c: 113: fl2.f = a2;
	lda	(___fslt_PARM_2 + 3)
	sta	(___fslt_fl2_65536_21 + 3)
	lda	(___fslt_PARM_2 + 2)
	sta	(___fslt_fl2_65536_21 + 2)
	lda	(___fslt_PARM_2 + 1)
	sta	(___fslt_fl2_65536_21 + 1)
	lda	___fslt_PARM_2
	sta	___fslt_fl2_65536_21
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	lda	(___fslt_fl1_65536_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl1_65536_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl1_65536_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl1_65536_21
	sta	*___fslt_sloc0_1_0
	lda	(___fslt_fl2_65536_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_65536_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_65536_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_65536_21
	sta	*___fslt_sloc1_1_0
	lda	*___fslt_sloc0_1_0
	ora	*___fslt_sloc1_1_0
	sta	*___fslt_sloc1_1_0
	lda	*(___fslt_sloc0_1_0 + 1)
	ora	*(___fslt_sloc1_1_0 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	*(___fslt_sloc0_1_0 + 2)
	ora	*(___fslt_sloc1_1_0 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	*(___fslt_sloc0_1_0 + 3)
	ora	*(___fslt_sloc1_1_0 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	*___fslt_sloc1_1_0
	bne	00132$
	lda	*(___fslt_sloc1_1_0 + 1)
	bne	00132$
	lda	*(___fslt_sloc1_1_0 + 2)
	bne	00132$
	lda	#0x7f
	and	*(___fslt_sloc1_1_0 + 3)
00132$:
	bne	00102$
;	../_fslt.c: 116: return (0);
	lda	#0x00
	rts
00102$:
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
	lda	(___fslt_fl1_65536_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl1_65536_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl1_65536_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl1_65536_21
	sta	*___fslt_sloc1_1_0
	lda	*(___fslt_sloc1_1_0 + 3)
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00106$
00135$:
	bpl	00106$
00134$:
	lda	(___fslt_fl2_65536_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_65536_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_65536_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_65536_21
	sta	*___fslt_sloc1_1_0
	lda	*(___fslt_sloc1_1_0 + 3)
	sec
	sbc	#0x00
	bvc	00138$
	bpl	00137$
	bmi	00106$
00138$:
	bpl	00106$
00137$:
;	../_fslt.c: 119: if (fl2.l < fl1.l)
	lda	(___fslt_fl2_65536_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_65536_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_65536_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_65536_21
	sta	*___fslt_sloc1_1_0
	lda	(___fslt_fl1_65536_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl1_65536_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl1_65536_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl1_65536_21
	sta	*___fslt_sloc0_1_0
	lda	*___fslt_sloc1_1_0
	sec
	sbc	*___fslt_sloc0_1_0
	lda	*(___fslt_sloc1_1_0 + 1)
	sbc	*(___fslt_sloc0_1_0 + 1)
	lda	*(___fslt_sloc1_1_0 + 2)
	sbc	*(___fslt_sloc0_1_0 + 2)
	lda	*(___fslt_sloc1_1_0 + 3)
	sbc	*(___fslt_sloc0_1_0 + 3)
	bvc	00141$
	bpl	00140$
	bmi	00104$
00141$:
	bpl	00104$
00140$:
;	../_fslt.c: 120: return (1);
	lda	#0x01
	rts
00104$:
;	../_fslt.c: 121: return (0);
	lda	#0x00
	rts
00106$:
;	../_fslt.c: 124: if (fl1.l < fl2.l)
	lda	(___fslt_fl1_65536_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl1_65536_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl1_65536_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl1_65536_21
	sta	*___fslt_sloc1_1_0
	lda	(___fslt_fl2_65536_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl2_65536_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl2_65536_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl2_65536_21
	sta	*___fslt_sloc0_1_0
	lda	*___fslt_sloc1_1_0
	sec
	sbc	*___fslt_sloc0_1_0
	lda	*(___fslt_sloc1_1_0 + 1)
	sbc	*(___fslt_sloc0_1_0 + 1)
	lda	*(___fslt_sloc1_1_0 + 2)
	sbc	*(___fslt_sloc0_1_0 + 2)
	lda	*(___fslt_sloc1_1_0 + 3)
	sbc	*(___fslt_sloc0_1_0 + 3)
	bvc	00144$
	bpl	00143$
	bmi	00109$
00144$:
	bpl	00109$
00143$:
;	../_fslt.c: 125: return (1);
	lda	#0x01
	rts
00109$:
;	../_fslt.c: 126: return (0);
	lda	#0x00
;	../_fslt.c: 127: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
