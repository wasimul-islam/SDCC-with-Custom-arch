;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mblen
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mblen
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n                         Allocated to stack - sp +10
;s                         Allocated to stack - sp +6
;m                         Allocated to stack - sp +5
;c                         Allocated to registers x 
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../mblen.c: 31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_mblen:
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
;	../mblen.c: 36: if(!s)
	tsx
	lda	0x106,x
	ora	0x107,x
	bne	00102$
;	../mblen.c: 37: return(0);
	lda	#0x00
	tax
	jmp	00119$
00102$:
;	../mblen.c: 39: if(!n)
	tsx
	lda	0x10a,x
	ora	0x10b,x
	bne	00104$
;	../mblen.c: 40: return(-1);
	lda	#0xff
	tax
	jmp	00119$
00104$:
;	../mblen.c: 42: c = *s;
	tsx
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	../mblen.c: 44: if(!c)
	tax
	bne	00106$
;	../mblen.c: 45: return(0);
	tya
	tax
	jmp	00119$
00106$:
;	../mblen.c: 47: if(c <= 0x7f)
	cpx	#0x7f
	beq	00165$
	bcs	00126$
00165$:
;	../mblen.c: 48: return(1);
	lda	#0x01
	ldx	#0x00
	jmp	00119$
;	../mblen.c: 50: while(c & 0x80)
00126$:
	ldy	#0x00
00109$:
	lda	#0x80
	stx	*(__TEMP+0)
	and	*(__TEMP+0)
	beq	00111$
;	../mblen.c: 52: c <<= 1;
	txa
	asl	a
	tax
;	../mblen.c: 53: m++;
	iny
	jmp	00109$
00111$:
;	../mblen.c: 56: if(m > n)
	tsx
	tya
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
	lda	0x10a,x
	sec
	sbc	0x103,x
	lda	0x10b,x
	sbc	0x104,x
	bcs	00129$
;	../mblen.c: 57: return(-1);
	lda	#0xff
	tax
	jmp	00119$
;	../mblen.c: 60: while(--m)
00129$:
	tsx
	lda	0x106,x
	sta	0x101,x
	lda	0x107,x
	sta	0x102,x
	tya
	sta	0x105,x
00116$:
	tsx
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105, x
	beq	00118$
;	../mblen.c: 61: if((*++s & 0xc0) != 0x80)
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	and	#0xc0
	cmp	#0x80
	bne	00171$
	cpx	#0x00
	beq	00116$
00171$:
;	../mblen.c: 62: return(-1);
	lda	#0xff
	tax
	jmp	00119$
00118$:
;	../mblen.c: 64: return(n);
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
00119$:
;	../mblen.c: 65: }
	sta	*(__TEMP+0)
	pla
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
