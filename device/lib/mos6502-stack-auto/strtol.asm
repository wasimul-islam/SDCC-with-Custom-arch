;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtoul
	.globl _strtol
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;endptr                    Allocated to stack - sp +22
;base                      Allocated to stack - sp +24
;nptr                      Allocated to stack - sp +18
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated to stack - sp +16
;rptr                      Allocated to stack - sp +1
;u                         Allocated to stack - sp +6
;neg                       Allocated to stack - sp +15
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +7
;sloc3                     Allocated to stack - sp +3
;------------------------------------------------------------
;	../strtol.c: 38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 19 bytes.
_strtol:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xef
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../strtol.c: 45: while (isblank (*ptr))
	tsx
	lda	0x112,x
	sta	0x110,x
	lda	0x113,x
	sta	0x111,x
00101$:
	tsx
	lda	0x110,x
	sta	*(__DPTR+0)
	lda	0x111,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00132$
	cmp	#0x09
	bne	00158$
00132$:
;	../strtol.c: 46: ptr++;
	tsx
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x110,x
	lda	0x111,x
	adc	#0x00
	sta	0x111,x
	jmp	00101$
00158$:
	tsx
	lda	0x110,x
	sta	0x10d,x
	lda	0x111,x
	sta	0x10e,x
;	../strtol.c: 50: if (*ptr == '-')
	lda	0x110,x
	sta	*(__DPTR+0)
	lda	0x111,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x2d
	bne	00105$
;	../strtol.c: 52: neg = true;
	lda	#0x01
	sta	0x10f,x
;	../strtol.c: 53: ptr++;
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x111,x
	adc	#0x00
	sta	0x10e,x
	jmp	00106$
00105$:
;	../strtol.c: 56: neg = false;
	tsx
	lda	#0x00
	sta	0x10f,x
00106$:
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	tsx
	lda	0x10f,x
	beq	00110$
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cpx	#0x20
	beq	00109$
	cpx	#0x09
	beq	00109$
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cmp	#0x2d
	beq	00109$
	cmp	#0x2b
	bne	00110$
00109$:
;	../strtol.c: 61: if (endptr)
	tsx
	lda	0x116,x
	ora	0x117,x
	beq	00108$
;	../strtol.c: 62: *endptr = nptr;
	lda	0x116,x
	sta	*(__TEMP+0)
	lda	0x117,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x112,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
00108$:
;	../strtol.c: 63: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00129$
00110$:
;	../strtol.c: 66: u = strtoul(ptr, &rptr, base);
	tsx
	inx
	txa
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10d,x
	pla
	sta	0x10c,x
	lda	0x11a, x
	pha
	lda	0x119,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10f,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strtoul
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../strtol.c: 69: if (rptr == ptr)
	lda	0x105, x
	cmp	0x111,x
	bne	00117$
	lda	0x106,x
	cmp	0x112,x
	bne	00117$
;	../strtol.c: 71: if (endptr)
	lda	0x11a,x
	ora	0x11b,x
	beq	00115$
;	../strtol.c: 72: *endptr = nptr;
	lda	0x11a,x
	sta	*(__TEMP+0)
	lda	0x11b,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x112,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
00115$:
;	../strtol.c: 73: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00129$
00117$:
;	../strtol.c: 76: if (endptr)
	tsx
	lda	0x116,x
	ora	0x117,x
	beq	00119$
;	../strtol.c: 77: *endptr = rptr;
	lda	0x116,x
	sta	*(__TEMP+0)
	lda	0x117,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
00119$:
;	../strtol.c: 80: if (!neg && u > LONG_MAX)
	tsx
	lda	0x10f,x
	bne	00124$
	lda	#0xff
	sec
	sbc	0x107,x
	lda	#0xff
	sbc	0x108,x
	lda	#0xff
	sbc	0x109,x
	lda	#0x7f
	sbc	0x10a,x
	bcs	00124$
;	../strtol.c: 82: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtol.c: 83: return (LONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x7f
	sty	*___SDCC_m6502_ret3
	jmp	00129$
00124$:
;	../strtol.c: 85: else if (neg && u > -LONG_MIN)
	tsx
	lda	0x10f,x
	beq	00125$
	lda	#0x00
	sec
	sbc	0x107,x
	lda	#0x00
	sbc	0x108,x
	lda	#0x00
	sbc	0x109,x
	lda	#0x80
	sbc	0x10a,x
	bcs	00125$
;	../strtol.c: 87: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtol.c: 88: return (LONG_MIN);
	txa
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x80
	sty	*___SDCC_m6502_ret3
	jmp	00129$
00125$:
;	../strtol.c: 91: return (neg ? -u : u);
	tsx
	lda	0x10f,x
	beq	00137$
	lda	#0x00
	sec
	sbc	0x107,x
	sta	0x103,x
	lda	#0x00
	sbc	0x108,x
	sta	0x104,x
	lda	#0x00
	sbc	0x109,x
	sta	0x105,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x106,x
	jmp	00138$
00137$:
	tsx
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
	lda	0x109,x
	sta	0x105,x
	lda	0x10a,x
	sta	0x106,x
00138$:
	tsx
	lda	0x106,x
	sta	*___SDCC_m6502_ret3
	lda	0x105,x
	sta	*___SDCC_m6502_ret2
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
00129$:
;	../strtol.c: 92: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x13
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
