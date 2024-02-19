;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;nptr                      Allocated to stack - sp +11
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated to stack - sp +9
;neg                       Allocated to stack - sp +8
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +6
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../atoi.c: 34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_atoi:
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
;	../atoi.c: 36: int ret = 0;
	pha
	lda	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	pla
;	../atoi.c: 39: while (isblank (*nptr))
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
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cpy	#0x20
	beq	00115$
	cpy	#0x09
	bne	00131$
00115$:
;	../atoi.c: 40: nptr++;
	clc
	adc	#0x01
	bcc	00101$
	inx
	jmp	00101$
00131$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x10d,x
	pla
	sta	0x10c,x
	ldx	*(__TEMP+0)
;	../atoi.c: 42: neg = (*nptr == '-');
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	tsx
	cpy	#0x2d
	beq	00165$
	lda	#0x00
	jmp	00164$
00165$:
	lda	#0x01
00164$:
	sta	0x108,x
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
	cpy	#0x2d
	beq	00104$
	cpy	#0x2b
	bne	00129$
00104$:
;	../atoi.c: 45: nptr++;
	tsx
	lda	0x10b,x
	clc
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	../atoi.c: 47: while (isdigit (*nptr))
00129$:
	tsx
	lda	0x10b,x
	sta	0x106,x
	lda	0x10c,x
	sta	0x107,x
00107$:
	tsx
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcc	00109$
	cmp	#0x39
	beq	00169$
	bcs	00109$
00169$:
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x106,x
	clc
	adc	#0x01
	sta	0x106,x
	lda	0x107,x
	adc	#0x00
	sta	0x107,x
	tya
	ldx	#0x00
	sec
	sbc	#0x30
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	#0x00
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x102,x
	tsx
	lda	0x103,x
	clc
	adc	0x101,x
	sta	0x109,x
	lda	0x104,x
	adc	0x102,x
	sta	0x10a,x
	jmp	00107$
00109$:
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	tsx
	lda	0x108,x
	beq	00120$
	lda	#0x00
	sec
	sbc	0x109,x
	pha
	lda	#0x00
	sbc	0x10a,x
	tax
	pla
	jmp	00121$
00120$:
	tsx
	lda	0x109,x
	sta	*(__TEMP+0)
	lda	0x10a,x
	tax
	lda	*(__TEMP+0)
00121$:
;	../atoi.c: 51: }
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
