;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated to stack - sp +17
;size                      Allocated to stack - sp +19
;dst                       Allocated to stack - sp +13
;c                         Allocated to stack - sp +11
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +7
;sloc2                     Allocated to stack - sp +5
;sloc3                     Allocated to stack - sp +3
;sloc4                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_memmove.c: 35: void *memmove (void *dst, const void *src, size_t size)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_memmove:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_memmove.c: 37: size_t c = size;
	tsx
	lda	0x113,x
	sta	0x10b,x
	lda	0x114,x
	sta	0x10c,x
;	../_memmove.c: 38: if (c == 0 || dst == src)
	lda	0x10b,x
	ora	0x10c,x
	beq	00101$
	lda	0x10d,x
	cmp	0x111,x
	bne	00102$
	lda	0x10e,x
	cmp	0x112,x
	bne	00102$
00101$:
;	../_memmove.c: 39: return dst;
	tsx
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00113$
00102$:
;	../_memmove.c: 41: char *d = dst;
	tsx
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
;	../_memmove.c: 42: const char *s = src;
	lda	0x111,x
	sta	0x107,x
	lda	0x112,x
	sta	0x108,x
;	../_memmove.c: 43: if (s < d) {
	lda	0x107,x
	sec
	sbc	0x109,x
	lda	0x108,x
	sbc	0x10a,x
	bcc	00146$
	jmp	00119$
00146$:
;	../_memmove.c: 50: s += c;
	lda	0x107,x
	clc
	adc	0x10b,x
	sta	0x105,x
	lda	0x108,x
	adc	0x10c,x
	sta	0x106,x
;	../_memmove.c: 51: d += c;
	lda	0x109,x
	clc
	adc	0x10b,x
	sta	0x103,x
	lda	0x10a,x
	adc	0x10c,x
	sta	0x104,x
;	../_memmove.c: 52: do {
	lda	0x10b,x
	sta	0x101,x
	lda	0x10c,x
	sta	0x102,x
00104$:
;	../_memmove.c: 53: *--d = *--s;
	tsx
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../_memmove.c: 54: } while (--c);
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x101,x
	ora	0x102,x
	bne	00104$
	jmp	00112$
;	../_memmove.c: 59: do {
00119$:
	tsx
	lda	0x107,x
	sta	0x101,x
	lda	0x108,x
	sta	0x102,x
	lda	0x109,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x106,x
00107$:
;	../_memmove.c: 60: *d++ = *s++;
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	0x107,x
	sta	[__DPTR],y
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	../_memmove.c: 61: } while (--c);
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
	lda	0x105,x
	ora	0x106,x
	bne	00107$
00112$:
;	../_memmove.c: 65: return dst;
	tsx
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
00113$:
;	../_memmove.c: 66: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
