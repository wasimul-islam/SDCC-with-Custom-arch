;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base                      Allocated to registers x 
;c                         Allocated to registers a 
;v                         Allocated to registers y 
;------------------------------------------------------------
;	../strtoul.c: 40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	../strtoul.c: 44: if (c >= '0' && c <= '9')
	cmp	#0x30
	bcc	00110$
	cmp	#0x39
	beq	00146$
	bcs	00110$
00146$:
;	../strtoul.c: 45: v = c - '0';
	sec
	sbc	#0x30
	tay
	jmp	00111$
00110$:
;	../strtoul.c: 46: else if (c >= 'a' && c <='z')
	cmp	#0x61
	bcc	00106$
	cmp	#0x7a
	beq	00149$
	bcs	00106$
00149$:
;	../strtoul.c: 47: v = c - 'a' + 10;
	clc
	adc	#0xa9
	tay
	jmp	00111$
00106$:
;	../strtoul.c: 48: else if (c >= 'A' && c <='Z')
	cmp	#0x41
	bcc	00102$
	cmp	#0x5a
	beq	00152$
	bcs	00102$
00152$:
;	../strtoul.c: 49: v = c - 'A' + 10;
	clc
	adc	#0xc9
	tay
	jmp	00111$
00102$:
;	../strtoul.c: 51: return (-1);
	lda	#0xff
	rts
00111$:
;	../strtoul.c: 53: if (v >= base)
	txa
	sty	*(__TEMP+0)
	cmp	*(__TEMP+0)
	beq	00154$
	bcs	00114$
00154$:
;	../strtoul.c: 54: return (-1);
	lda	#0xff
	rts
00114$:
;	../strtoul.c: 56: return (v);
	tya
;	../strtoul.c: 57: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;endptr                    Allocated to stack - sp +42
;base                      Allocated to stack - sp +44
;nptr                      Allocated to stack - sp +38
;__1310720004              Allocated to registers 
;ptr                       Allocated to stack - sp +36
;ret                       Allocated to stack - sp +9
;range_error               Allocated to stack - sp +35
;neg                       Allocated to stack - sp +34
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__2621440017              Allocated to stack - sp +23
;__2621440012              Allocated to registers a 
;__2621440007              Allocated to stack - sp +21
;oldret                    Allocated to stack - sp +17
;digit                     Allocated to registers y 
;__2621440008              Allocated to stack - sp +14
;__2621440009              Allocated to stack - sp +6
;__2621440010              Allocated to stack - sp -2
;r                         Allocated to stack - sp -4
;a                         Allocated to stack - sp -12
;b                         Allocated to stack - sp -20
;result                    Allocated to stack - sp -28
;__2621440013              Allocated to stack - sp +32
;__2621440014              Allocated to stack - sp -38
;__2621440015              Allocated to stack - sp -46
;r                         Allocated to registers 
;a                         Allocated to stack - sp -56
;b                         Allocated to stack - sp -64
;result                    Allocated to stack - sp +1
;__2621440018              Allocated to stack - sp -74
;__2621440019              Allocated to stack - sp -82
;__2621440020              Allocated to stack - sp -90
;r                         Allocated to stack - sp -92
;a                         Allocated to stack - sp -100
;b                         Allocated to stack - sp -108
;result                    Allocated to stack - sp -116
;sloc0                     Allocated to stack - sp +31
;sloc1                     Allocated to stack - sp +29
;sloc2                     Allocated to stack - sp +21
;sloc3                     Allocated to stack - sp +13
;------------------------------------------------------------
;	../strtoul.c: 59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 39 bytes.
_strtoul:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xdb
	tax
	txs
;	../strtoul.c: 63: bool range_error = false;
	tsx
	lda	#0x00
	sta	0x123,x
;	../strtoul.c: 64: bool neg = false;
	sta	0x122,x
;	../strtoul.c: 66: while (isblank (*ptr))
	lda	0x126,x
	sta	*(__TEMP+0)
	lda	0x127,x
	tax
	lda	*(__TEMP+0)
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
	beq	00141$
	cpy	#0x09
	bne	00163$
00141$:
;	../strtoul.c: 67: ptr++;
	clc
	adc	#0x01
	bcc	00101$
	inx
	jmp	00101$
00163$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x126,x
	pla
	sta	0x125,x
	ldx	*(__TEMP+0)
;	../strtoul.c: 70: switch(*ptr)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x2b
	beq	00105$
	cmp	#0x2d
	bne	00106$
;	../strtoul.c: 73: neg = true;
	tsx
	lda	#0x01
	sta	0x122,x
