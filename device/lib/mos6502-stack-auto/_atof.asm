;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;s                         Allocated to registers 
;__1310720004              Allocated to registers 
;value                     Allocated to stack - sp +5
;fraction                  Allocated to stack - sp +1
;iexp                      Allocated to registers y 
;sign                      Allocated to stack - sp +25
;__1966080005              Allocated to registers 
;c                         Allocated to registers 
;__1966080007              Allocated to registers 
;__2621440008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +23
;sloc1                     Allocated to stack - sp +21
;sloc2                     Allocated to stack - sp +17
;sloc3                     Allocated to stack - sp +13
;sloc4                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_atof.c: 33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_atof:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x118,x
	ldx	*(__TEMP+0)
;	../_atof.c: 40: while (isspace(*s)) s++;
00101$:
	tsx
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	jsr	_isspace
	cmp	#0x00
	bne	00220$
	cpx	#0x00
00220$:
	beq	00155$
	tsx
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x117,x
	lda	0x118,x
	adc	#0x00
	sta	0x118,x
	jmp	00101$
00155$:
	tsx
	lda	0x117,x
	sta	0x115,x
	lda	0x118,x
	sta	0x116,x
;	../_atof.c: 43: if (*s == '-')
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	cpy	#0x2d
	bne	00107$
;	../_atof.c: 45: sign=1;
	lda	#0x01
	sta	0x119,x
;	../_atof.c: 46: s++;
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x118,x
	adc	#0x00
	sta	0x116,x
	jmp	00108$
00107$:
;	../_atof.c: 50: sign=0;
	tsx
	lda	#0x00
	sta	0x119,x
;	../_atof.c: 51: if (*s == '+') s++;
	cpy	#0x2b
	bne	00108$
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x118,x
	adc	#0x00
	sta	0x116,x
00108$:
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	tsx
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
00126$:
	tsx
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00224$
	jmp	00156$
00224$:
	cmp	#0x39
	beq	00225$
	bcc	00225$
	jmp	00156$
00225$:
;	../_atof.c: 57: value=10.0*value+(*s-'0');
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	#0x41
	pha
	lda	#0x20
	pha
	tya
	pha
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00227$
	dex
00227$:
	jsr	___sint2fs
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110, x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
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
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	tsx
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x116,x
	adc	#0x00
	sta	0x116,x
	jmp	00126$
00156$:
	tsx
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
;	../_atof.c: 61: if (*s == '.')
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x2e
	beq	00228$
	jmp	00112$
00228$:
;	../_atof.c: 63: s++;
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x116,x
	adc	#0x00
	sta	0x112,x
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	lda	#0xcd
	sta	0x101,x
	lda	#0xcc
	sta	0x102,x
	sta	0x103,x
	lda	#0x3d
	sta	0x104,x
00129$:
	tsx
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00229$
	jmp	00157$
00229$:
	cmp	#0x39
	beq	00230$
	bcc	00230$
	jmp	00157$
00230$:
;	../_atof.c: 66: value+=(*s-'0')*fraction;
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00232$
	dex
00232$:
	jsr	___sint2fs
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
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
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
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
;	../_atof.c: 67: fraction*=0.1;
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x3d
	pha
	lda	#0xcc
	pha
	pha
	lda	#0xcd
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
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
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	tsx
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
	jmp	00129$
00157$:
	tsx
	lda	0x111,x
	sta	0x10d,x
	lda	0x112,x
	sta	0x10e,x
00112$:
;	../_atof.c: 72: if (toupper(*s)=='E')
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	jsr	_toupper
	cmp	#0x45
	bne	00234$
	cpx	#0x00
	beq	00235$
00234$:
	jmp	00120$
00235$:
;	../_atof.c: 74: s++;
	tsx
	lda	0x10d,x
	sta	*(__TEMP+0)
	lda	0x10e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00236$
	inx
00236$:
;	../_atof.c: 75: iexp=(signed char)atoi(s);
	jsr	_atoi
	tay
;	../_atof.c: 77: while(iexp!=0)
00116$:
	cpy	#0x00
	bne	00237$
	jmp	00120$
00237$:
;	../_atof.c: 79: if(iexp<0)
	tya
	sec
	sbc	#0x00
	bvc	00239$
	bpl	00238$
	bmi	00114$
00239$:
	bpl	00114$
00238$:
;	../_atof.c: 81: value*=0.1;
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	#0x3d
	pha
	lda	#0xcc
	pha
	pha
	lda	#0xcd
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10f,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x110,x
	lda	*___SDCC_m6502_ret3
	sta	0x111,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	pla
	tay
	lda	*(__TEMP+0)
;	../_atof.c: 82: iexp++;
	iny
	jmp	00116$
00114$:
;	../_atof.c: 86: value*=10.0;
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	#0x41
	pha
	lda	#0x20
	pha
	lda	#0x00
	pha
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10f,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x110,x
	lda	*___SDCC_m6502_ret3
	sta	0x111,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	pla
	tay
	lda	*(__TEMP+0)
;	../_atof.c: 87: iexp--;
	dey
	jmp	00116$
00120$:
;	../_atof.c: 93: if(sign) value*=-1.0;
	tsx
	lda	0x119,x
	beq	00122$
	lda	0x108,x
	eor	#0x80
	sta	0x108,x
00122$:
;	../_atof.c: 94: return (value);
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_atof.c: 95: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x19
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
