;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _slonglong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slonglong2fs_PARM_1
	.globl ___slonglong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___slonglong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___slonglong2fs_PARM_1:
	.ds 8
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
;Allocation info for local variables in function '__slonglong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___slonglong2fs_sloc0_1_0'
;sll                       Allocated with name '___slonglong2fs_PARM_1'
;------------------------------------------------------------
;	../_slonglong2fs.c: 36: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED {
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___slonglong2fs:
;	../_slonglong2fs.c: 37: if (sll<0) 
	lda	(___slonglong2fs_PARM_1 + 7)
	sec
	sbc	#0x00
	bvc	00111$
	bpl	00110$
	bmi	00102$
00111$:
	bpl	00102$
00110$:
;	../_slonglong2fs.c: 38: return -__ulonglong2fs(-sll);
	lda	#0x00
	sec
	sbc	___slonglong2fs_PARM_1
	sta	___ulonglong2fs_PARM_1
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 1)
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 4)
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 5)
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 6)
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 7)
	sta	(___ulonglong2fs_PARM_1 + 7)
	jsr	___ulonglong2fs
	sta	*___slonglong2fs_sloc0_1_0
	stx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	eor	#0x80
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___slonglong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___slonglong2fs_sloc0_1_0
	rts
00102$:
;	../_slonglong2fs.c: 40: return __ulonglong2fs(sll);
	lda	___slonglong2fs_PARM_1
	sta	___ulonglong2fs_PARM_1
	lda	(___slonglong2fs_PARM_1 + 1)
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	(___slonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	(___slonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	(___slonglong2fs_PARM_1 + 4)
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	(___slonglong2fs_PARM_1 + 5)
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	(___slonglong2fs_PARM_1 + 6)
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	(___slonglong2fs_PARM_1 + 7)
	sta	(___ulonglong2fs_PARM_1 + 7)
	jsr	___ulonglong2fs
	sta	*___slonglong2fs_sloc0_1_0
	stx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___slonglong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___slonglong2fs_sloc0_1_0
;	../_slonglong2fs.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
