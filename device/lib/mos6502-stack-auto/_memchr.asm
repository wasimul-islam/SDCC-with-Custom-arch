;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c                         Allocated to stack - sp +9
;n                         Allocated to stack - sp +11
;s                         Allocated to registers a x 
;p                         Allocated to stack - sp +5
;end                       Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_memchr:
	pha
	pha
	pha
	pha
	pha
	pha
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
	pha
	txa
	tsx
	sta	0x107,x
	pla
;	../_memchr.c: 34: unsigned char *end = p + n;
	sta	0x106, x
	clc
	adc	0x10c,x
	sta	0x104,x
	lda	0x107,x
	adc	0x10d,x
	sta	0x105,x
;	../_memchr.c: 38: return(0);
	lda	0x106,x
	sta	0x102,x
	lda	0x107,x
	sta	0x103,x
00105$:
;	../_memchr.c: 35: for(; p != end; p++)
	tsx
	lda	0x101,x
	cmp	0x103,x
	bne	00122$
	lda	0x102,x
	cmp	0x104,x
	beq	00103$
00122$:
;	../_memchr.c: 36: if(*p == (unsigned char)c)
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x109,x
	sty	*(__TEMP+0)
	cmp	*(__TEMP+0)
	bne	00106$
;	../_memchr.c: 37: return((void *)p);
	lda	0x105,x
	sta	*(__TEMP+0)
	lda	0x106,x
	tax
	lda	*(__TEMP+0)
	jmp	00107$
00106$:
;	../_memchr.c: 35: for(; p != end; p++)
	tsx
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	lda	0x101,x
	sta	0x105,x
	lda	0x102,x
	sta	0x106,x
	jmp	00105$
00103$:
;	../_memchr.c: 38: return(0);
	lda	#0x00
	tax
00107$:
;	../_memchr.c: 39: }
	sta	*(__TEMP+0)
	pla
	pla
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
