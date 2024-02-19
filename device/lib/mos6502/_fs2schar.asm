;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar_PARM_1
	.globl ___fs2schar
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2schar_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2schar_PARM_1:
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2schar_sloc0_1_0'
;f                         Allocated with name '___fs2schar_PARM_1'
;sl                        Allocated with name '___fs2schar_sl_65536_21'
;------------------------------------------------------------
;	../_fs2schar.c: 87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2schar:
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
	lda	___fs2schar_PARM_1
	sta	___fs2slong_PARM_1
	lda	(___fs2schar_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	(___fs2schar_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(___fs2schar_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	sta	*___fs2schar_sloc0_1_0
	stx	*(___fs2schar_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2schar_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2schar_sloc0_1_0 + 3)
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
	lda	*___fs2schar_sloc0_1_0
	sec
	sbc	#0x7f
	lda	*(___fs2schar_sloc0_1_0 + 1)
	sbc	#0x00
	lda	*(___fs2schar_sloc0_1_0 + 2)
	sbc	#0x00
	lda	*(___fs2schar_sloc0_1_0 + 3)
	sbc	#0x00
	bvs	00116$
	bpl	00115$
	bmi	00102$
00116$:
	bpl	00102$
00115$:
;	../_fs2schar.c: 91: return SCHAR_MAX;
	lda	#0x7f
	rts
00102$:
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
	lda	#0x80
	sec
	sbc	*___fs2schar_sloc0_1_0
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 1)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 2)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 3)
	bvs	00119$
	bpl	00118$
	bmi	00104$
00119$:
	bpl	00104$
00118$:
;	../_fs2schar.c: 93: return -SCHAR_MIN;
	lda	#0x80
	rts
00104$:
;	../_fs2schar.c: 94: return sl;
	lda	*___fs2schar_sloc0_1_0
;	../_fs2schar.c: 95: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
