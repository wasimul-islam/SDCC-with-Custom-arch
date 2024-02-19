;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong_PARM_2
	.globl __modulonglong_PARM_1
	.globl __modulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__modulonglong_sloc0_1_0:
	.ds 1
__modulonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__modulonglong_PARM_1:
	.ds 8
__modulonglong_PARM_2:
	.ds 8
__modulonglong_count_65536_2:
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__modulonglong_sloc1_1_0'
;a                         Allocated with name '__modulonglong_PARM_1'
;b                         Allocated with name '__modulonglong_PARM_2'
;count                     Allocated with name '__modulonglong_count_65536_2'
;------------------------------------------------------------
;	../_modulonglong.c: 44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulonglong:
;	../_modulonglong.c: 46: unsigned char count = 0;
	ldx	#0x00
	stx	__modulonglong_count_65536_2
;	../_modulonglong.c: 48: while (!MSB_SET(b))
	stx	*__modulonglong_sloc0_1_0
00103$:
	lda	__modulonglong_PARM_2
	sta	__rrulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	ldx	#0x3f
	stx	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	*__modulonglong_sloc1_1_0
	stx	*(__modulonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__modulonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__modulonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__modulonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__modulonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__modulonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__modulonglong_sloc1_1_0 + 7)
	lda	#0x01
	and	*__modulonglong_sloc1_1_0
	beq	00139$
	jmp	00117$
00139$:
;	../_modulonglong.c: 50: b <<= 1;
	lda	__modulonglong_PARM_2
	sta	__rlulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
;	../_modulonglong.c: 51: if (b > a)
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	bcs	00102$
;	../_modulonglong.c: 53: b >>=1;
	lda	__modulonglong_PARM_2
	sta	__rrulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
;	../_modulonglong.c: 54: break;
	jmp	00117$
00102$:
;	../_modulonglong.c: 56: count++;
	inc	*__modulonglong_sloc0_1_0
	lda	*__modulonglong_sloc0_1_0
	sta	__modulonglong_count_65536_2
	jmp	00103$
;	../_modulonglong.c: 58: do
00117$:
	lda	__modulonglong_count_65536_2
	sta	*__modulonglong_sloc1_1_0
00108$:
;	../_modulonglong.c: 60: if (a >= b)
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	bcc	00107$
;	../_modulonglong.c: 61: a -= b;
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	sta	__modulonglong_PARM_1
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	sta	(__modulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	sta	(__modulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	sta	(__modulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	sta	(__modulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	sta	(__modulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	sta	(__modulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	sta	(__modulonglong_PARM_1 + 7)
00107$:
;	../_modulonglong.c: 62: b >>= 1;
	lda	__modulonglong_PARM_2
	sta	__rrulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	ldx	#0x01
	stx	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
;	../_modulonglong.c: 64: while (count--);
	lda	*__modulonglong_sloc1_1_0
	dec	*__modulonglong_sloc1_1_0
	cmp	#0x00
	beq	00142$
	jmp	00108$
00142$:
;	../_modulonglong.c: 66: return a;
	lda	(__modulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__modulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__modulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__modulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__modulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__modulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__modulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_1
;	../_modulonglong.c: 67: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
