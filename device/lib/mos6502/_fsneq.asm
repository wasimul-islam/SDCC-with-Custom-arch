;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsneq
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsneq_PARM_2
	.globl ___fsneq_PARM_1
	.globl ___fsneq
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsneq_sloc0_1_0:
	.ds 4
___fsneq_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsneq_PARM_1:
	.ds 4
___fsneq_PARM_2:
	.ds 4
___fsneq_fl1_65536_21:
	.ds 4
___fsneq_fl2_65536_21:
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
;Allocation info for local variables in function '__fsneq'
;------------------------------------------------------------
;a1                        Allocated with name '___fsneq_PARM_1'
;a2                        Allocated with name '___fsneq_PARM_2'
;fl1                       Allocated with name '___fsneq_fl1_65536_21'
;fl2                       Allocated with name '___fsneq_fl2_65536_21'
;sloc0                     Allocated with name '___fsneq_sloc0_1_0'
;sloc1                     Allocated with name '___fsneq_sloc1_1_0'
;------------------------------------------------------------
;	../_fsneq.c: 80: _Bool __fsneq (float a1, float a2)
;	-----------------------------------------
;	 function __fsneq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsneq:
;	../_fsneq.c: 84: fl1.f = a1;
	lda	(___fsneq_PARM_1 + 3)
	sta	(___fsneq_fl1_65536_21 + 3)
	lda	(___fsneq_PARM_1 + 2)
	sta	(___fsneq_fl1_65536_21 + 2)
	lda	(___fsneq_PARM_1 + 1)
	sta	(___fsneq_fl1_65536_21 + 1)
	lda	___fsneq_PARM_1
	sta	___fsneq_fl1_65536_21
;	../_fsneq.c: 85: fl2.f = a2;
	lda	(___fsneq_PARM_2 + 3)
	sta	(___fsneq_fl2_65536_21 + 3)
	lda	(___fsneq_PARM_2 + 2)
	sta	(___fsneq_fl2_65536_21 + 2)
	lda	(___fsneq_PARM_2 + 1)
	sta	(___fsneq_fl2_65536_21 + 1)
	lda	___fsneq_PARM_2
	sta	___fsneq_fl2_65536_21
;	../_fsneq.c: 87: if (fl1.l == fl2.l)
	lda	(___fsneq_fl1_65536_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	(___fsneq_fl1_65536_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl1_65536_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	___fsneq_fl1_65536_21
	sta	*___fsneq_sloc0_1_0
	lda	(___fsneq_fl2_65536_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	(___fsneq_fl2_65536_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl2_65536_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	___fsneq_fl2_65536_21
	sta	*___fsneq_sloc1_1_0
	lda	*___fsneq_sloc0_1_0
	cmp	*___fsneq_sloc1_1_0
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 1)
	cmp	*(___fsneq_sloc1_1_0 + 1)
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 2)
	cmp	*(___fsneq_sloc1_1_0 + 2)
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 3)
	cmp	*(___fsneq_sloc1_1_0 + 3)
	bne	00102$
;	../_fsneq.c: 88: return (0);
	lda	#0x00
	rts
00102$:
;	../_fsneq.c: 89: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	lda	(___fsneq_fl1_65536_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	(___fsneq_fl1_65536_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl1_65536_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	___fsneq_fl1_65536_21
	sta	*___fsneq_sloc1_1_0
	lda	(___fsneq_fl2_65536_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	(___fsneq_fl2_65536_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl2_65536_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	___fsneq_fl2_65536_21
	sta	*___fsneq_sloc0_1_0
	lda	*___fsneq_sloc1_1_0
	ora	*___fsneq_sloc0_1_0
	sta	*___fsneq_sloc1_1_0
	lda	*(___fsneq_sloc1_1_0 + 1)
	ora	*(___fsneq_sloc0_1_0 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	*(___fsneq_sloc1_1_0 + 2)
	ora	*(___fsneq_sloc0_1_0 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	*(___fsneq_sloc1_1_0 + 3)
	ora	*(___fsneq_sloc0_1_0 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	*___fsneq_sloc1_1_0
	bne	00120$
	lda	*(___fsneq_sloc1_1_0 + 1)
	bne	00120$
	lda	*(___fsneq_sloc1_1_0 + 2)
	bne	00120$
	lda	#0x7f
	and	*(___fsneq_sloc1_1_0 + 3)
00120$:
	bne	00104$
;	../_fsneq.c: 90: return (0);
	lda	#0x00
	rts
00104$:
;	../_fsneq.c: 91: return (1);
	lda	#0x01
;	../_fsneq.c: 92: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