;	../strtoul.c: 74: case '+':
00105$:
;	../strtoul.c: 75: ptr++;
	tsx
	lda	0x124,x
	clc
	adc	#0x01
	sta	0x124,x
	lda	0x125,x
	adc	#0x00
	sta	0x125,x
;	../strtoul.c: 76: }
00106$:
;	../strtoul.c: 79: if (!base)
	tsx
	lda	0x12c,x
	ora	0x12d,x
	beq	00219$
	jmp	00119$
00219$:
;	../strtoul.c: 81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	lda	#0x00
	pha
	lda	#0x02
	pha
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
	lda	0x125,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x128,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strncmp
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	bne	00220$
	cpx	#0x00
00220$:
	beq	00110$
	lda	#0x00
	pha
	lda	#0x02
	pha
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
	tsx
	lda	0x129,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x128,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strncmp
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	bne	00222$
	cpx	#0x00
00222$:
	bne	00111$
00110$:
;	../strtoul.c: 83: base = 16;
	tsx
	lda	#0x10
	sta	0x12c,x
	lda	#0x00
	sta	0x12d,x
;	../strtoul.c: 84: ptr += 2;
	lda	0x124,x
	clc
	adc	#0x02
	sta	0x124,x
	lda	0x125,x
	adc	#0x00
	sta	0x125,x
	jmp	00120$
00111$:
;	../strtoul.c: 86: else if (*ptr == '0')
	tsx
	lda	0x124,x
	sta	*(__DPTR+0)
	lda	0x125,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x30
	bne	00108$
;	../strtoul.c: 88: base = 8;
	lda	#0x08
	sta	0x12c,x
	tya
	sta	0x12d,x
;	../strtoul.c: 89: ptr++;
	lda	0x124,x
	clc
	adc	#0x01
	sta	0x124,x
	lda	0x125,x
	adc	#0x00
	sta	0x125,x
	jmp	00120$
00108$:
;	../strtoul.c: 92: base = 10;
	tsx
	lda	#0x0a
	sta	0x12c,x
	lda	#0x00
	sta	0x12d,x
	jmp	00120$
00119$:
;	../strtoul.c: 95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	tsx
	lda	0x12c,x
	cmp	#0x10
	bne	00120$
	lda	0x12d,x
	bne	00120$
	lda	#0x00
	pha
	lda	#0x02
	pha
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
	lda	0x125,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x128,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strncmp
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	bne	00228$
	cpx	#0x00
00228$:
	beq	00114$
	lda	#0x00
	pha
	lda	#0x02
	pha
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
	tsx
	lda	0x129,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x128,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strncmp
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	bne	00230$
	cpx	#0x00
00230$:
	bne	00120$
00114$:
;	../strtoul.c: 96: ptr += 2;
	tsx
	lda	0x124,x
	clc
	adc	#0x02
	sta	0x124,x
	lda	0x125,x
	adc	#0x00
	sta	0x125,x
00120$:
;	../strtoul.c: 100: if (_isdigit (*ptr, base) < 0)
	tsx
	lda	0x12c,x
	sta	0x11f,x
	lda	0x124,x
	sta	*(__DPTR+0)
	lda	0x125,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	*(__TEMP+0)
	lda	0x11f,x
	tax
	lda	*(__TEMP+0)
	jsr	__isdigit
	sec
	sbc	#0x00
	bvc	00233$
	bpl	00232$
	bmi	00124$
00233$:
	bpl	00124$
00232$:
;	../strtoul.c: 102: if (endptr)
	tsx
	lda	0x12a,x
	ora	0x12b,x
	beq	00122$
;	../strtoul.c: 103: *endptr = (char*)nptr;
	lda	0x12a,x
	sta	*(__TEMP+0)
	lda	0x12b,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x126,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x127,x
	iny
	sta	[__DPTR],y
00122$:
;	../strtoul.c: 104: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00138$
00124$:
;	../strtoul.c: 107: for (ret = 0;; ptr++)
	tsx
	lda	#0x00
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
	lda	0x124,x
	sta	0x11d,x
	lda	0x125,x
	sta	0x11e,x
00136$:
;	../strtoul.c: 110: signed char digit = _isdigit (*ptr, base);
	tsx
	lda	0x11d,x
	sta	*(__DPTR+0)
	lda	0x11e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	*(__TEMP+0)
	lda	0x11f,x
	tax
	lda	*(__TEMP+0)
	jsr	__isdigit
;	../strtoul.c: 112: if (digit < 0)
	tay
	sec
	sbc	#0x00
	bvs	00237$
	bpl	00236$
	bmi	00238$
00237$:
	bmi	00236$
00238$:
	jmp	00127$
