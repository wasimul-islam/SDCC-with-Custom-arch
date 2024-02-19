;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;l                         Allocated to stack - sp +25
;s                         Allocated to stack - sp +33
;top                       Allocated to stack - sp +21
;middle                    Allocated to stack - sp +19
;bottom                    Allocated to stack - sp +17
;b                         Allocated to stack - sp +15
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +9
;sloc3                     Allocated to stack - sp +5
;sloc4                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_rlulonglong.c: 67: unsigned long long _rlulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
__rlulonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xea
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_rlulonglong.c: 69: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
	tsx
	txa
	clc
	adc	#0x19
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__TEMP+0)
	lda	0x10e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x04
	bcc	00115$
	inx
00115$:
	pha
	txa
	tsx
	sta	0x117,x
	pla
	sta	0x116,x
;	../_rlulonglong.c: 70: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
	lda	0x10e, x
	sta	*(__TEMP+0)
	lda	0x10f,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00116$
	inx
00116$:
	pha
	txa
	tsx
	sta	0x115,x
	pla
	sta	0x114,x
;	../_rlulonglong.c: 71: uint32_t *const bottom = (uint32_t *)(&l);
	lda	0x10e, x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10d,x
	lda	0x10c,x
	sta	0x112,x
	lda	0x10d,x
	sta	0x113,x
;	../_rlulonglong.c: 72: uint16_t *const b = (uint16_t *)(&l);
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10d,x
	lda	0x10c,x
	sta	0x110,x
	lda	0x10d,x
	sta	0x111,x
;	../_rlulonglong.c: 82: (*top) <<= s;
00103$:
;	../_rlulonglong.c: 74: for(;s >= 16; s-= 16)
	tsx
	lda	0x121,x
	cmp	#0x10
	bcs	00117$
	jmp	00101$
00117$:
;	../_rlulonglong.c: 76: b[3] = b[2];
	lda	0x10f,x
	sta	0x10b,x
	lda	0x110,x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x04
	lda	[__DPTR],y
	sta	0x109,x
	iny
	lda	[__DPTR],y
	sta	0x10a,x
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	0x109,x
	iny
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 77: b[2] = b[1];
	lda	0x10f,x
	sta	0x109,x
	lda	0x110,x
	sta	0x10a,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	sta	0x10b,x
	iny
	lda	[__DPTR],y
	sta	0x10c,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	0x10b,x
	iny
	sta	[__DPTR],y
	lda	0x10c,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 78: b[1] = b[0];
	lda	0x10f,x
	sta	*(__DPTR+0)
	lda	0x110,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10b,x
	iny
	lda	[__DPTR],y
	sta	0x10c,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x10b,x
	iny
	sta	[__DPTR],y
	lda	0x10c,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 79: b[0] = 0;
	lda	0x10f,x
	sta	*(__DPTR+0)
	lda	0x110,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 74: for(;s >= 16; s-= 16)
	lda	0x121,x
	sec
	sbc	#0x10
	sta	0x121,x
	jmp	00103$
00101$:
;	../_rlulonglong.c: 82: (*top) <<= s;
	tsx
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	lda	0x121,x
	sta	0x109, x
	tay
	beq	00119$
00118$:
	lda	0x105,x
	asl	a
	sta	0x105,x
	lda	0x106,x
	rol	a
	sta	0x106,x
	lda	0x107,x
	rol	a
	sta	0x107,x
	lda	0x108,x
	rol	a
	sta	0x108,x
	dey
	bne	00118$
00119$:
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 83: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x103,x
	pha
	tya
	sta	0x104,x
	tya
	sta	0x105,x
	pla
	lda	0x10a,x
	tay
	beq	00121$
00120$:
	lda	0x102,x
	asl	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x105,x
	rol	a
	sta	0x105,x
	dey
	bne	00120$
00121$:
	lda	0x104,x
	sta	*(__TEMP+0)
	lda	0x105,x
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x103,x
	pha
	lda	#0x00
	sta	0x104,x
	lda	#0x00
	sta	0x105,x
	pla
	lda	0x106,x
	ora	0x102,x
	sta	0x102,x
	lda	0x107,x
	ora	0x103,x
	sta	0x103,x
	lda	0x108,x
	ora	0x104,x
	sta	0x104,x
	lda	0x109,x
	ora	0x105,x
	sta	0x105,x
	lda	0x116,x
	sta	*(__DPTR+0)
	lda	0x117,x
	sta	*(__DPTR+1)
	lda	0x102,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
	lda	0x105,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 84: (*bottom) <<= s;
	lda	0x112,x
	sta	*(__DPTR+0)
	lda	0x113,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	iny
	lda	[__DPTR],y
	sta	0x105,x
	lda	0x10a,x
	tay
	beq	00123$
00122$:
	lda	0x102,x
	asl	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x105,x
	rol	a
	sta	0x105,x
	dey
	bne	00122$
00123$:
	lda	0x112,x
	sta	*(__DPTR+0)
	lda	0x113,x
	sta	*(__DPTR+1)
	lda	0x102,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
	lda	0x105,x
	iny
	sta	[__DPTR],y
;	../_rlulonglong.c: 86: return(l);
	lda	0x121,x
	sta	*___SDCC_m6502_ret7
	lda	0x120,x
	sta	*___SDCC_m6502_ret6
	lda	0x11f,x
	sta	*___SDCC_m6502_ret5
	lda	0x11e,x
	sta	*___SDCC_m6502_ret4
	lda	0x11d,x
	sta	*___SDCC_m6502_ret3
	lda	0x11c,x
	sta	*___SDCC_m6502_ret2
	lda	0x11b,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x119,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_rlulonglong.c: 87: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
