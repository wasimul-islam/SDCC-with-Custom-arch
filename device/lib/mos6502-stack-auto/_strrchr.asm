;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch                        Allocated to stack - sp +7
;string                    Allocated to stack - sp +3
;start                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strrchr.c: 32: char * strrchr ( const char * string, char ch )
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_strrchr:
	pha
	pha
	pha
	pha
;	../_strrchr.c: 37: const char * start = string;
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	ldx	*(__TEMP+0)
;	../_strrchr.c: 39: while (*string++)                       /* find end of string */
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
	bcc	00133$
	inx
00133$:
	cpy	#0x00
	bne	00101$
;	../_strrchr.c: 42: while (--string != start && *string != ch)
	pha
	txa
	tsx
	sta	0x105,x
	pla
	sta	0x104,x
00105$:
	tsx
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
	lda	0x103,x
	cmp	0x101,x
	bne	00136$
	lda	0x104,x
	cmp	0x102,x
	beq	00107$
00136$:
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	0x107,x
	bne	00105$
00107$:
;	../_strrchr.c: 45: if (*string == ch)                      /* char found ? */
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	0x107,x
	bne	00109$
;	../_strrchr.c: 46: return( (char *)string );
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00110$
00109$:
;	../_strrchr.c: 48: return (NULL) ;
	lda	#0x00
	tax
00110$:
;	../_strrchr.c: 49: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
