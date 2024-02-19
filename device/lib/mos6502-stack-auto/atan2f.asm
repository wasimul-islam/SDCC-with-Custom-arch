;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;x                         Allocated to stack - sp +15
;y                         Allocated to stack - sp +19
;r                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../atan2f.c: 34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_atan2f:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
	tsx
	lda	0x112,x
	and	#0x7F
	ora	0x111,x
	ora	0x110,x
	ora	0x10f,x
	bne	00102$
	lda	0x116,x
	and	#0x7F
	ora	0x115,x
	ora	0x114,x
	ora	0x113,x
	bne	00102$
;	../atan2f.c: 40: errno=EDOM;
	ldx	#0x21
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../atan2f.c: 41: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
00102$:
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	_fabsf
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x116, x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	_fabsf
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x10c, x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	beq	00141$
	jmp	00107$
00141$:
;	../atan2f.c: 46: r=atanf(x/y);
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	jsr	___fsdiv
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	_atanf
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x109, x
	sta	0x105,x
	lda	0x10a,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x108,x
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	lda	#0x00
	pha
	pha
	pha
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	bne	00142$
	jmp	00108$
00142$:
	lda	#0x00
	pha
	pha
	pha
	pha
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	bne	00111$
	tsx
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0x49
	sta	0x10b,x
	lda	#0x40
	sta	0x10c,x
	jmp	00112$
00111$:
	tsx
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0x49
	sta	0x10b,x
	lda	#0xc0
	sta	0x10c,x
00112$:
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	jmp	00108$
00107$:
;	../atan2f.c: 51: r=-atanf(y/x);
	tsx
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	___fsdiv
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	_atanf
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x10c, x
	eor	#0x80
	sta	0x10c,x
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
	lda	#0x00
	pha
	pha
	pha
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	beq	00113$
	tsx
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0xc9
	sta	0x10b,x
	lda	#0xbf
	sta	0x10c,x
	jmp	00114$
00113$:
	tsx
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0xc9
	sta	0x10b,x
	lda	#0x3f
	sta	0x10c,x
00114$:
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
00108$:
;	../atan2f.c: 54: return r;
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
00109$:
;	../atan2f.c: 55: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
