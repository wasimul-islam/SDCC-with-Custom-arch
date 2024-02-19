;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong_PARM_1
	.globl __rlulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rlulonglong_sloc0_1_0:
	.ds 4
__rlulonglong_sloc1_1_0:
	.ds 1
__rlulonglong_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__rlulonglong_PARM_1:
	.ds 8
__rlulonglong_PARM_2:
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
;Allocation info for local variables in function '_rlulonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rlulonglong_PARM_1'
;s                         Allocated with name '__rlulonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rlulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rlulonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rlulonglong_sloc2_1_0'
;------------------------------------------------------------
;	../_rlulonglong.c: 67: unsigned long long _rlulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rlulonglong:
;	../_rlulonglong.c: 69: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;	../_rlulonglong.c: 70: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	../_rlulonglong.c: 71: uint32_t *const bottom = (uint32_t *)(&l);
;	../_rlulonglong.c: 72: uint16_t *const b = (uint16_t *)(&l);
;	../_rlulonglong.c: 82: (*top) <<= s;
00103$:
;	../_rlulonglong.c: 74: for(;s >= 16; s-= 16)
	lda	__rlulonglong_PARM_2
	cmp	#0x10
	bcc	00101$
;	../_rlulonglong.c: 76: b[3] = b[2];
	ldx	((__rlulonglong_PARM_1 + 0x0004) + 1)
	lda	(__rlulonglong_PARM_1 + 0x0004)
	stx	((__rlulonglong_PARM_1 + 0x0006) + 1)
	sta	(__rlulonglong_PARM_1 + 0x0006)
;	../_rlulonglong.c: 77: b[2] = b[1];
	ldx	((__rlulonglong_PARM_1 + 0x0002) + 1)
	lda	(__rlulonglong_PARM_1 + 0x0002)
	stx	((__rlulonglong_PARM_1 + 0x0004) + 1)
	sta	(__rlulonglong_PARM_1 + 0x0004)
;	../_rlulonglong.c: 78: b[1] = b[0];
	ldx	(__rlulonglong_PARM_1 + 1)
	lda	__rlulonglong_PARM_1
	stx	((__rlulonglong_PARM_1 + 0x0002) + 1)
	sta	(__rlulonglong_PARM_1 + 0x0002)
;	../_rlulonglong.c: 79: b[0] = 0;
	ldx	#0x00
	stx	(__rlulonglong_PARM_1 + 1)
	stx	__rlulonglong_PARM_1
;	../_rlulonglong.c: 74: for(;s >= 16; s-= 16)
	lda	__rlulonglong_PARM_2
	sec
	sbc	#0x10
	sta	__rlulonglong_PARM_2
	jmp	00103$
00101$:
;	../_rlulonglong.c: 82: (*top) <<= s;
	lda	((__rlulonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rlulonglong_sloc0_1_0 + 3)
	lda	((__rlulonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rlulonglong_sloc0_1_0 + 2)
	lda	((__rlulonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rlulonglong_sloc0_1_0 + 1)
	lda	(__rlulonglong_PARM_1 + 0x0004)
	sta	*__rlulonglong_sloc0_1_0
	lda	__rlulonglong_PARM_2
	sta	*__rlulonglong_sloc1_1_0
	ldy	*__rlulonglong_sloc1_1_0
	beq	00117$
00116$:
	asl	*__rlulonglong_sloc0_1_0
	rol	*(__rlulonglong_sloc0_1_0 + 1)
	rol	*(__rlulonglong_sloc0_1_0 + 2)
	rol	*(__rlulonglong_sloc0_1_0 + 3)
	dey
	bne	00116$
00117$:
	lda	*(__rlulonglong_sloc0_1_0 + 3)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 3)
	lda	*(__rlulonglong_sloc0_1_0 + 2)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rlulonglong_sloc0_1_0 + 1)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 1)
	lda	*__rlulonglong_sloc0_1_0
	sta	(__rlulonglong_PARM_1 + 0x0004)
