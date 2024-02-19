;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong_PARM_2
	.globl __divulonglong_PARM_1
	.globl __divulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divulonglong_sloc0_1_0:
	.ds 1
__divulonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divulonglong_PARM_1:
	.ds 8
__divulonglong_PARM_2:
	.ds 8
__divulonglong_reste_65536_2:
	.ds 8
__divulonglong_c_65536_2:
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__divulonglong_sloc1_1_0'
;x                         Allocated with name '__divulonglong_PARM_1'
;y                         Allocated with name '__divulonglong_PARM_2'
;reste                     Allocated with name '__divulonglong_reste_65536_2'
;count                     Allocated to registers 
;c                         Allocated with name '__divulonglong_c_65536_2'
;------------------------------------------------------------
;	../_divulonglong.c: 43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulonglong:
;	../_divulonglong.c: 45: unsigned long long reste = 0L;
	ldx	#0x00
	stx	__divulonglong_reste_65536_2
	stx	(__divulonglong_reste_65536_2 + 1)
	stx	(__divulonglong_reste_65536_2 + 2)
	stx	(__divulonglong_reste_65536_2 + 3)
	stx	(__divulonglong_reste_65536_2 + 4)
	stx	(__divulonglong_reste_65536_2 + 5)
	stx	(__divulonglong_reste_65536_2 + 6)
	stx	(__divulonglong_reste_65536_2 + 7)
;	../_divulonglong.c: 49: do
	ldx	#0x40
	stx	*__divulonglong_sloc0_1_0
00105$:
;	../_divulonglong.c: 52: c = MSB_SET(x);
	lda	__divulonglong_PARM_1
	sta	__rrulonglong_PARM_1
	lda	(__divulonglong_PARM_1 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__divulonglong_PARM_1 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__divulonglong_PARM_1 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__divulonglong_PARM_1 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__divulonglong_PARM_1 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__divulonglong_PARM_1 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	ldx	#0x3f
	stx	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	*__divulonglong_sloc1_1_0
	stx	*(__divulonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__divulonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__divulonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__divulonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__divulonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__divulonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__divulonglong_sloc1_1_0 + 7)
	lda	*__divulonglong_sloc1_1_0
	and	#0x01
	sta	__divulonglong_c_65536_2
;	../_divulonglong.c: 53: x <<= 1;
	lda	__divulonglong_PARM_1
	sta	__rlulonglong_PARM_1
	lda	(__divulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__divulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__divulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__divulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__divulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__divulonglong_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	__divulonglong_PARM_1
	stx	(__divulonglong_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__divulonglong_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__divulonglong_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__divulonglong_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__divulonglong_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__divulonglong_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__divulonglong_PARM_1 + 7)
;	../_divulonglong.c: 54: reste <<= 1;
	lda	__divulonglong_reste_65536_2
	sta	__rlulonglong_PARM_1
	lda	(__divulonglong_reste_65536_2 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__divulonglong_reste_65536_2 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__divulonglong_reste_65536_2 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__divulonglong_reste_65536_2 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__divulonglong_reste_65536_2 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__divulonglong_reste_65536_2 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__divulonglong_reste_65536_2 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	__divulonglong_reste_65536_2
	stx	(__divulonglong_reste_65536_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__divulonglong_reste_65536_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__divulonglong_reste_65536_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__divulonglong_reste_65536_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__divulonglong_reste_65536_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__divulonglong_reste_65536_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__divulonglong_reste_65536_2 + 7)
;	../_divulonglong.c: 55: if (c)
	lda	__divulonglong_c_65536_2
	beq	00102$
;	../_divulonglong.c: 56: reste |= 1L;
	lda	__divulonglong_reste_65536_2
	ora	#0x01
	sta	__divulonglong_reste_65536_2
00102$:
;	../_divulonglong.c: 58: if (reste >= y)
	lda	__divulonglong_reste_65536_2
	sec
	sbc	__divulonglong_PARM_2
	lda	(__divulonglong_reste_65536_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	lda	(__divulonglong_reste_65536_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	lda	(__divulonglong_reste_65536_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	lda	(__divulonglong_reste_65536_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	lda	(__divulonglong_reste_65536_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	lda	(__divulonglong_reste_65536_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	lda	(__divulonglong_reste_65536_2 + 7)
	sbc	(__divulonglong_PARM_2 + 7)
	bcc	00106$
;	../_divulonglong.c: 60: reste -= y;
	lda	__divulonglong_reste_65536_2
	sec
	sbc	__divulonglong_PARM_2
	sta	__divulonglong_reste_65536_2
	lda	(__divulonglong_reste_65536_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	sta	(__divulonglong_reste_65536_2 + 1)
	lda	(__divulonglong_reste_65536_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	sta	(__divulonglong_reste_65536_2 + 2)
	lda	(__divulonglong_reste_65536_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	sta	(__divulonglong_reste_65536_2 + 3)
	lda	(__divulonglong_reste_65536_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	sta	(__divulonglong_reste_65536_2 + 4)
	lda	(__divulonglong_reste_65536_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	sta	(__divulonglong_reste_65536_2 + 5)
	lda	(__divulonglong_reste_65536_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	sta	(__divulonglong_reste_65536_2 + 6)
	lda	(__divulonglong_reste_65536_2 + 7)
	sbc	(__divulonglong_PARM_2 + 7)
	sta	(__divulonglong_reste_65536_2 + 7)
;	../_divulonglong.c: 62: x |= 1L;
	lda	__divulonglong_PARM_1
	ora	#0x01
	sta	__divulonglong_PARM_1
00106$:
;	../_divulonglong.c: 65: while (--count);
	dec	*__divulonglong_sloc0_1_0
	lda	*__divulonglong_sloc0_1_0
	beq	00129$
	jmp	00105$
00129$:
;	../_divulonglong.c: 66: return x;
	lda	(__divulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__divulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__divulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__divulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__divulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__divulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__divulonglong_PARM_1 + 1)
	lda	__divulonglong_PARM_1
;	../_divulonglong.c: 67: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
