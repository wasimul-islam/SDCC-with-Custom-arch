;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;control                   Allocated to stack - sp +7
;string                    Allocated to registers 
;count                     Allocated to stack - sp +3
;ch                        Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strspn.c: 31: size_t strspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_strspn:
	pha
	pha
	pha
	pha
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x102,x
;	../_strspn.c: 36: while (ch = *string) {
	tsx
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
00104$:
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00106$
;	../_strspn.c: 37: if ( strchr(control,ch) )
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
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	bne	00123$
	cpx	#0x00
00123$:
	beq	00106$
;	../_strspn.c: 38: count++ ;
	tsx
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	../_strspn.c: 41: string++ ;
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	jmp	00104$
00106$:
;	../_strspn.c: 44: return count ;
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_strspn.c: 45: }
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