00236$:
;	../strtoul.c: 117: range_error |= ckd_mul(&ret, ret, base);
	tsx
	lda	0x12c,x
	sta	0x115,x
	lda	0x12d,x
	sta	0x116,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x117,x
	sta	0x118,x
	sta	0x119,x
	sta	0x11a,x
	sta	0x11b,x
	sta	0x11c,x
	lda	0x109,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x10b,x
	sta	0x10f,x
	lda	0x10c,x
	sta	0x110,x
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
	txa
	clc
	adc	#0x09
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x122,x
	pla
	sta	0x121,x
	lda	0x122,x
;	./../../include/stdckdint.h: 76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	sta	*(__TEMP+0)
	tya
	pha
	lda	0x11d, x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	jsr	__mullonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11f,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x120,x
	lda	*___SDCC_m6502_ret3
	sta	0x121,x
	lda	*___SDCC_m6502_ret4
	sta	0x122,x
	lda	*___SDCC_m6502_ret5
	sta	0x123,x
	lda	*___SDCC_m6502_ret6
	sta	0x124,x
	lda	*___SDCC_m6502_ret7
	sta	0x125,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	pla
	tay
	lda	*(__TEMP+0)
	tsx
	lda	0x10d,x
	sta	0x101,x
	lda	0x10e,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x110,x
	sta	0x104,x
	lda	0x111,x
	sta	0x105,x
	lda	0x112,x
	sta	0x106,x
	lda	0x113,x
	sta	0x107,x
	lda	0x114,x
	sta	0x108,x
	lda	0x10d,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10f,x
	lda	0x110,x
	sta	0x110,x
	sty	*(__TEMP+0)
	lda	0x120,x
	sta	*(__DPTR+0)
	lda	0x121,x
	sta	*(__DPTR+1)
	lda	0x10d,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10e,x
	iny
	sta	[__DPTR],y
	lda	0x10f,x
	iny
	sta	[__DPTR],y
	lda	0x110,x
	iny
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
	lda	0x10d,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10f,x
	lda	0x110,x
	sta	0x110,x
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
	lda	0x10d,x
	cmp	0x101,x
	bne	00240$
	lda	0x10e,x
	cmp	0x102,x
	bne	00240$
	lda	0x10f,x
	cmp	0x103,x
	bne	00240$
	lda	0x110,x
	cmp	0x104,x
	bne	00240$
	lda	0x111,x
	cmp	0x105,x
	bne	00240$
	lda	0x112,x
	cmp	0x106,x
	bne	00240$
	lda	0x113,x
	cmp	0x107,x
	bne	00240$
	lda	0x114,x
	cmp	0x108,x
	beq	00248$
00240$:
	lda	#0x00
	jmp	00247$
00248$:
	lda	#0x01
00247$:
	eor	#0x01
;	../strtoul.c: 117: range_error |= ckd_mul(&ret, ret, base);
	ora	0x123,x
	sta	0x123,x
;	../strtoul.c: 125: ret += (unsigned char)digit;
	tya
	sta	0x10d,x
	lda	#0x00
	sta	0x10e,x
	sta	0x10f,x
	sta	0x110,x
	lda	0x109,x
	clc
	adc	0x10d,x
	sta	0x109,x
	lda	0x10a,x
	adc	0x10e,x
	sta	0x10a,x
	lda	0x10b,x
	adc	0x10f,x
	sta	0x10b,x
	lda	0x10c,x
	adc	0x110,x
	sta	0x10c,x
;	../strtoul.c: 107: for (ret = 0;; ptr++)
	lda	0x11d,x
	clc
	adc	#0x01
	sta	0x11d,x
	lda	0x11e,x
	adc	#0x00
	sta	0x11e,x
	jmp	00136$
00127$:
;	../strtoul.c: 128: if (endptr)
	tsx
	lda	0x12a,x
	ora	0x12b,x
	beq	00129$
;	../strtoul.c: 129: *endptr = (char*)ptr;
	lda	0x12a,x
	sta	*(__TEMP+0)
	lda	0x12b,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x11d,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x11e,x
	iny
	sta	[__DPTR],y
00129$:
;	../strtoul.c: 131: if (range_error)
	tsx
	lda	0x123,x
	beq	00131$
;	../strtoul.c: 133: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtoul.c: 134: return (ULONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00138$
00131$:
;	../strtoul.c: 137: return (neg ? -ret : ret);
	tsx
	lda	0x122,x
	beq	00143$
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x10d,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x10e,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x10f,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x110,x
	jmp	00144$
00143$:
	tsx
	lda	0x109,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x10b,x
	sta	0x10f,x
	lda	0x10c,x
	sta	0x110,x
00144$:
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
00138$:
;	../strtoul.c: 138: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x27
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