;	../_rlulonglong.c: 83: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	ldx	((__rlulonglong_PARM_1 + 0x0002) + 1)
	lda	(__rlulonglong_PARM_1 + 0x0002)
	sta	*__rlulonglong_sloc2_1_0
	stx	*(__rlulonglong_sloc2_1_0 + 1)
	ldy	#0x00
	sty	*(__rlulonglong_sloc2_1_0 + 2)
	sty	*(__rlulonglong_sloc2_1_0 + 3)
	ldy	*__rlulonglong_sloc1_1_0
	beq	00119$
00118$:
	asl	*__rlulonglong_sloc2_1_0
	rol	*(__rlulonglong_sloc2_1_0 + 1)
	rol	*(__rlulonglong_sloc2_1_0 + 2)
	rol	*(__rlulonglong_sloc2_1_0 + 3)
	dey
	bne	00118$
00119$:
	lda	*(__rlulonglong_sloc2_1_0 + 2)
	ldx	*(__rlulonglong_sloc2_1_0 + 3)
	sta	*__rlulonglong_sloc2_1_0
	stx	*(__rlulonglong_sloc2_1_0 + 1)
	ldy	#0x00
	sty	*(__rlulonglong_sloc2_1_0 + 2)
	sty	*(__rlulonglong_sloc2_1_0 + 3)
	lda	*__rlulonglong_sloc0_1_0
	ora	*__rlulonglong_sloc2_1_0
	sta	*__rlulonglong_sloc2_1_0
	lda	*(__rlulonglong_sloc0_1_0 + 1)
	ora	*(__rlulonglong_sloc2_1_0 + 1)
	sta	*(__rlulonglong_sloc2_1_0 + 1)
	lda	*(__rlulonglong_sloc0_1_0 + 2)
	ora	*(__rlulonglong_sloc2_1_0 + 2)
	sta	*(__rlulonglong_sloc2_1_0 + 2)
	lda	*(__rlulonglong_sloc0_1_0 + 3)
	ora	*(__rlulonglong_sloc2_1_0 + 3)
	sta	*(__rlulonglong_sloc2_1_0 + 3)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 3)
	lda	*(__rlulonglong_sloc2_1_0 + 2)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rlulonglong_sloc2_1_0 + 1)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 1)
	lda	*__rlulonglong_sloc2_1_0
	sta	(__rlulonglong_PARM_1 + 0x0004)
;	../_rlulonglong.c: 84: (*bottom) <<= s;
	lda	(__rlulonglong_PARM_1 + 3)
	sta	*(__rlulonglong_sloc2_1_0 + 3)
	lda	(__rlulonglong_PARM_1 + 2)
	sta	*(__rlulonglong_sloc2_1_0 + 2)
	lda	(__rlulonglong_PARM_1 + 1)
	sta	*(__rlulonglong_sloc2_1_0 + 1)
	lda	__rlulonglong_PARM_1
	sta	*__rlulonglong_sloc2_1_0
	ldy	*__rlulonglong_sloc1_1_0
	beq	00121$
00120$:
	asl	*__rlulonglong_sloc2_1_0
	rol	*(__rlulonglong_sloc2_1_0 + 1)
	rol	*(__rlulonglong_sloc2_1_0 + 2)
	rol	*(__rlulonglong_sloc2_1_0 + 3)
	dey
	bne	00120$
00121$:
	lda	*(__rlulonglong_sloc2_1_0 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	*(__rlulonglong_sloc2_1_0 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	*(__rlulonglong_sloc2_1_0 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	*__rlulonglong_sloc2_1_0
	sta	__rlulonglong_PARM_1
;	../_rlulonglong.c: 86: return(l);
	lda	(__rlulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__rlulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__rlulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__rlulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__rlulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__rlulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__rlulonglong_PARM_1 + 1)
	lda	__rlulonglong_PARM_1
;	../_rlulonglong.c: 87: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
