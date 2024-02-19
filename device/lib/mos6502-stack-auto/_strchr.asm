;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch                        Allocated to stack - sp +5
;string                    Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strchr.c: 34: char * strchr ( const char * string, char ch )
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_strchr:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../_strchr.c: 39: while (*string && *string != (char)ch)
00102$:
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00104$
	cmp	0x105,x
	beq	00104$
;	../_strchr.c: 40: string++;
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	jmp	00102$
00104$:
;	../_strchr.c: 42: if (*string == (char)ch)
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	0x105,x
	bne	00106$
;	../_strchr.c: 43: return((char *)string);
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00107$
00106$:
;	../_strchr.c: 44: return ( NULL );
	lda	#0x00
	tax
00107$:
;	../_strchr.c: 45: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
