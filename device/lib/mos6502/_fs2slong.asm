;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2slong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong_PARM_1
	.globl ___fs2slong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2slong_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2slong_PARM_1:
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
;Allocation info for local variables in function '__fs2slong'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2slong_sloc0_1_0'
;f                         Allocated with name '___fs2slong_PARM_1'
;------------------------------------------------------------
;	../_fs2slong.c: 108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2slong:
;	../_fs2slong.c: 111: if (!f)
	lda	(___fs2slong_PARM_1 + 3)
	and	#0x7F
	ora	(___fs2slong_PARM_1 + 2)
	ora	(___fs2slong_PARM_1 + 1)
	ora	___fs2slong_PARM_1
	bne	00102$
;	../_fs2slong.c: 112: return 0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_fs2slong.c: 114: if (f<0) {
	lda	___fs2slong_PARM_1
	sta	___fslt_PARM_1
	lda	(___fs2slong_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(___fs2slong_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(___fs2slong_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00104$
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
	lda	___fs2slong_PARM_1
	sta	___fs2ulong_PARM_1
	lda	(___fs2slong_PARM_1 + 1)
	sta	(___fs2ulong_PARM_1 + 1)
	lda	(___fs2slong_PARM_1 + 2)
	sta	(___fs2ulong_PARM_1 + 2)
	lda	(___fs2slong_PARM_1 + 3)
	eor	#0x80
	sta	(___fs2ulong_PARM_1 + 3)
	jsr	___fs2ulong
	sta	*___fs2slong_sloc0_1_0
	stx	*(___fs2slong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2slong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2slong_sloc0_1_0 + 3)
	lda	#0x00
	sec
	sbc	*___fs2slong_sloc0_1_0
	sta	*___fs2slong_sloc0_1_0
	lda	#0x00
	sbc	*(___fs2slong_sloc0_1_0 + 1)
	sta	*(___fs2slong_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(___fs2slong_sloc0_1_0 + 2)
	sta	*(___fs2slong_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(___fs2slong_sloc0_1_0 + 3)
	sta	*(___fs2slong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fs2slong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fs2slong_sloc0_1_0 + 1)
	lda	*___fs2slong_sloc0_1_0
	rts
00104$:
;	../_fs2slong.c: 117: return __fs2ulong(f);
	lda	___fs2slong_PARM_1
	sta	___fs2ulong_PARM_1
	lda	(___fs2slong_PARM_1 + 1)
	sta	(___fs2ulong_PARM_1 + 1)
	lda	(___fs2slong_PARM_1 + 2)
	sta	(___fs2ulong_PARM_1 + 2)
	lda	(___fs2slong_PARM_1 + 3)
	sta	(___fs2ulong_PARM_1 + 3)
	jsr	___fs2ulong
	sta	*___fs2slong_sloc0_1_0
	stx	*(___fs2slong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2slong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2slong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fs2slong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fs2slong_sloc0_1_0 + 1)
	lda	*___fs2slong_sloc0_1_0
;	../_fs2slong.c: 119: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
