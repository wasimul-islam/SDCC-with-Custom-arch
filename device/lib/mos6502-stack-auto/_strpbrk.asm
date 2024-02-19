;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;control                   Allocated to stack - sp +11
;string                    Allocated to stack - sp +7
;ret                       Allocated to stack - sp +5
;ch                        Allocated to registers 
;p                         Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strpbrk.c: 31: char * strpbrk ( const char * string, const char * control )
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_strpbrk:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	../_strpbrk.c: 33: char *ret = NULL;
	tsx
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
;	../_strpbrk.c: 36: while (ch = *control) {
	lda	0x10b,x
	sta	0x101,x
	lda	0x10c,x
	sta	0x102,x
00105$:
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00107$
;	../_strpbrk.c: 37: char * p = strchr(string, ch);
	pha
	lda	0x108,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x108,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strchr
	stx	*(__TEMP+0)
	tsx
	sta	0x104,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
;	../_strpbrk.c: 38: if (p != NULL && (ret == NULL || p < ret)) {
	tsx
	lda	0x103,x
	ora	0x104,x
	beq	00102$
	lda	0x105,x
	ora	0x106,x
	beq	00101$
	lda	0x103,x
	sec
	sbc	0x105,x
	lda	0x104,x
	sbc	0x106,x
	bcs	00102$
00101$:
;	../_strpbrk.c: 39: ret = p;
	tsx
	lda	0x103,x
	sta	0x105,x
	lda	0x104,x
	sta	0x106,x
00102$:
;	../_strpbrk.c: 41: control++;
	tsx
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	jmp	00105$
00107$:
;	../_strpbrk.c: 44: return (ret);
	tsx
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_strpbrk.c: 45: }
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
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
