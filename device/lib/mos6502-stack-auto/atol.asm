;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atol
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;nptr                      Allocated to stack - sp +17
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated to stack - sp +1
;neg                       Allocated to stack - sp +16
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +14
;sloc1                     Allocated to stack - sp +13
;sloc2                     Allocated to stack - sp +9
;sloc3                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../atol.c: 34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_atol:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10f,x
;	../atol.c: 36: long int ret = 0;
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../atol.c: 39: while (isblank (*nptr))
00101$:
	tsx
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00115$
	cmp	#0x09
	bne	00131$
00115$:
;	../atol.c: 40: nptr++;
	tsx
	lda	0x10e,x
	clc
	adc	#0x01
	sta	0x10e,x
	lda	0x10f,x
	adc	#0x00
	sta	0x10f,x
	jmp	00101$
00131$:
	tsx
	lda	0x10e,x
	sta	0x111,x
	lda	0x10f,x
	sta	0x112,x
;	../atol.c: 42: neg = (*nptr == '-');
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	cpy	#0x2d
	beq	00164$
	lda	#0x00
	jmp	00163$
00164$:
	lda	#0x01
00163$:
	sta	0x110,x
;	../atol.c: 44: if (*nptr == '-' || *nptr == '+')
	cpy	#0x2d
	beq	00104$
	cpy	#0x2b
	bne	00129$
00104$:
;	../atol.c: 45: nptr++;
	tsx
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
;	../atol.c: 47: while (isdigit (*nptr))
00129$:
	tsx
	lda	0x111,x
	sta	0x10e,x
	lda	0x112,x
	sta	0x10f,x
00107$:
	tsx
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00167$
	jmp	00109$
00167$:
	cmp	#0x39
	beq	00168$
	bcc	00168$
	jmp	00109$
00168$:
;	../atol.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	tya
	pha
	pha
	pha
	lda	#0x0a
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
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
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x10e,x
	clc
	adc	#0x01
	sta	0x10e,x
	lda	0x10f,x
	adc	#0x00
	sta	0x10f,x
	tya
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00170$
	dex
00170$:
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109,x
	lda	0x10a,x
	clc
	adc	0x106,x
	sta	0x102,x
	lda	0x10b,x
	adc	0x107,x
	sta	0x103,x
	lda	0x10c,x
	adc	0x108,x
	sta	0x104,x
	lda	0x10d,x
	adc	0x109,x
	sta	0x105,x
	jmp	00107$
00109$:
;	../atol.c: 50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	tsx
	lda	0x110,x
	beq	00120$
	lda	#0x00
	sec
	sbc	0x101,x
	sta	0x105,x
	lda	#0x00
	sbc	0x102,x
	sta	0x106,x
	lda	#0x00
	sbc	0x103,x
	sta	0x107,x
	lda	#0x00
	sbc	0x104,x
	sta	0x108,x
	jmp	00121$
00120$:
	tsx
	lda	0x101,x
	sta	0x105,x
	lda	0x102,x
	sta	0x106,x
	lda	0x103,x
	sta	0x107,x
	lda	0x104,x
	sta	0x108,x
00121$:
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../atol.c: 51: }
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
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
