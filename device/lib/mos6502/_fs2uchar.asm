;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2uchar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uchar_PARM_1
	.globl ___fs2uchar
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2uchar_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2uchar_PARM_1:
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
;Allocation info for local variables in function '__fs2uchar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2uchar_sloc0_1_0'
;f                         Allocated with name '___fs2uchar_PARM_1'
;ul                        Allocated with name '___fs2uchar_ul_65536_21'
;------------------------------------------------------------
;	../_fs2uchar.c: 51: unsigned char __fs2uchar (float f)
;	-----------------------------------------
;	 function __fs2uchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2uchar:
;	../_fs2uchar.c: 53: unsigned long ul=__fs2ulong(f);
	lda	___fs2uchar_PARM_1
	sta	___fs2ulong_PARM_1
	lda	(___fs2uchar_PARM_1 + 1)
	sta	(___fs2ulong_PARM_1 + 1)
	lda	(___fs2uchar_PARM_1 + 2)
	sta	(___fs2ulong_PARM_1 + 2)
	lda	(___fs2uchar_PARM_1 + 3)
	sta	(___fs2ulong_PARM_1 + 3)
	jsr	___fs2ulong
	sta	*___fs2uchar_sloc0_1_0
	stx	*(___fs2uchar_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2uchar_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2uchar_sloc0_1_0 + 3)
;	../_fs2uchar.c: 54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
	lda	*___fs2uchar_sloc0_1_0
	sec
	sbc	#0xff
	lda	*(___fs2uchar_sloc0_1_0 + 1)
	sbc	#0x00
	lda	*(___fs2uchar_sloc0_1_0 + 2)
	sbc	#0x00
	lda	*(___fs2uchar_sloc0_1_0 + 3)
	sbc	#0x00
	bcc	00102$
	lda	#0xff
	rts
00102$:
;	../_fs2uchar.c: 55: return ul;
	lda	*___fs2uchar_sloc0_1_0
;	../_fs2uchar.c: 56: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
