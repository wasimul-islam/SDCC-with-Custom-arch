;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ckd_sub_schar
	.globl ___ckd_sub_uchar
	.globl ___ckd_sub_short
	.globl ___ckd_sub_ushort
	.globl ___ckd_sub_int
	.globl ___ckd_sub_uint
	.globl ___ckd_sub_long
	.globl ___ckd_sub_ulong
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a                         Allocated to stack - sp +21
;b                         Allocated to stack - sp +29
;r                         Allocated to stack - sp +17
;result                    Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 60: inline _Bool __ckd_sub_schar __CKD_DEFAULT_IMPL(signed char, -)
;	-----------------------------------------
;	 function __ckd_sub_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 18 bytes.
___ckd_sub_schar:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x115,x
	sec
	sbc	0x11d,x
	sta	0x109,x
	lda	0x116,x
	sbc	0x11e,x
	sta	0x10a,x
	lda	0x117,x
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x109,x
	sta	*(__TEMP+0)
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(__TEMP+0)
	sta	0x101,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x109,x
	bne	00104$
	lda	0x102,x
	cmp	0x10a,x
	bne	00104$
	lda	0x103,x
	cmp	0x10b,x
	bne	00104$
	lda	0x104,x
	cmp	0x10c,x
	bne	00104$
	lda	0x105,x
	cmp	0x10d,x
	bne	00104$
	lda	0x106,x
	cmp	0x10e,x
	bne	00104$
	lda	0x107,x
	cmp	0x10f,x
	bne	00104$
	lda	0x108,x
	cmp	0x110,x
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated to stack - sp +22
;b                         Allocated to stack - sp +30
;r                         Allocated to stack - sp +18
;result                    Allocated to stack - sp +10
;sloc0                     Allocated to stack - sp +10
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 19 bytes.
___ckd_sub_uchar:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xef
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x116,x
	sec
	sbc	0x11e,x
	sta	0x10a,x
	lda	0x117,x
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x10a,x
	sta	0x109,x
	lda	0x112,x
	sta	*(__DPTR+0)
	lda	0x113,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	tya
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10a,x
	bne	00104$
	lda	0x102,x
	cmp	0x10b,x
	bne	00104$
	lda	0x103,x
	cmp	0x10c,x
	bne	00104$
	lda	0x104,x
	cmp	0x10d,x
	bne	00104$
	lda	0x105,x
	cmp	0x10e,x
	bne	00104$
	lda	0x106,x
	cmp	0x10f,x
	bne	00104$
	lda	0x107,x
	cmp	0x110,x
	bne	00104$
	lda	0x108,x
	cmp	0x111,x
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x13
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_sub_short:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x117,x
	sec
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_sub_ushort:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x117,x
	sec
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_sub_int:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x117,x
	sec
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_sub_uint:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x117,x
	sec
	sbc	0x11f,x
	sta	0x10b,x
	lda	0x118,x
	sbc	0x120,x
	sta	0x10c,x
	lda	0x119,x
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated to stack - sp +25
;b                         Allocated to stack - sp +33
;r                         Allocated to stack - sp +21
;result                    Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_sub_long:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x119,x
	sec
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x11f,x
	sbc	0x127,x
	sta	0x113,x
	lda	0x120,x
	sbc	0x128,x
	sta	0x114,x
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x10b,x
	lda	0x110,x
	sta	0x10c,x
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x10b,x
	iny
	sta	[__DPTR],y
	lda	0x10c,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10d,x
	bne	00104$
	lda	0x102,x
	cmp	0x10e,x
	bne	00104$
	lda	0x103,x
	cmp	0x10f,x
	bne	00104$
	lda	0x104,x
	cmp	0x110,x
	bne	00104$
	lda	0x105,x
	cmp	0x111,x
	bne	00104$
	lda	0x106,x
	cmp	0x112,x
	bne	00104$
	lda	0x107,x
	cmp	0x113,x
	bne	00104$
	lda	0x108,x
	cmp	0x114,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
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
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated to stack - sp +25
;b                         Allocated to stack - sp +33
;r                         Allocated to stack - sp +21
;result                    Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_sub_ulong:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x119,x
	sec
	sbc	0x121,x
	sta	0x10d,x
	lda	0x11a,x
	sbc	0x122,x
	sta	0x10e,x
	lda	0x11b,x
	sbc	0x123,x
	sta	0x10f,x
	lda	0x11c,x
	sbc	0x124,x
	sta	0x110,x
	lda	0x11d,x
	sbc	0x125,x
	sta	0x111,x
	lda	0x11e,x
	sbc	0x126,x
	sta	0x112,x
	lda	0x11f,x
	sbc	0x127,x
	sta	0x113,x
	lda	0x120,x
	sbc	0x128,x
	sta	0x114,x
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x10b,x
	lda	0x110,x
	sta	0x10c,x
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x10b,x
	iny
	sta	[__DPTR],y
	lda	0x10c,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	lda	0x101,x
	cmp	0x10d,x
	bne	00104$
	lda	0x102,x
	cmp	0x10e,x
	bne	00104$
	lda	0x103,x
	cmp	0x10f,x
	bne	00104$
	lda	0x104,x
	cmp	0x110,x
	bne	00104$
	lda	0x105,x
	cmp	0x111,x
	bne	00104$
	lda	0x106,x
	cmp	0x112,x
	bne	00104$
	lda	0x107,x
	cmp	0x113,x
	bne	00104$
	lda	0x108,x
	cmp	0x114,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
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
