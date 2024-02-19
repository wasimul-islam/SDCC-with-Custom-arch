;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated to stack - sp +19
;str1                      Allocated to stack - sp +15
;cp                        Allocated to stack - sp +13
;s1                        Allocated to stack - sp +11
;s2                        Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strstr.c: 31: char *strstr ( const char *str1, const char *str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_strstr:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_strstr.c: 33: const char *cp = str1;
	tsx
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
;	../_strstr.c: 37: if (!*str2)
	lda	0x113,x
	sta	0x109,x
	lda	0x114,x
	sta	0x10a,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00122$
;	../_strstr.c: 38: return ((char*)str1);
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00113$
;	../_strstr.c: 40: while (*cp)
00122$:
	tsx
	lda	0x10f,x
	sta	0x10b,x
	lda	0x110,x
	sta	0x10c,x
00110$:
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00149$
	jmp	00112$
00149$:
;	../_strstr.c: 43: s2 = str2;
	lda	0x109,x
	sta	0x107,x
	lda	0x10a,x
	sta	0x108,x
;	../_strstr.c: 45: while (*s1 && *s2 && !(*s1-*s2))
	lda	0x10b,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x106,x
00105$:
	tsx
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00107$
	sta	*(__TEMP+0)
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	tay
	lda	*(__TEMP+0)
	cpy	#0x00
	beq	00107$
	sta	0x103,x
	pha
	lda	#0x00
	sta	0x104,x
	pla
	tya
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	lda	0x103,x
	sec
	sbc	0x101,x
	pha
	lda	0x104,x
	sbc	0x102,x
	tax
	pla
	bne	00152$
	cpx	#0x00
00152$:
	bne	00107$
;	../_strstr.c: 46: s1++, s2++;
	tsx
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
	jmp	00105$
00107$:
;	../_strstr.c: 48: if (!*s2)
	tsx
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00109$
;	../_strstr.c: 49: return ((char*)cp);
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00113$
00109$:
;	../_strstr.c: 51: cp++;
	tsx
	lda	0x10b,x
	clc
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
	lda	0x10b,x
	sta	0x10d,x
	lda	0x10c,x
	sta	0x10e,x
	jmp	00110$
00112$:
;	../_strstr.c: 54: return (NULL) ;
	lda	#0x00
	tax
00113$:
;	../_strstr.c: 55: }
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
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
