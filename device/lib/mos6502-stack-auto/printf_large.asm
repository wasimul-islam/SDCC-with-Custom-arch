;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format
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
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;output_char               Allocated to stack - sp +3
;p                         Allocated to stack - sp +5
;lower_case                Allocated to registers x 
;n                         Allocated to registers a 
;c                         Allocated to registers y 
;------------------------------------------------------------
;	../printf_large.c: 116: output_digit (unsigned char n, _Bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
;	../printf_large.c: 118: register unsigned char c = n + (unsigned char)'0';
	clc
	adc	#0x30
	tay
;	../printf_large.c: 120: if (c > (unsigned char)'9')
	cpy	#0x39
	beq	00104$
	bcc	00104$
;	../printf_large.c: 122: c += (unsigned char)('A' - '0' - 10);
	tya
	clc
	adc	#0x07
	tay
;	../printf_large.c: 123: if (lower_case)
	cpx	#0x00
	beq	00104$
;	../printf_large.c: 124: c += (unsigned char)('a' - 'A');
	tya
	clc
	adc	#0x20
	tay
00104$:
;	../printf_large.c: 126: output_char( c, p );
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x103,x
	sta	*(__TEMP+0)
	lda	0x104,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
;	../printf_large.c: 127: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;output_char               Allocated to stack - sp +5
;p                         Allocated to stack - sp +7
;lower_case                Allocated to stack - sp +2
;b                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../printf_large.c: 149: output_2digits (unsigned char b, _Bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_output_2digits:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tay
;	../printf_large.c: 151: output_digit( b>>4,   lower_case, output_char, p );
	tsx
	tya
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	sta	0x101,x
	sta	*(__TEMP+0)
	tya
	pha
	lda	0x108, x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	lda	*(__TEMP+0)
	jsr	_output_digit
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
;	../printf_large.c: 152: output_digit( b&0x0F, lower_case, output_char, p );
	tay
	and	#0x0f
	tay
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	tya
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	lda	*(__TEMP+0)
	jsr	_output_digit
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../printf_large.c: 153: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to stack - sp +16
;value                     Allocated to stack - sp +12
;ul                        Allocated to stack - sp +1
;pb4                       Allocated to stack - sp +10
;i                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../printf_large.c: 168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 13 bytes.
_calculate_digit:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf5
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../printf_large.c: 170: unsigned long ul = value->ul;
	tsx
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
;	../printf_large.c: 171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10d,x
	sta	0x10b,x
;	../printf_large.c: 174: do
	lda	#0x20
	sta	0x109,x
00103$:
;	../printf_large.c: 176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	tsx
	lda	0x10a,x
	sta	*(__DPTR+0)
	lda	0x10b,x
	sta	*(__DPTR+1)
	ldy	#0x04
	lda	[__DPTR],y
	asl	a
	tay
	lda	0x104,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x105,x
	pha
	lda	#0x00
	sta	0x106,x
	lda	#0x00
	sta	0x107,x
	lda	#0x00
	sta	0x108,x
	pla
	lda	0x105,x
	and	#0x01
	sty	*(__TEMP+0)
	ora	*(__TEMP+0)
	tay
	sty	*(__TEMP+0)
	lda	0x10a,x
	sta	*(__DPTR+0)
	lda	0x10b,x
	sta	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x04
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	../printf_large.c: 177: ul <<= 1;
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
;	../printf_large.c: 179: if (radix <= *pb4 )
	tya
	cmp	0x110,x
	bcc	00104$
;	../printf_large.c: 181: *pb4 -= radix;
	lda	0x10a,x
	sta	*(__DPTR+0)
	lda	0x10b,x
	sta	*(__DPTR+1)
	ldy	#0x04
	lda	[__DPTR],y
	sec
	sbc	0x110,x
	sta	*(__TEMP+0)
	lda	0x10a,x
	sta	*(__DPTR+0)
	lda	0x10b,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../printf_large.c: 182: ul |= 1;
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
00104$:
;	../printf_large.c: 184: } while (--i);
	tsx
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109, x
	beq	00122$
	jmp	00103$
00122$:
;	../printf_large.c: 185: value->ul = ul;
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
;	../printf_large.c: 186: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0d
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated to stack - sp +73
;format                    Allocated to stack - sp +75
;ap                        Allocated to stack - sp +77
;pfn                       Allocated to stack - sp +69
;left_justify              Allocated to stack - sp +68
;zero_padding              Allocated to stack - sp +67
;prefix_sign               Allocated to stack - sp +66
;prefix_space              Allocated to stack - sp +65
;signed_argument           Allocated to stack - sp +64
;char_argument             Allocated to stack - sp +63
;long_argument             Allocated to stack - sp +62
;float_argument            Allocated to stack - sp +61
;lower_case                Allocated to stack - sp +60
;value                     Allocated to stack - sp +7
;charsOutputted            Allocated to stack - sp +58
;lsd                       Allocated to stack - sp +57
;radix                     Allocated to stack - sp +56
;width                     Allocated to registers 
;decimals                  Allocated to stack - sp +54
;length                    Allocated to stack - sp +52
;c                         Allocated to registers y 
;store                     Allocated to stack - sp +1
;pstore                    Allocated to stack - sp +50
;sloc0                     Allocated to stack - sp +48
;sloc1                     Allocated to stack - sp +46
;sloc2                     Allocated to stack - sp +44
;sloc3                     Allocated to stack - sp +42
;sloc4                     Allocated to stack - sp +40
;sloc5                     Allocated to stack - sp +38
;sloc6                     Allocated to stack - sp +36
;sloc7                     Allocated to stack - sp +34
;sloc8                     Allocated to stack - sp +32
;sloc9                     Allocated to stack - sp +30
;sloc10                    Allocated to stack - sp +28
;sloc11                    Allocated to stack - sp +26
;sloc12                    Allocated to stack - sp +24
;sloc13                    Allocated to stack - sp +20
;sloc14                    Allocated to stack - sp +16
;sloc15                    Allocated to stack - sp +12
;------------------------------------------------------------
;	../printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 70 bytes.
__print_format:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xbc
	tax
	txs
;	../printf_large.c: 466: charsOutputted = 0;
	tsx
	lda	#0x00
	sta	0x130,x
	sta	0x131,x
;	../printf_large.c: 475: while( c=*format++ )
	txa
	clc
	adc	#0x07
	sta	0x12e,x
	lda	#0x01
	sta	0x12f,x
	inx
	txa
	ldx	#0x01
	clc
	adc	#0x05
	stx	*(__TEMP+0)
	tsx
	sta	0x12c,x
	ldx	#0x01
	txa
	adc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x12d,x
	tsx
	txa
	clc
	adc	#0x07
	sta	0x12a,x
	lda	#0x01
	sta	0x12b,x
	lda	0x12a,x
	clc
	adc	#0x04
	sta	0x128,x
	lda	0x12b,x
	adc	#0x00
	sta	0x129,x
	lda	0x128,x
	sta	0x126,x
	lda	0x129,x
	sta	0x127,x
	lda	0x128,x
	sta	0x124,x
	lda	0x129,x
	sta	0x125,x
00231$:
	tsx
	lda	0x14b,x
	sta	0x122,x
	lda	0x14c,x
	sta	0x123,x
	lda	0x122,x
	sta	*(__DPTR+0)
	lda	0x123,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	pha
	lda	0x122,x
	clc
	adc	#0x01
	sta	0x14b,x
	lda	0x123,x
	adc	#0x00
	sta	0x14c,x
	pla
	tay
	cmp	#0x00
	bne	00627$
	jmp	00233$
00627$:
;	../printf_large.c: 477: if ( c=='%' )
	cpy	#0x25
	beq	00628$
	jmp	00229$
00628$:
;	../printf_large.c: 479: left_justify    = 0;
	lda	#0x00
	sta	0x144,x
;	../printf_large.c: 480: zero_padding    = 0;
	sta	0x143,x
;	../printf_large.c: 481: prefix_sign     = 0;
	sta	0x142,x
;	../printf_large.c: 482: prefix_space    = 0;
	sta	0x141,x
;	../printf_large.c: 483: signed_argument = 0;
	sta	0x140,x
;	../printf_large.c: 484: char_argument   = 0;
	sta	0x13f,x
;	../printf_large.c: 485: long_argument   = 0;
	sta	0x13e,x
;	../printf_large.c: 486: float_argument  = 0;
	sta	0x13d,x
;	../printf_large.c: 487: radix           = 0;
	sta	0x138,x
;	../printf_large.c: 488: width           = 0;
	sta	0x122,x
	sta	0x123,x
;	../printf_large.c: 489: decimals        = -1;
	lda	#0xff
	sta	0x136,x
	sta	0x137,x
;	../printf_large.c: 491: get_conversion_spec:
	lda	0x14b,x
	sta	0x120,x
	lda	0x14c,x
	sta	0x121,x
00101$:
;	../printf_large.c: 493: c = *format++;
	tsx
	lda	0x120,x
	sta	*(__DPTR+0)
	lda	0x121,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x120,x
	clc
	adc	#0x01
	sta	0x120,x
	lda	0x121,x
	adc	#0x00
	sta	0x121,x
	lda	0x120,x
	sta	0x14b,x
	lda	0x121,x
	sta	0x14c,x
;	../printf_large.c: 495: if (c=='%')
	cpy	#0x25
	bne	00103$
;	../printf_large.c: 497: OUTPUT_CHAR(c, p);
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 498: continue;
	jmp	00231$
00103$:
;	../printf_large.c: 501: if (isdigit(c))
	cpy	#0x30
	bcs	00630$
	jmp	00110$
00630$:
	cpy	#0x39
	beq	00631$
	bcc	00631$
	jmp	00110$
00631$:
;	../printf_large.c: 503: if (decimals==-1)
	tsx
	lda	0x136,x
	cmp	#0xff
	bne	00107$
	lda	0x137,x
	cmp	#0xff
	bne	00107$
;	../printf_large.c: 505: width = 10*width + c - '0';
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	stx	*(__TEMP+0)
	tsx
	sta	0x121,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	tay
	ldx	#0x00
	clc
	stx	*(__TEMP+0)
	tsx
	adc	0x11e,x
	php
	ldx	#0x00
	plp
	pha
	txa
	stx	*(__TEMP+0)
	tsx
	adc	0x120,x
	php
	ldx	#0x00
	plp
	tax
	pla
	sec
	sbc	#0x30
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	*(__TEMP+0)
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x123,x
;	../printf_large.c: 506: if (width == 0)
	tsx
	lda	0x122,x
	ora	0x123,x
	beq	00636$
	jmp	00101$
00636$:
;	../printf_large.c: 509: zero_padding = 1;
	lda	#0x01
	sta	0x143,x
	jmp	00101$
00107$:
;	../printf_large.c: 514: decimals = 10*decimals + c - '0';
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	tsx
	lda	0x138,x
	pha
	lda	0x137,x
	pha
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	stx	*(__TEMP+0)
	tsx
	sta	0x121,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	tay
	lda	*(__TEMP+0)
	tsx
	tya
	sta	0x11c,x
	lda	#0x00
	sta	0x11d,x
	lda	0x11e,x
	clc
	adc	0x11c,x
	sta	0x11c,x
	lda	0x11f,x
	adc	0x11d,x
	sta	0x11d,x
	lda	0x11c,x
	sec
	sbc	#0x30
	sta	0x136,x
	lda	0x11d,x
	sbc	#0x00
	sta	0x137,x
;	../printf_large.c: 516: goto get_conversion_spec;
	jmp	00101$
00110$:
;	../printf_large.c: 519: if (c=='.')
	cpy	#0x2e
	bne	00115$
;	../printf_large.c: 521: if (decimals==-1)
	tsx
	lda	0x136,x
	cmp	#0xff
	bne	00639$
	lda	0x137,x
	cmp	#0xff
	beq	00640$
00639$:
	jmp	00101$
00640$:
;	../printf_large.c: 522: decimals=0;
	lda	#0x00
	sta	0x136,x
	sta	0x137,x
;	../printf_large.c: 525: goto get_conversion_spec;
	jmp	00101$
00115$:
;	../printf_large.c: 528: if (islower(c))
	cpy	#0x61
	bcc	00117$
	cpy	#0x7a
	beq	00642$
	bcs	00117$
00642$:
;	../printf_large.c: 530: c = toupper(c);
	tya
	and	#0xdf
	tay
;	../printf_large.c: 531: lower_case = 1;
	tsx
	lda	#0x01
	sta	0x13c,x
	jmp	00118$
00117$:
;	../printf_large.c: 534: lower_case = 0;
	tsx
	lda	#0x00
	sta	0x13c,x
00118$:
;	../printf_large.c: 536: switch( c )
	cpy	#0x20
	bne	00644$
	jmp	00122$
00644$:
	cpy	#0x2b
	beq	00121$
	cpy	#0x2d
	beq	00120$
	cpy	#0x42
	bne	00647$
	jmp	00123$
00647$:
	cpy	#0x43
	bne	00648$
	jmp	00129$
00648$:
	cpy	#0x44
	bne	00649$
	jmp	00154$
00649$:
	cpy	#0x46
	bne	00650$
	jmp	00158$
00650$:
	cpy	#0x48
	bne	00651$
	jmp	00101$
00651$:
	cpy	#0x49
	bne	00652$
	jmp	00154$
00652$:
	cpy	#0x4a
	bne	00653$
	jmp	00101$
00653$:
	cpy	#0x4c
	beq	00128$
	cpy	#0x4f
	bne	00655$
	jmp	00155$
00655$:
	cpy	#0x50
	bne	00656$
	jmp	00152$
00656$:
	cpy	#0x53
	bne	00657$
	jmp	00133$
00657$:
	cpy	#0x54
	bne	00658$
	jmp	00101$
00658$:
	cpy	#0x55
	bne	00659$
	jmp	00156$
00659$:
	cpy	#0x58
	bne	00660$
	jmp	00157$
00660$:
	cpy	#0x5a
	bne	00661$
	jmp	00101$
00661$:
	jmp	00159$
;	../printf_large.c: 538: case '-':
00120$:
;	../printf_large.c: 539: left_justify = 1;
	tsx
	lda	#0x01
	sta	0x144,x
;	../printf_large.c: 540: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 541: case '+':
00121$:
;	../printf_large.c: 542: prefix_sign = 1;
	tsx
	lda	#0x01
	sta	0x142,x
;	../printf_large.c: 543: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 544: case ' ':
00122$:
;	../printf_large.c: 545: prefix_space = 1;
	tsx
	lda	#0x01
	sta	0x141,x
;	../printf_large.c: 546: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 547: case 'B': /* byte */
00123$:
;	../printf_large.c: 548: char_argument = 1;
	tsx
	lda	#0x01
	sta	0x13f,x
;	../printf_large.c: 549: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 556: case 'L': /* long */
00128$:
;	../printf_large.c: 557: long_argument = 1;
	tsx
	lda	#0x01
	sta	0x13e,x
;	../printf_large.c: 558: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 560: case 'C':
00129$:
;	../printf_large.c: 561: if( char_argument )
	tsx
	lda	0x13f,x
	beq	00131$
;	../printf_large.c: 562: c = va_arg(ap,char);
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00663$
	inx
00663$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x01
	bcs	00664$
	dex
00664$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	jmp	00132$
00131$:
;	../printf_large.c: 564: c = va_arg(ap,int);
	tsx
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00665$
	inx
00665$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00666$
	dex
00666$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
00132$:
;	../printf_large.c: 565: OUTPUT_CHAR( c, p );
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 566: break;
	jmp	00160$
;	../printf_large.c: 568: case 'S':
00133$:
;	../printf_large.c: 569: PTR = va_arg(ap,ptr_t);
	tsx
	txa
	clc
	adc	#0x07
	sta	0x11c,x
	lda	#0x01
	sta	0x11d,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00667$
	inx
00667$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00668$
	dex
00668$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x11c,x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../printf_large.c: 582: length = strlen(PTR);
	jsr	_strlen
	stx	*(__TEMP+0)
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x11f,x
;	../printf_large.c: 584: if ( decimals == -1 )
	tsx
	lda	0x136,x
	cmp	#0xff
	bne	00135$
	lda	0x137,x
	cmp	#0xff
	bne	00135$
;	../printf_large.c: 586: decimals = length;
	lda	0x11e,x
	sta	0x136,x
	lda	0x11f,x
	sta	0x137,x
00135$:
;	../printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
	tsx
	lda	0x144,x
	beq	00672$
	jmp	00277$
00672$:
	lda	0x11e,x
	sec
	sbc	0x122,x
	lda	0x11f,x
	sbc	0x123,x
	bcc	00673$
	jmp	00277$
00673$:
;	../printf_large.c: 590: width -= length;
	lda	0x122,x
	sec
	sbc	0x11e,x
	sta	0x120,x
	lda	0x123,x
	sbc	0x11f,x
	sta	0x121,x
;	../printf_large.c: 591: while( width-- != 0 )
	lda	0x130,x
	sta	0x11a,x
	lda	0x131,x
	sta	0x11b,x
00136$:
	tsx
	lda	0x120,x
	sta	0x118,x
	lda	0x121,x
	sta	0x119,x
	lda	0x120,x
	sec
	sbc	#0x01
	sta	0x120,x
	lda	0x121,x
	sbc	#0x00
	sta	0x121,x
	lda	0x118,x
	ora	0x119,x
	beq	00312$
;	../printf_large.c: 593: OUTPUT_CHAR( ' ', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x20
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x11a,x
	clc
	adc	#0x01
	sta	0x11a,x
	lda	0x11b,x
	adc	#0x00
	sta	0x11b,x
	jmp	00136$
;	../printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	tsx
	lda	0x11a,x
	sta	0x130,x
	lda	0x11b,x
	sta	0x131,x
	lda	0x120,x
	sta	0x122,x
	lda	0x121,x
	sta	0x123,x
00277$:
	tsx
	lda	0x136,x
	sta	0x118,x
	lda	0x137,x
	sta	0x119,x
	lda	0x130,x
	sta	0x11a,x
	lda	0x131,x
	sta	0x11b,x
00143$:
	tsx
	lda	0x11c,x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	tay
	bne	00675$
	jmp	00313$
00675$:
	tsx
	lda	#0x00
	sec
	sbc	0x118,x
	lda	#0x00
	sbc	0x119,x
	bvc	00677$
	bpl	00676$
	bmi	00313$
00677$:
	bpl	00313$
00676$:
	lda	0x118,x
	sec
	sbc	#0x01
	sta	0x118,x
	lda	0x119,x
	sbc	#0x00
	sta	0x119,x
;	../printf_large.c: 599: OUTPUT_CHAR( c, p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x11a,x
	clc
	adc	#0x01
	sta	0x11a,x
	lda	0x11b,x
	adc	#0x00
	sta	0x11b,x
;	../printf_large.c: 600: PTR++;
	lda	0x11c,x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	clc
	adc	#0x01
	bcc	00679$
	inx
00679$:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x11c,x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	jmp	00143$
00313$:
	tsx
	lda	0x11a,x
	sta	0x130,x
	lda	0x11b,x
	sta	0x131,x
;	../printf_large.c: 603: if ( left_justify && (length < width))
	lda	0x144,x
	bne	00680$
	jmp	00160$
00680$:
	lda	0x11e,x
	sec
	sbc	0x122,x
	lda	0x11f,x
	sbc	0x123,x
	bcc	00681$
	jmp	00160$
00681$:
;	../printf_large.c: 605: width -= length;
	lda	0x122,x
	sec
	sbc	0x11e,x
	sta	0x118,x
	lda	0x123,x
	sbc	0x11f,x
	sta	0x119,x
;	../printf_large.c: 606: while( width-- != 0 )
	lda	0x11a,x
	sta	0x13a,x
	lda	0x11b,x
	sta	0x13b,x
00146$:
	tsx
	lda	0x118,x
	sta	0x11a,x
	lda	0x119,x
	sta	0x11b,x
	lda	0x118,x
	sec
	sbc	#0x01
	sta	0x118,x
	lda	0x119,x
	sbc	#0x00
	sta	0x119,x
	lda	0x11a,x
	ora	0x11b,x
	bne	00682$
	jmp	00314$
00682$:
;	../printf_large.c: 608: OUTPUT_CHAR( ' ', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x20
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x13a,x
	clc
	adc	#0x01
	sta	0x13a,x
	lda	0x13b,x
	adc	#0x00
	sta	0x13b,x
	jmp	00146$
;	../printf_large.c: 613: case 'P':
00152$:
;	../printf_large.c: 614: PTR = va_arg(ap,ptr_t);
	tsx
	txa
	clc
	adc	#0x07
	sta	0x11a,x
	lda	#0x01
	sta	0x11b,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00683$
	inx
00683$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00684$
	dex
00684$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x11a,x
	sta	*(__DPTR+0)
	lda	0x11b,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../printf_large.c: 663: OUTPUT_CHAR('0', p);
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x30
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x11a,x
	lda	0x131,x
	adc	#0x00
	sta	0x11b,x
;	../printf_large.c: 664: OUTPUT_CHAR('x', p);
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x78
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x11a,x
	clc
	adc	#0x01
	sta	0x11a,x
	lda	0x11b,x
	adc	#0x00
	sta	0x11b,x
;	../printf_large.c: 665: OUTPUT_2DIGITS( value.byte[1] );
	txa
	clc
	adc	#0x07
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tay
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x146,x
	pha
	lda	0x145,x
	pha
	tya
	sta	*(__TEMP+0)
	lda	0x13c,x
	tax
	lda	*(__TEMP+0)
	jsr	_output_2digits
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x11a,x
	clc
	adc	#0x02
	sta	0x11a,x
	lda	0x11b,x
	adc	#0x00
	sta	0x11b,x
;	../printf_large.c: 666: OUTPUT_2DIGITS( value.byte[0] );
	lda	0x12e,x
	sta	*(__DPTR+0)
	lda	0x12f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x146,x
	pha
	lda	0x145,x
	pha
	tya
	sta	*(__TEMP+0)
	lda	0x13c,x
	tax
	lda	*(__TEMP+0)
	jsr	_output_2digits
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x11a,x
	clc
	adc	#0x02
	sta	0x130,x
	lda	0x11b,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 668: break;
	jmp	00160$
;	../printf_large.c: 671: case 'I':
00154$:
;	../printf_large.c: 672: signed_argument = 1;
	tsx
	lda	#0x01
	sta	0x140,x
;	../printf_large.c: 673: radix = 10;
	lda	#0x0a
	sta	0x138,x
;	../printf_large.c: 674: break;
	jmp	00160$
;	../printf_large.c: 676: case 'O':
00155$:
;	../printf_large.c: 677: radix = 8;
	tsx
	lda	#0x08
	sta	0x138,x
;	../printf_large.c: 678: break;
	jmp	00160$
;	../printf_large.c: 680: case 'U':
00156$:
;	../printf_large.c: 681: radix = 10;
	tsx
	lda	#0x0a
	sta	0x138,x
;	../printf_large.c: 682: break;
	jmp	00160$
;	../printf_large.c: 684: case 'X':
00157$:
;	../printf_large.c: 685: radix = 16;
	tsx
	lda	#0x10
	sta	0x138,x
;	../printf_large.c: 686: break;
	jmp	00160$
;	../printf_large.c: 688: case 'F':
00158$:
;	../printf_large.c: 689: float_argument=1;
	tsx
	lda	#0x01
	sta	0x13d,x
;	../printf_large.c: 690: break;
	jmp	00160$
;	../printf_large.c: 692: default:
00159$:
;	../printf_large.c: 694: OUTPUT_CHAR( c, p );
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 877: return charsOutputted;
	jmp	00160$
;	../printf_large.c: 696: }
00314$:
	tsx
	lda	0x13a,x
	sta	0x130,x
	lda	0x13b,x
	sta	0x131,x
	lda	0x118,x
	sta	0x122,x
	lda	0x119,x
	sta	0x123,x
00160$:
;	../printf_large.c: 698: if (float_argument)
	tsx
	lda	0x13d,x
	bne	00685$
	jmp	00226$
00685$:
;	../printf_large.c: 700: value.f = va_arg(ap, float);
	txa
	clc
	adc	#0x07
	sta	0x118,x
	lda	#0x01
	sta	0x119,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x04
	bcc	00686$
	inx
00686$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x04
	bcs	00687$
	dex
00687$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x114,x
	iny
	lda	[__DPTR],y
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	iny
	lda	[__DPTR],y
	sta	0x117,x
	lda	0x118,x
	sta	*(__DPTR+0)
	lda	0x119,x
	sta	*(__DPTR+1)
	lda	0x114,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x115,x
	iny
	sta	[__DPTR],y
	lda	0x116,x
	iny
	sta	[__DPTR],y
	lda	0x117,x
	iny
	sta	[__DPTR],y
;	../printf_large.c: 702: PTR="<NO FLOAT>";
	txa
	clc
	adc	#0x07
	sta	0x114,x
	lda	#0x01
	sta	0x115,x
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	#___str_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	#>___str_0
	iny
	sta	[__DPTR],y
;	../printf_large.c: 703: while (c=*PTR++)
	lda	0x130,x
	sta	0x118,x
	lda	0x131,x
	sta	0x119,x
00161$:
	tsx
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x11a,x
	iny
	lda	[__DPTR],y
	sta	0x11b,x
	lda	0x11a,x
	clc
	adc	#0x01
	sta	0x11c,x
	lda	0x11b,x
	adc	#0x00
	sta	0x11d,x
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	0x11c,x
	dey
	sta	[__DPTR],y
	lda	0x11d,x
	iny
	sta	[__DPTR],y
	lda	0x11a,x
	sta	*(__DPTR+0)
	lda	0x11b,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tay
	bne	00688$
	jmp	00231$
00688$:
;	../printf_large.c: 705: OUTPUT_CHAR (c, p);
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x118,x
	clc
	adc	#0x01
	sta	0x118,x
	lda	0x119,x
	adc	#0x00
	sta	0x119,x
	lda	0x118,x
	sta	0x130,x
	lda	0x119,x
	sta	0x131,x
	jmp	00161$
00226$:
;	../printf_large.c: 723: else if (radix != 0)
	tsx
	lda	0x138,x
	bne	00689$
	jmp	00231$
00689$:
;	../printf_large.c: 728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	lda	0x12c,x
	sta	0x114,x
	lda	0x12d,x
	sta	0x115,x
;	../printf_large.c: 731: if (char_argument)
	lda	0x13f,x
	bne	00690$
	jmp	00172$
00690$:
;	../printf_large.c: 733: value.l = va_arg(ap, char);
	txa
	clc
	adc	#0x07
	sta	0x118,x
	lda	#0x01
	sta	0x119,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00691$
	inx
00691$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x01
	bcs	00692$
	dex
00692$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	tsx
	tya
	sta	0x110,x
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	0x118,x
	sta	*(__DPTR+0)
	lda	0x119,x
	sta	*(__DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x111,x
	iny
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
;	../printf_large.c: 734: if (!signed_argument)
	lda	0x140,x
	beq	00693$
	jmp	00173$
00693$:
;	../printf_large.c: 736: value.l &= 0xFF;
	lda	0x118,x
	sta	*(__DPTR+0)
	lda	0x119,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113,x
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	0x118,x
	sta	*(__DPTR+0)
	lda	0x119,x
	sta	*(__DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x111,x
	iny
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	jmp	00173$
00172$:
;	../printf_large.c: 739: else if (long_argument)
	tsx
	lda	0x13e,x
	beq	00169$
;	../printf_large.c: 741: value.l = va_arg(ap, long);
	txa
	clc
	adc	#0x07
	sta	0x110,x
	lda	#0x01
	sta	0x111,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x04
	bcc	00695$
	inx
00695$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x04
	bcs	00696$
	dex
00696$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x10c,x
	iny
	lda	[__DPTR],y
	sta	0x10d,x
	iny
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	lda	0x110,x
	sta	*(__DPTR+0)
	lda	0x111,x
	sta	*(__DPTR+1)
	lda	0x10c,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10d,x
	iny
	sta	[__DPTR],y
	lda	0x10e,x
	iny
	sta	[__DPTR],y
	lda	0x10f,x
	iny
	sta	[__DPTR],y
	jmp	00173$
00169$:
;	../printf_large.c: 745: value.l = va_arg(ap, int);
	tsx
	txa
	clc
	adc	#0x07
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
	lda	0x14d,x
	sta	*(__TEMP+0)
	lda	0x14e,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00697$
	inx
00697$:
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x14f,x
	pla
	sta	0x14e,x
	ldx	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00698$
	dex
00698$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	pha
	txa
	tsx
	sta	0x112,x
	pla
	sta	0x111,x
	lda	0x112,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x113,x
	sta	0x114,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	0x111,x
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
;	../printf_large.c: 746: if (!signed_argument)
	lda	0x141,x
	bne	00173$
;	../printf_large.c: 748: value.l &= 0xFFFF;
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113,x
	iny
	lda	[__DPTR],y
	sta	0x114,x
	lda	#0x00
	sta	0x113,x
	sta	0x114,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	0x111,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
00173$:
;	../printf_large.c: 752: if ( signed_argument )
	tsx
	lda	0x140,x
	bne	00700$
	jmp	00178$
00700$:
;	../printf_large.c: 754: if (value.l < 0)
	txa
	clc
	adc	#0x07
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113, x
	sec
	sbc	#0x00
	bvc	00702$
	bpl	00701$
	bmi	00175$
00702$:
	bpl	00175$
00701$:
;	../printf_large.c: 755: value.l = -value.l;
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113,x
	lda	#0x00
	sec
	sbc	0x110,x
	sta	0x110,x
	lda	#0x00
	sbc	0x111,x
	sta	0x111,x
	lda	#0x00
	sbc	0x112,x
	sta	0x112,x
	lda	#0x00
	sbc	0x113,x
	sta	0x113,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x111,x
	iny
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	jmp	00178$
00175$:
;	../printf_large.c: 757: signed_argument = 0;
	tsx
	lda	#0x00
	sta	0x140,x
00178$:
;	../printf_large.c: 761: lsd = 1;
	tsx
	lda	#0x01
	sta	0x139,x
;	../printf_large.c: 763: do {
	lda	0x114,x
	sta	0x10c,x
	lda	0x115,x
	sta	0x10d,x
	lda	#0x00
	sta	0x110,x
	sta	0x111,x
00182$:
;	../printf_large.c: 764: value.byte[4] = 0;
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	ldy	#0x04
	sta	[__DPTR],y
;	../printf_large.c: 766: calculate_digit(&value, radix);
	tsx
	lda	0x12a,x
	sta	0x114,x
	lda	0x12b,x
	sta	0x115,x
	lda	0x138,x
	pha
	lda	0x115,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_calculate_digit
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
;	../printf_large.c: 770: if (!lsd)
	tsx
	lda	0x139,x
	bne	00180$
;	../printf_large.c: 772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	lda	0x126,x
	sta	*(__DPTR+0)
	lda	0x127,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	asl	a
	asl	a
	asl	a
	asl	a
	sta	0x114,x
	lda	0x126,x
	sta	*(__DPTR+0)
	lda	0x127,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	0x114,x
	sta	0x114,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	ora	0x114,x
	sta	*(__TEMP+0)
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../printf_large.c: 773: pstore--;
	lda	0x10c,x
	sec
	sbc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	sbc	#0x00
	sta	0x10d,x
	jmp	00181$
00180$:
;	../printf_large.c: 777: *pstore = value.byte[4];
	tsx
	lda	0x128,x
	sta	*(__DPTR+0)
	lda	0x129,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
00181$:
;	../printf_large.c: 779: length++;
	tsx
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x110,x
	lda	0x111,x
	adc	#0x00
	sta	0x111,x
;	../printf_large.c: 780: lsd = !lsd;
	lda	0x139,x
	eor	#0x01
	sta	0x139,x
;	../printf_large.c: 781: } while( value.ul );
	lda	0x12a,x
	sta	*(__DPTR+0)
	lda	0x12b,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x114,x
	iny
	lda	[__DPTR],y
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	iny
	lda	[__DPTR],y
	sta	0x117, x
	ora	0x116,x
	ora	0x115,x
	ora	0x114,x
	beq	00705$
	jmp	00182$
00705$:
;	../printf_large.c: 783: if (width == 0)
	lda	0x10c,x
	sta	0x132,x
	lda	0x10d,x
	sta	0x133,x
	lda	0x110,x
	sta	0x134,x
	lda	0x111,x
	sta	0x135,x
	lda	0x122,x
	ora	0x123,x
	bne	00186$
;	../printf_large.c: 788: width = 1;
	lda	#0x01
	sta	0x122,x
	lda	#0x00
	sta	0x123,x
00186$:
;	../printf_large.c: 792: if (!zero_padding && !left_justify)
	tsx
	lda	0x143,x
	beq	00707$
	jmp	00191$
00707$:
	lda	0x144,x
	beq	00708$
	jmp	00191$
00708$:
;	../printf_large.c: 794: while ( width > (unsigned char) (length+1) )
	lda	0x130,x
	sta	0x10c,x
	lda	0x131,x
	sta	0x10d,x
	lda	0x122,x
	sta	0x110,x
	lda	0x123,x
	sta	0x111,x
00187$:
	tsx
	lda	0x134,x
	tay
	iny
	tya
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
	lda	0x114,x
	sec
	sbc	0x110,x
	lda	0x115,x
	sbc	0x111,x
	bcs	00316$
;	../printf_large.c: 796: OUTPUT_CHAR( ' ', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x20
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	../printf_large.c: 797: width--;
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
	jmp	00187$
00316$:
	tsx
	lda	0x10c,x
	sta	0x130,x
	lda	0x10d,x
	sta	0x131,x
	lda	0x110,x
	sta	0x122,x
	lda	0x111,x
	sta	0x123,x
00191$:
;	../printf_large.c: 801: if (signed_argument) // this now means the original value was negative
	tsx
	lda	0x140,x
	beq	00201$
;	../printf_large.c: 803: OUTPUT_CHAR( '-', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x2d
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 805: width--;
	lda	0x122,x
	sec
	sbc	#0x01
	sta	0x122,x
	lda	0x123,x
	sbc	#0x00
	sta	0x123,x
	jmp	00202$
00201$:
;	../printf_large.c: 807: else if (length != 0)
	tsx
	lda	0x134,x
	ora	0x135,x
	bne	00711$
	jmp	00202$
00711$:
;	../printf_large.c: 810: if (prefix_sign)
	lda	0x142,x
	beq	00196$
;	../printf_large.c: 812: OUTPUT_CHAR( '+', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x2b
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 814: width--;
	lda	0x122,x
	sec
	sbc	#0x01
	sta	0x122,x
	lda	0x123,x
	sbc	#0x00
	sta	0x123,x
	jmp	00202$
00196$:
;	../printf_large.c: 816: else if (prefix_space)
	tsx
	lda	0x141,x
	beq	00202$
;	../printf_large.c: 818: OUTPUT_CHAR( ' ', p );
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x20
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
;	../printf_large.c: 820: width--;
	lda	0x122,x
	sec
	sbc	#0x01
	sta	0x122,x
	lda	0x123,x
	sbc	#0x00
	sta	0x123,x
00202$:
;	../printf_large.c: 825: if (!left_justify)
	tsx
	lda	0x144,x
	beq	00714$
	jmp	00210$
00714$:
;	../printf_large.c: 827: while ( width-- > length )
	lda	0x130,x
	sta	0x10c,x
	lda	0x131,x
	sta	0x10d,x
	lda	0x122,x
	sta	0x110,x
	lda	0x123,x
	sta	0x111,x
00203$:
	tsx
	lda	0x110,x
	sta	0x114,x
	lda	0x111,x
	sta	0x115,x
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
	lda	0x134,x
	sec
	sbc	0x114,x
	lda	0x135,x
	sbc	0x115,x
	bcs	00317$
;	../printf_large.c: 829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	lda	0x143,x
	beq	00236$
	lda	#0x30
	ldx	#0x00
	jmp	00237$
00236$:
	lda	#0x20
	ldx	#0x00
00237$:
	tay
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
	jmp	00203$
00210$:
;	../printf_large.c: 835: if (width > length)
	tsx
	lda	0x134,x
	sec
	sbc	0x122,x
	lda	0x135,x
	sbc	0x123,x
	bcs	00207$
;	../printf_large.c: 836: width -= length;
	lda	0x122,x
	sec
	sbc	0x134,x
	sta	0x114,x
	lda	0x123,x
	sbc	0x135,x
	sta	0x115,x
	jmp	00309$
00207$:
;	../printf_large.c: 838: width = 0;
	tsx
	lda	#0x00
	sta	0x114,x
	sta	0x115,x
;	../printf_large.c: 877: return charsOutputted;
	jmp	00309$
;	../printf_large.c: 842: while( length-- )
00317$:
	tsx
	lda	0x10c,x
	sta	0x130,x
	lda	0x10d,x
	sta	0x131,x
	lda	0x110,x
	sta	0x114,x
	lda	0x111,x
	sta	0x115,x
00309$:
	tsx
	lda	0x132,x
	sta	0x10c,x
	lda	0x133,x
	sta	0x10d,x
	lda	0x130,x
	sta	0x110,x
	lda	0x131,x
	sta	0x111,x
	lda	0x134,x
	sta	0x118,x
	lda	0x135,x
	sta	0x119,x
00215$:
	tsx
	lda	0x118,x
	sta	0x11a,x
	lda	0x119,x
	sta	0x11b,x
	lda	0x118,x
	sec
	sbc	#0x01
	sta	0x118,x
	lda	0x119,x
	sbc	#0x00
	sta	0x119,x
	lda	0x11a,x
	ora	0x11b,x
	bne	00718$
	jmp	00318$
00718$:
;	../printf_large.c: 844: lsd = !lsd;
	lda	0x139,x
	eor	#0x01
;	../printf_large.c: 845: if (!lsd)
	sta	0x139, x
	bne	00213$
;	../printf_large.c: 847: pstore++;
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	../printf_large.c: 848: value.byte[4] = *pstore >> 4;
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	sta	*(__TEMP+0)
	lda	0x128,x
	sta	*(__DPTR+0)
	lda	0x129,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	jmp	00214$
00213$:
;	../printf_large.c: 852: value.byte[4] = *pstore & 0x0F;
	tsx
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	and	#0x0f
	sta	*(__TEMP+0)
	lda	0x128,x
	sta	*(__DPTR+0)
	lda	0x129,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
00214$:
;	../printf_large.c: 855: output_digit( value.byte[4], lower_case, output_char, p );
	tsx
	lda	0x124,x
	sta	*(__DPTR+0)
	lda	0x125,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x146,x
	pha
	lda	0x145,x
	pha
	tya
	sta	*(__TEMP+0)
	lda	0x13c,x
	tax
	lda	*(__TEMP+0)
	jsr	_output_digit
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../printf_large.c: 856: charsOutputted++;
	tsx
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x110,x
	lda	0x111,x
	adc	#0x00
	sta	0x111,x
	jmp	00215$
00318$:
	tsx
	lda	0x110,x
	sta	0x130,x
	lda	0x111,x
	sta	0x131,x
;	../printf_large.c: 861: if (left_justify)
	lda	0x144,x
	bne	00720$
	jmp	00231$
00720$:
;	../printf_large.c: 863: while (width-- > 0)
	lda	0x110,x
	sta	0x13a,x
	lda	0x111,x
	sta	0x13b,x
	lda	0x114,x
	sta	0x10c,x
	lda	0x115,x
	sta	0x10d,x
00218$:
	tsx
	lda	0x10c,x
	sta	0x110,x
	lda	0x10d,x
	sta	0x111,x
	lda	0x10c,x
	sec
	sbc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	sbc	#0x00
	sta	0x10d,x
	lda	0x110,x
	ora	0x111,x
	bne	00721$
	jmp	00231$
00721$:
;	../printf_large.c: 865: OUTPUT_CHAR(' ', p);
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	lda	#0x20
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x13a,x
	clc
	adc	#0x01
	sta	0x13a,x
	lda	0x13b,x
	adc	#0x00
	sta	0x13b,x
	lda	0x13a,x
	sta	0x130,x
	lda	0x13b,x
	sta	0x131,x
	jmp	00218$
00229$:
;	../printf_large.c: 873: OUTPUT_CHAR( c, p );
	tsx
	lda	0x14a,x
	pha
	lda	0x149,x
	pha
	lda	0x145,x
	sta	*(__TEMP+0)
	lda	0x146,x
	sta	*(__TEMP+1)
	tya
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x130,x
	clc
	adc	#0x01
	sta	0x130,x
	lda	0x131,x
	adc	#0x00
	sta	0x131,x
	jmp	00231$
00233$:
;	../printf_large.c: 877: return charsOutputted;
	tsx
	lda	0x131,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x130,x
	php
	ldx	*(__TEMP+0)
	plp
;	../printf_large.c: 878: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x46
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
