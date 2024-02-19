;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong_PARM_2
	.globl __rlslonglong_PARM_1
	.globl __rlslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__rlslonglong_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__rlslonglong_PARM_1:
	.ds 8
__rlslonglong_PARM_2:
	.ds 1
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
;Allocation info for local variables in function '_rlslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__rlslonglong_sloc0_1_0'
;l                         Allocated with name '__rlslonglong_PARM_1'
;s                         Allocated with name '__rlslonglong_PARM_2'
;------------------------------------------------------------
;	../_rlslonglong.c: 39: long long _rlslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rlslonglong:
;	../_rlslonglong.c: 41: return((unsigned long long)(l) << s);
	lda	__rlslonglong_PARM_1
	sta	__rlulonglong_PARM_1
	lda	(__rlslonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__rlslonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__rlslonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__rlslonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__rlslonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__rlslonglong_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__rlslonglong_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	__rlslonglong_PARM_2
	sta	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*__rlslonglong_sloc0_1_0
	stx	*(__rlslonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__rlslonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__rlslonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__rlslonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__rlslonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__rlslonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__rlslonglong_sloc0_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(__rlslonglong_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(__rlslonglong_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(__rlslonglong_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(__rlslonglong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(__rlslonglong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(__rlslonglong_sloc0_1_0 + 1)
	lda	*__rlslonglong_sloc0_1_0
;	../_rlslonglong.c: 42: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
