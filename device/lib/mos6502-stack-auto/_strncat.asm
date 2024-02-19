;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated to stack - sp +15
;count                     Allocated to stack - sp +17
;front                     Allocated to stack - sp +11
;start                     Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_strncat:
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
;	../_strncat.c: 33: char *start = front;
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	ldx	*(__TEMP+0)
;	../_strncat.c: 35: while (*front++);
00101$:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00137$
	inx
00137$:
	cpy	#0x00
	bne	00101$
;	../_strncat.c: 37: front--;
	sec
	sbc	#0x01
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x10c,x
;	../_strncat.c: 39: while (count--)
	tsx
	lda	0x10f,x
	sta	0x107,x
	lda	0x110,x
	sta	0x108,x
	lda	0x10b,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x106,x
	lda	0x111,x
	sta	0x103,x
	lda	0x112,x
	sta	0x104,x
00106$:
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
	lda	0x101,x
	ora	0x102,x
	beq	00108$
;	../_strncat.c: 40: if (!(*front++ = *back++))
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
	sty	*(__TEMP+0)
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	lda	0x105,x
	sta	0x10b,x
	lda	0x106,x
	sta	0x10c,x
	cpy	#0x00
	bne	00106$
;	../_strncat.c: 41: return(start);
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00109$
00108$:
;	../_strncat.c: 43: *front = '\0';
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../_strncat.c: 44: return(start);
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
00109$:
;	../_strncat.c: 45: }
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
