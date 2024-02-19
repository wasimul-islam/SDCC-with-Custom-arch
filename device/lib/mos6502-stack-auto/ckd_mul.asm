;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ckd_mul_schar
	.globl ___ckd_mul_uchar
	.globl ___ckd_mul_short
	.globl ___ckd_mul_ushort
	.globl ___ckd_mul_int
	.globl ___ckd_mul_uint
	.globl ___ckd_mul_long
	.globl ___ckd_mul_ulong
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
;Allocation info for local variables in function '__ckd_mul_schar'
;------------------------------------------------------------
;a                         Allocated to stack - sp +21
;b                         Allocated to stack - sp +29
;r                         Allocated to stack - sp +17
;result                    Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 69: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 18 bytes.
___ckd_mul_schar:
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
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	lda	*___SDCC_m6502_ret4
	sta	0x11d,x
	lda	*___SDCC_m6502_ret5
	sta	0x11e,x
	lda	*___SDCC_m6502_ret6
	sta	0x11f,x
	lda	*___SDCC_m6502_ret7
	sta	0x120,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;a                         Allocated to stack - sp +22
;b                         Allocated to stack - sp +30
;r                         Allocated to stack - sp +18
;result                    Allocated to stack - sp +10
;sloc0                     Allocated to stack - sp +10
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 19 bytes.
___ckd_mul_uchar:
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
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11c,x
	lda	*___SDCC_m6502_ret3
	sta	0x11d,x
	lda	*___SDCC_m6502_ret4
	sta	0x11e,x
	lda	*___SDCC_m6502_ret5
	sta	0x11f,x
	lda	*___SDCC_m6502_ret6
	sta	0x120,x
	lda	*___SDCC_m6502_ret7
	sta	0x121,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_short:
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
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_ushort:
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
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_int:
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
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;a                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +31
;r                         Allocated to stack - sp +19
;result                    Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_uint:
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
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;a                         Allocated to stack - sp +25
;b                         Allocated to stack - sp +33
;r                         Allocated to stack - sp +21
;result                    Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_mul_long:
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
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	lda	*___SDCC_m6502_ret4
	sta	0x121,x
	lda	*___SDCC_m6502_ret5
	sta	0x122,x
	lda	*___SDCC_m6502_ret6
	sta	0x123,x
	lda	*___SDCC_m6502_ret7
	sta	0x124,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;a                         Allocated to stack - sp +25
;b                         Allocated to stack - sp +33
;r                         Allocated to stack - sp +21
;result                    Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	./../../include/stdckdint.h: 76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_mul_ulong:
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
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	lda	*___SDCC_m6502_ret4
	sta	0x121,x
	lda	*___SDCC_m6502_ret5
	sta	0x122,x
	lda	*___SDCC_m6502_ret6
	sta	0x123,x
	lda	*___SDCC_m6502_ret7
	sta	0x124,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
