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
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__print_format_sloc0_1_0:
	.ds 2
__print_format_sloc1_1_0:
	.ds 2
__print_format_sloc2_1_0:
	.ds 2
__print_format_sloc3_1_0:
	.ds 4
__print_format_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_calculate_digit_ul_65536_71:
	.ds 4
_calculate_digit_b4_65536_71:
	.ds 1
_calculate_digit_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 2
_value:
	.ds 5
_charsOutputted:
	.ds 2
_output_2digits_b_65536_68:
	.ds 1
_calculate_digit_radix_65536_70:
	.ds 1
__print_format_PARM_2:
	.ds 2
__print_format_PARM_3:
	.ds 2
__print_format_PARM_4:
	.ds 2
__print_format_left_justify_65536_75:
	.ds 1
__print_format_zero_padding_65536_75:
	.ds 1
__print_format_prefix_sign_65536_75:
	.ds 1
__print_format_prefix_space_65536_75:
	.ds 1
__print_format_signed_argument_65536_75:
	.ds 1
__print_format_char_argument_65536_75:
	.ds 1
__print_format_long_argument_65536_75:
	.ds 1
__print_format_float_argument_65536_75:
	.ds 1
__print_format_lsd_65536_75:
	.ds 1
__print_format_radix_65536_75:
	.ds 1
__print_format_decimals_65536_75:
	.ds 2
__print_format_length_65536_75:
	.ds 2
__print_format_store_262144_94:
	.ds 6
__print_format_pstore_262144_94:
	.ds 2
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
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c                         Allocated to registers x 
;------------------------------------------------------------
;	../printf_large.c: 105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__output_char:
	tax
;	../printf_large.c: 107: output_char( c, p );
	lda	(_p + 1)
	pha
	lda	_p
	pha
	lda	_output_char
	sta	*(__TEMP+0)
	lda	(_output_char + 1)
	sta	*(__TEMP+1)
	txa
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
;	../printf_large.c: 108: charsOutputted++;
	inc	_charsOutputted
	bne	00103$
	inc	(_charsOutputted + 1)
00103$:
;	../printf_large.c: 109: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers a 
;n                         Allocated to registers a 
;------------------------------------------------------------
;	../printf_large.c: 130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
;	../printf_large.c: 132: register unsigned char c = n + (unsigned char)'0';
	clc
	adc	#0x30
;	../printf_large.c: 134: if (c > (unsigned char)'9')
	cmp	#0x39
	beq	00104$
	bcc	00104$
;	../printf_large.c: 136: c += (unsigned char)('A' - '0' - 10);
	clc
	adc	#0x07
;	../printf_large.c: 137: if (lower_case)
	ldx	_lower_case
	beq	00104$
;	../printf_large.c: 138: c = tolower(c);
	ora	#0x20
00104$:
;	../printf_large.c: 140: _output_char( c );
;	../printf_large.c: 141: }
	jmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated with name '_output_2digits_b_65536_68'
;------------------------------------------------------------
;	../printf_large.c: 157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_2digits:
;	../printf_large.c: 159: output_digit( b>>4   );
	sta	_output_2digits_b_65536_68
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	jsr	_output_digit
;	../printf_large.c: 160: output_digit( b&0x0F );
	lda	_output_2digits_b_65536_68
	and	#0x0f
;	../printf_large.c: 161: }
	jmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_65536_70'
;ul                        Allocated with name '_calculate_digit_ul_65536_71'
;b4                        Allocated with name '_calculate_digit_b4_65536_71'
;i                         Allocated to registers y 
;sloc0                     Allocated with name '_calculate_digit_sloc0_1_0'
;------------------------------------------------------------
;	../printf_large.c: 189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calculate_digit:
	sta	_calculate_digit_radix_65536_70
;	../printf_large.c: 191: register unsigned long ul = value.ul;
	lda	(_value + 3)
	sta	*(_calculate_digit_ul_65536_71 + 3)
	lda	(_value + 2)
	sta	*(_calculate_digit_ul_65536_71 + 2)
	lda	(_value + 1)
	sta	*(_calculate_digit_ul_65536_71 + 1)
	lda	_value
	sta	*_calculate_digit_ul_65536_71
;	../printf_large.c: 192: register unsigned char b4 = value.byte[4];
	ldx	(_value + 0x0004)
;	../printf_large.c: 195: do
	ldy	#0x20
00103$:
;	../printf_large.c: 197: b4 = (b4 << 1);
	txa
	asl	a
	sta	*_calculate_digit_b4_65536_71
;	../printf_large.c: 198: b4 |= (ul >> 31) & 0x01;
	lda	*(_calculate_digit_ul_65536_71 + 3)
	rol	a
	lda	#0x00
	rol	a
	sta	*_calculate_digit_sloc0_1_0
	ldx	#0x00
	stx	*(_calculate_digit_sloc0_1_0 + 1)
	stx	*(_calculate_digit_sloc0_1_0 + 2)
	stx	*(_calculate_digit_sloc0_1_0 + 3)
	lda	*_calculate_digit_sloc0_1_0
	and	#0x01
	ora	*_calculate_digit_b4_65536_71
	tax
;	../printf_large.c: 199: ul <<= 1;
	asl	*_calculate_digit_ul_65536_71
	rol	*(_calculate_digit_ul_65536_71 + 1)
	rol	*(_calculate_digit_ul_65536_71 + 2)
	rol	*(_calculate_digit_ul_65536_71 + 3)
	lda	*(_calculate_digit_ul_65536_71 + 3)
;	../printf_large.c: 201: if (radix <= b4 )
	cpx	_calculate_digit_radix_65536_70
	bcc	00104$
;	../printf_large.c: 203: b4 -= radix;
	txa
	sec
	sbc	_calculate_digit_radix_65536_70
	tax
;	../printf_large.c: 204: ul |= 1;
	lda	*_calculate_digit_ul_65536_71
	ora	#0x01
	sta	*_calculate_digit_ul_65536_71
00104$:
;	../printf_large.c: 206: } while (--i);
	dey
	bne	00103$
;	../printf_large.c: 207: value.ul = ul;
	lda	*(_calculate_digit_ul_65536_71 + 3)
	sta	(_value + 3)
	lda	*(_calculate_digit_ul_65536_71 + 2)
	sta	(_value + 2)
	lda	*(_calculate_digit_ul_65536_71 + 1)
	sta	(_value + 1)
	lda	*_calculate_digit_ul_65536_71
	sta	_value
;	../printf_large.c: 208: value.byte[4] = b4;
	stx	(_value + 0x0004)
;	../printf_large.c: 209: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;sloc3                     Allocated with name '__print_format_sloc3_1_0'
;sloc4                     Allocated with name '__print_format_sloc4_1_0'
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;left_justify              Allocated with name '__print_format_left_justify_65536_75'
;zero_padding              Allocated with name '__print_format_zero_padding_65536_75'
;prefix_sign               Allocated with name '__print_format_prefix_sign_65536_75'
;prefix_space              Allocated with name '__print_format_prefix_space_65536_75'
;signed_argument           Allocated with name '__print_format_signed_argument_65536_75'
;char_argument             Allocated with name '__print_format_char_argument_65536_75'
;long_argument             Allocated with name '__print_format_long_argument_65536_75'
;float_argument            Allocated with name '__print_format_float_argument_65536_75'
;lsd                       Allocated with name '__print_format_lsd_65536_75'
;radix                     Allocated with name '__print_format_radix_65536_75'
;width                     Allocated to registers 
;decimals                  Allocated with name '__print_format_decimals_65536_75'
;length                    Allocated with name '__print_format_length_65536_75'
;c                         Allocated to registers a 
;store                     Allocated with name '__print_format_store_262144_94'
;pstore                    Allocated with name '__print_format_pstore_262144_94'
;------------------------------------------------------------
;	../printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__print_format:
	sta	_output_char
	stx	(_output_char + 1)
;	../printf_large.c: 462: p = pvoid;
	lda	__print_format_PARM_2
	sta	_p
	lda	(__print_format_PARM_2 + 1)
	sta	(_p + 1)
;	../printf_large.c: 466: charsOutputted = 0;
	ldx	#0x00
	stx	_charsOutputted
	stx	(_charsOutputted + 1)
;	../printf_large.c: 475: while( c=*format++ )
00231$:
	lda	__print_format_PARM_3
	sta	*__print_format_sloc0_1_0
	lda	(__print_format_PARM_3 + 1)
	sta	*(__print_format_sloc0_1_0 + 1)
	ldy	#0x00
	lda	[*__print_format_sloc0_1_0],y
	tax
	lda	*__print_format_sloc0_1_0
	clc
	adc	#0x01
	sta	__print_format_PARM_3
	lda	*(__print_format_sloc0_1_0 + 1)
	adc	#0x00
	sta	(__print_format_PARM_3 + 1)
	txa
	cpx	#0x00
	bne	00627$
	jmp	00233$
00627$:
;	../printf_large.c: 477: if ( c=='%' )
	cmp	#0x25
	beq	00628$
	jmp	00229$
00628$:
;	../printf_large.c: 479: left_justify    = 0;
	sty	__print_format_left_justify_65536_75
;	../printf_large.c: 480: zero_padding    = 0;
	sty	__print_format_zero_padding_65536_75
;	../printf_large.c: 481: prefix_sign     = 0;
	sty	__print_format_prefix_sign_65536_75
;	../printf_large.c: 482: prefix_space    = 0;
	sty	__print_format_prefix_space_65536_75
;	../printf_large.c: 483: signed_argument = 0;
	sty	__print_format_signed_argument_65536_75
;	../printf_large.c: 484: char_argument   = 0;
	sty	__print_format_char_argument_65536_75
;	../printf_large.c: 485: long_argument   = 0;
	sty	__print_format_long_argument_65536_75
;	../printf_large.c: 486: float_argument  = 0;
	sty	__print_format_float_argument_65536_75
;	../printf_large.c: 487: radix           = 0;
	sty	__print_format_radix_65536_75
;	../printf_large.c: 488: width           = 0;
	sty	*__print_format_sloc0_1_0
	sty	*(__print_format_sloc0_1_0 + 1)
;	../printf_large.c: 489: decimals        = -1;
	ldx	#0xff
	stx	__print_format_decimals_65536_75
	stx	(__print_format_decimals_65536_75 + 1)
;	../printf_large.c: 491: get_conversion_spec:
	lda	__print_format_PARM_3
	sta	*__print_format_sloc1_1_0
	lda	(__print_format_PARM_3 + 1)
	sta	*(__print_format_sloc1_1_0 + 1)
00101$:
;	../printf_large.c: 493: c = *format++;
	ldy	#0x00
	lda	[*__print_format_sloc1_1_0],y
	inc	*__print_format_sloc1_1_0
	bne	00629$
	inc	*(__print_format_sloc1_1_0 + 1)
00629$:
	ldx	*__print_format_sloc1_1_0
	stx	__print_format_PARM_3
	ldx	*(__print_format_sloc1_1_0 + 1)
	stx	(__print_format_PARM_3 + 1)
;	../printf_large.c: 495: if (c=='%')
	cmp	#0x25
	bne	00103$
;	../printf_large.c: 497: OUTPUT_CHAR(c, p);
	jsr	__output_char
;	../printf_large.c: 498: continue;
	jmp	00231$
00103$:
;	../printf_large.c: 501: if (isdigit(c))
	cmp	#0x30
	bcs	00631$
	jmp	00110$
00631$:
	cmp	#0x39
	beq	00632$
	bcc	00632$
	jmp	00110$
00632$:
;	../printf_large.c: 503: if (decimals==-1)
	sta	*(__TEMP+0)
	lda	__print_format_decimals_65536_75
	cmp	#0xff
	php
	lda	*(__TEMP+0)
	plp
	bne	00107$
	sta	*(__TEMP+0)
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	php
	lda	*(__TEMP+0)
	plp
	bne	00107$
;	../printf_large.c: 505: width = 10*width + c - '0';
	ldx	*__print_format_sloc0_1_0
	stx	__mulint_PARM_2
	ldx	*(__print_format_sloc0_1_0 + 1)
	stx	(__mulint_PARM_2 + 1)
	pha
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	pla
	ldx	#0x00
	clc
	adc	*__print_format_sloc2_1_0
	pha
	txa
	adc	*(__print_format_sloc2_1_0 + 1)
	tax
	pla
	sec
	sbc	#0x30
	sta	*__print_format_sloc0_1_0
	txa
	sbc	#0x00
;	../printf_large.c: 506: if (width == 0)
	sta	*(__print_format_sloc0_1_0 + 1)
	ora	*__print_format_sloc0_1_0
	bne	00101$
;	../printf_large.c: 509: zero_padding = 1;
	ldx	#0x01
	stx	__print_format_zero_padding_65536_75
	jmp	00101$
00107$:
;	../printf_large.c: 514: decimals = 10*decimals + c - '0';
	ldx	__print_format_decimals_65536_75
	stx	__mulint_PARM_2
	ldx	(__print_format_decimals_65536_75 + 1)
	stx	(__mulint_PARM_2 + 1)
	pha
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	pla
	ldx	#0x00
	clc
	adc	*__print_format_sloc2_1_0
	pha
	txa
	adc	*(__print_format_sloc2_1_0 + 1)
	tax
	pla
	sec
	sbc	#0x30
	sta	__print_format_decimals_65536_75
	txa
	sbc	#0x00
	sta	(__print_format_decimals_65536_75 + 1)
;	../printf_large.c: 516: goto get_conversion_spec;
	jmp	00101$
00110$:
;	../printf_large.c: 519: if (c=='.')
	cmp	#0x2e
	bne	00115$
;	../printf_large.c: 521: if (decimals==-1)
	lda	__print_format_decimals_65536_75
	cmp	#0xff
	bne	00640$
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	beq	00641$
00640$:
	jmp	00101$
00641$:
;	../printf_large.c: 522: decimals=0;
	ldx	#0x00
	stx	__print_format_decimals_65536_75
	stx	(__print_format_decimals_65536_75 + 1)
;	../printf_large.c: 525: goto get_conversion_spec;
	jmp	00101$
00115$:
;	../printf_large.c: 528: if (islower(c))
	cmp	#0x61
	bcc	00117$
	cmp	#0x7a
	beq	00643$
	bcs	00117$
00643$:
;	../printf_large.c: 530: c = toupper(c);
	and	#0xdf
;	../printf_large.c: 531: lower_case = 1;
	ldx	#0x01
	stx	_lower_case
	jmp	00118$
00117$:
;	../printf_large.c: 534: lower_case = 0;
	ldx	#0x00
	stx	_lower_case
00118$:
;	../printf_large.c: 536: switch( c )
	cmp	#0x20
	bne	00645$
	jmp	00122$
00645$:
	cmp	#0x2b
	beq	00121$
	cmp	#0x2d
	beq	00120$
	cmp	#0x42
	beq	00123$
	cmp	#0x43
	bne	00649$
	jmp	00129$
00649$:
	cmp	#0x44
	bne	00650$
	jmp	00154$
00650$:
	cmp	#0x46
	bne	00651$
	jmp	00158$
00651$:
	cmp	#0x48
	bne	00652$
	jmp	00101$
00652$:
	cmp	#0x49
	bne	00653$
	jmp	00154$
00653$:
	cmp	#0x4a
	bne	00654$
	jmp	00101$
00654$:
	cmp	#0x4c
	beq	00128$
	cmp	#0x4f
	bne	00656$
	jmp	00155$
00656$:
	cmp	#0x50
	bne	00657$
	jmp	00152$
00657$:
	cmp	#0x53
	bne	00658$
	jmp	00133$
00658$:
	cmp	#0x54
	bne	00659$
	jmp	00101$
00659$:
	cmp	#0x55
	bne	00660$
	jmp	00156$
00660$:
	cmp	#0x58
	bne	00661$
	jmp	00157$
00661$:
	cmp	#0x5a
	bne	00662$
	jmp	00101$
00662$:
	jmp	00159$
;	../printf_large.c: 538: case '-':
00120$:
;	../printf_large.c: 539: left_justify = 1;
	ldx	#0x01
	stx	__print_format_left_justify_65536_75
;	../printf_large.c: 540: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 541: case '+':
00121$:
;	../printf_large.c: 542: prefix_sign = 1;
	ldx	#0x01
	stx	__print_format_prefix_sign_65536_75
;	../printf_large.c: 543: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 544: case ' ':
00122$:
;	../printf_large.c: 545: prefix_space = 1;
	ldx	#0x01
	stx	__print_format_prefix_space_65536_75
;	../printf_large.c: 546: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 547: case 'B': /* byte */
00123$:
;	../printf_large.c: 548: char_argument = 1;
	ldx	#0x01
	stx	__print_format_char_argument_65536_75
;	../printf_large.c: 549: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 556: case 'L': /* long */
00128$:
;	../printf_large.c: 557: long_argument = 1;
	ldx	#0x01
	stx	__print_format_long_argument_65536_75
;	../printf_large.c: 558: goto get_conversion_spec;
	jmp	00101$
;	../printf_large.c: 560: case 'C':
00129$:
;	../printf_large.c: 561: if( char_argument )
	lda	__print_format_char_argument_65536_75
	beq	00131$
;	../printf_large.c: 562: c = va_arg(ap,char);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x01
	bcc	00664$
	inx
00664$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x01
	bcs	00665$
	dex
00665$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	jmp	00132$
00131$:
;	../printf_large.c: 564: c = va_arg(ap,int);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x02
	bcc	00666$
	inx
00666$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x02
	bcs	00667$
	dex
00667$:
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	ldy	#0x00
	lda	[*__print_format_sloc2_1_0],y
00132$:
;	../printf_large.c: 565: OUTPUT_CHAR( c, p );
	jsr	__output_char
;	../printf_large.c: 566: break;
	jmp	00160$
;	../printf_large.c: 568: case 'S':
00133$:
;	../printf_large.c: 569: PTR = va_arg(ap,ptr_t);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x02
	bcc	00668$
	inx
00668$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x02
	bcs	00669$
	dex
00669$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	stx	(_value + 1)
	sta	_value
;	../printf_large.c: 582: length = strlen(PTR);
	jsr	_strlen
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
;	../printf_large.c: 584: if ( decimals == -1 )
	lda	__print_format_decimals_65536_75
	cmp	#0xff
	bne	00135$
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	bne	00135$
;	../printf_large.c: 586: decimals = length;
	lda	*__print_format_sloc2_1_0
	sta	__print_format_decimals_65536_75
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(__print_format_decimals_65536_75 + 1)
00135$:
;	../printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
	lda	__print_format_left_justify_65536_75
	bne	00277$
	lda	*__print_format_sloc2_1_0
	sec
	sbc	*__print_format_sloc0_1_0
	lda	*(__print_format_sloc2_1_0 + 1)
	sbc	*(__print_format_sloc0_1_0 + 1)
	bcs	00277$
;	../printf_large.c: 590: width -= length;
	lda	*__print_format_sloc0_1_0
	sec
	sbc	*__print_format_sloc2_1_0
	pha
	lda	*(__print_format_sloc0_1_0 + 1)
	sbc	*(__print_format_sloc2_1_0 + 1)
	tax
	pla
;	../printf_large.c: 591: while( width-- != 0 )
00136$:
	sta	*__print_format_sloc1_1_0
	stx	*(__print_format_sloc1_1_0 + 1)
	sec
	sbc	#0x01
	bcs	00675$
	dex
00675$:
	sta	*(__TEMP+0)
	lda	*(__print_format_sloc1_1_0 + 1)
	ora	*__print_format_sloc1_1_0
	php
	lda	*(__TEMP+0)
	plp
	beq	00312$
;	../printf_large.c: 593: OUTPUT_CHAR( ' ', p );
	pha
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	lda	#0x20
	jsr	__output_char
	pla
	tax
	pla
	jmp	00136$
;	../printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	sta	*__print_format_sloc0_1_0
	stx	*(__print_format_sloc0_1_0 + 1)
00277$:
	lda	__print_format_decimals_65536_75
	sta	*__print_format_sloc1_1_0
	lda	(__print_format_decimals_65536_75 + 1)
	sta	*(__print_format_sloc1_1_0 + 1)
00143$:
	ldx	(_value + 1)
	lda	_value
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	beq	00145$
	lda	#0x00
	sec
	sbc	*__print_format_sloc1_1_0
	lda	#0x00
	sbc	*(__print_format_sloc1_1_0 + 1)
	bvc	00679$
	bpl	00678$
	bmi	00145$
00679$:
	bpl	00145$
00678$:
	sec
	lda	*__print_format_sloc1_1_0
	sbc	#0x01
	sta	*__print_format_sloc1_1_0
	bcs	00681$
	dec	*(__print_format_sloc1_1_0 + 1)
00681$:
;	../printf_large.c: 599: OUTPUT_CHAR( c, p );
	tya
	jsr	__output_char
;	../printf_large.c: 600: PTR++;
	ldx	(_value + 1)
	lda	_value
	clc
	adc	#0x01
	bcc	00682$
	inx
00682$:
	stx	(_value + 1)
	sta	_value
	jmp	00143$
00145$:
;	../printf_large.c: 603: if ( left_justify && (length < width))
	lda	__print_format_left_justify_65536_75
	bne	00683$
	jmp	00160$
00683$:
	lda	*__print_format_sloc2_1_0
	sec
	sbc	*__print_format_sloc0_1_0
	lda	*(__print_format_sloc2_1_0 + 1)
	sbc	*(__print_format_sloc0_1_0 + 1)
	bcc	00684$
	jmp	00160$
00684$:
;	../printf_large.c: 605: width -= length;
	lda	*__print_format_sloc0_1_0
	sec
	sbc	*__print_format_sloc2_1_0
	pha
	lda	*(__print_format_sloc0_1_0 + 1)
	sbc	*(__print_format_sloc2_1_0 + 1)
	tax
	pla
;	../printf_large.c: 606: while( width-- != 0 )
00146$:
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	sec
	sbc	#0x01
	bcs	00685$
	dex
00685$:
	sta	*(__TEMP+0)
	lda	*(__print_format_sloc2_1_0 + 1)
	ora	*__print_format_sloc2_1_0
	php
	lda	*(__TEMP+0)
	plp
	bne	00686$
	jmp	00314$
00686$:
;	../printf_large.c: 608: OUTPUT_CHAR( ' ', p );
	pha
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	lda	#0x20
	jsr	__output_char
	pla
	tax
	pla
	jmp	00146$
;	../printf_large.c: 613: case 'P':
00152$:
;	../printf_large.c: 614: PTR = va_arg(ap,ptr_t);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x02
	bcc	00687$
	inx
00687$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x02
	bcs	00688$
	dex
00688$:
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	ldy	#0x01
	lda	[*__print_format_sloc2_1_0],y
	tax
	dey
	lda	[*__print_format_sloc2_1_0],y
	stx	(_value + 1)
	sta	_value
;	../printf_large.c: 663: OUTPUT_CHAR('0', p);
	lda	#0x30
	jsr	__output_char
;	../printf_large.c: 664: OUTPUT_CHAR('x', p);
	lda	#0x78
	jsr	__output_char
;	../printf_large.c: 665: OUTPUT_2DIGITS( value.byte[1] );
	lda	(_value + 0x0001)
	jsr	_output_2digits
;	../printf_large.c: 666: OUTPUT_2DIGITS( value.byte[0] );
	lda	_value
	jsr	_output_2digits
;	../printf_large.c: 668: break;
	jmp	00160$
;	../printf_large.c: 671: case 'I':
00154$:
;	../printf_large.c: 672: signed_argument = 1;
	ldx	#0x01
	stx	__print_format_signed_argument_65536_75
;	../printf_large.c: 673: radix = 10;
	ldx	#0x0a
	stx	__print_format_radix_65536_75
;	../printf_large.c: 674: break;
	jmp	00160$
;	../printf_large.c: 676: case 'O':
00155$:
;	../printf_large.c: 677: radix = 8;
	ldx	#0x08
	stx	__print_format_radix_65536_75
;	../printf_large.c: 678: break;
	jmp	00160$
;	../printf_large.c: 680: case 'U':
00156$:
;	../printf_large.c: 681: radix = 10;
	ldx	#0x0a
	stx	__print_format_radix_65536_75
;	../printf_large.c: 682: break;
	jmp	00160$
;	../printf_large.c: 684: case 'X':
00157$:
;	../printf_large.c: 685: radix = 16;
	ldx	#0x10
	stx	__print_format_radix_65536_75
;	../printf_large.c: 686: break;
	jmp	00160$
;	../printf_large.c: 688: case 'F':
00158$:
;	../printf_large.c: 689: float_argument=1;
	ldx	#0x01
	stx	__print_format_float_argument_65536_75
;	../printf_large.c: 690: break;
	jmp	00160$
;	../printf_large.c: 692: default:
00159$:
;	../printf_large.c: 694: OUTPUT_CHAR( c, p );
	jsr	__output_char
;	../printf_large.c: 877: return charsOutputted;
	jmp	00160$
;	../printf_large.c: 696: }
00314$:
	sta	*__print_format_sloc0_1_0
	stx	*(__print_format_sloc0_1_0 + 1)
00160$:
;	../printf_large.c: 698: if (float_argument)
	lda	__print_format_float_argument_65536_75
	beq	00226$
;	../printf_large.c: 700: value.f = va_arg(ap, float);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x04
	bcc	00690$
	inx
00690$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x04
	bcs	00691$
	dex
00691$:
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	ldy	#0x00
	lda	[*__print_format_sloc2_1_0],y
	sta	*__print_format_sloc3_1_0
	iny
	lda	[*__print_format_sloc2_1_0],y
	sta	*(__print_format_sloc3_1_0 + 1)
	iny
	lda	[*__print_format_sloc2_1_0],y
	sta	*(__print_format_sloc3_1_0 + 2)
	iny
	lda	[*__print_format_sloc2_1_0],y
	sta	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
;	../printf_large.c: 702: PTR="<NO FLOAT>";
	lda	#>___str_0
	sta	(_value + 1)
	lda	#___str_0
	sta	_value
;	../printf_large.c: 703: while (c=*PTR++)
00161$:
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
	ldx	*(__print_format_sloc3_1_0 + 1)
	clc
	adc	#0x01
	bcc	00692$
	inx
00692$:
	stx	(_value + 1)
	sta	_value
	ldy	#0x00
	lda	[*__print_format_sloc3_1_0],y
	bne	00693$
	jmp	00231$
00693$:
;	../printf_large.c: 705: OUTPUT_CHAR (c, p);
	jsr	__output_char
	jmp	00161$
00226$:
;	../printf_large.c: 723: else if (radix != 0)
	lda	__print_format_radix_65536_75
	bne	00694$
	jmp	00231$
00694$:
;	../printf_large.c: 728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	../printf_large.c: 731: if (char_argument)
	lda	__print_format_char_argument_65536_75
	beq	00172$
;	../printf_large.c: 733: value.l = va_arg(ap, char);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x01
	bcc	00696$
	inx
00696$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x01
	bcs	00697$
	dex
00697$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*__print_format_sloc3_1_0
	sty	*(__print_format_sloc3_1_0 + 1)
	sty	*(__print_format_sloc3_1_0 + 2)
	sty	*(__print_format_sloc3_1_0 + 3)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
;	../printf_large.c: 734: if (!signed_argument)
	lda	__print_format_signed_argument_65536_75
	beq	00698$
	jmp	00173$
00698$:
;	../printf_large.c: 736: value.l &= 0xFF;
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
	sty	*(__print_format_sloc3_1_0 + 1)
	sty	*(__print_format_sloc3_1_0 + 2)
	sty	*(__print_format_sloc3_1_0 + 3)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
	jmp	00173$
00172$:
;	../printf_large.c: 739: else if (long_argument)
	lda	__print_format_long_argument_65536_75
	beq	00169$
;	../printf_large.c: 741: value.l = va_arg(ap, long);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x04
	bcc	00700$
	inx
00700$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x04
	bcs	00701$
	dex
00701$:
	sta	*__print_format_sloc3_1_0
	stx	*(__print_format_sloc3_1_0 + 1)
	ldy	#0x03
	lda	[*__print_format_sloc3_1_0],y
	sta	*(__print_format_sloc3_1_0 + 3)
	dey
	lda	[*__print_format_sloc3_1_0],y
	sta	*(__print_format_sloc3_1_0 + 2)
	dey
	lda	[*__print_format_sloc3_1_0],y
	pha
	dey
	lda	[*__print_format_sloc3_1_0],y
	sta	*__print_format_sloc3_1_0
	pla
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
	jmp	00173$
00169$:
;	../printf_large.c: 745: value.l = va_arg(ap, int);
	lda	__print_format_PARM_4
	ldx	(__print_format_PARM_4 + 1)
	clc
	adc	#0x02
	bcc	00702$
	inx
00702$:
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	sec
	sbc	#0x02
	bcs	00703$
	dex
00703$:
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*__print_format_sloc3_1_0
	stx	*(__print_format_sloc3_1_0 + 1)
	txa
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(__print_format_sloc3_1_0 + 2)
	sta	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
;	../printf_large.c: 746: if (!signed_argument)
	lda	__print_format_signed_argument_65536_75
	bne	00173$
;	../printf_large.c: 748: value.l &= 0xFFFF;
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
	sty	*(__print_format_sloc3_1_0 + 2)
	sty	*(__print_format_sloc3_1_0 + 3)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
00173$:
;	../printf_large.c: 752: if ( signed_argument )
	lda	__print_format_signed_argument_65536_75
	beq	00178$
;	../printf_large.c: 754: if (value.l < 0)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	*(__print_format_sloc3_1_0 + 3)
	sec
	sbc	#0x00
	bvc	00707$
	bpl	00706$
	bmi	00175$
00707$:
	bpl	00175$
00706$:
;	../printf_large.c: 755: value.l = -value.l;
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	#0x00
	sec
	sbc	*__print_format_sloc3_1_0
	sta	*__print_format_sloc3_1_0
	lda	#0x00
	sbc	*(__print_format_sloc3_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	#0x00
	sbc	*(__print_format_sloc3_1_0 + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	#0x00
	sbc	*(__print_format_sloc3_1_0 + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc3_1_0
	sta	_value
	jmp	00178$
00175$:
;	../printf_large.c: 757: signed_argument = 0;
	ldx	#0x00
	stx	__print_format_signed_argument_65536_75
00178$:
;	../printf_large.c: 761: lsd = 1;
	ldx	#0x01
	stx	__print_format_lsd_65536_75
;	../printf_large.c: 763: do {
	lda	#(__print_format_store_262144_94 + 0x0005)
	sta	*__print_format_sloc3_1_0
	lda	#>(__print_format_store_262144_94 + 0x0005)
	sta	*(__print_format_sloc3_1_0 + 1)
	dex
	stx	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
00182$:
;	../printf_large.c: 764: value.byte[4] = 0;
	ldx	#0x00
	stx	(_value + 0x0004)
;	../printf_large.c: 768: calculate_digit(radix);
	lda	__print_format_radix_65536_75
	jsr	_calculate_digit
;	../printf_large.c: 770: if (!lsd)
	lda	__print_format_lsd_65536_75
	bne	00180$
;	../printf_large.c: 772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	lda	(_value + 0x0004)
	asl	a
	asl	a
	asl	a
	asl	a
	sta	*__print_format_sloc1_1_0
	lda	(_value + 0x0004)
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	*__print_format_sloc1_1_0
	sta	*__print_format_sloc1_1_0
	ldy	#0x00
	lda	[*__print_format_sloc3_1_0],y
	ora	*__print_format_sloc1_1_0
	sta	[*__print_format_sloc3_1_0],y
;	../printf_large.c: 773: pstore--;
	sec
	lda	*__print_format_sloc3_1_0
	sbc	#0x01
	sta	*__print_format_sloc3_1_0
	bcs	00181$
	dec	*(__print_format_sloc3_1_0 + 1)
	jmp	00181$
00180$:
;	../printf_large.c: 777: *pstore = value.byte[4];
	lda	(_value + 0x0004)
	ldy	#0x00
	sta	[*__print_format_sloc3_1_0],y
00181$:
;	../printf_large.c: 779: length++;
	inc	*__print_format_sloc2_1_0
	bne	00711$
	inc	*(__print_format_sloc2_1_0 + 1)
00711$:
;	../printf_large.c: 780: lsd = !lsd;
	lda	__print_format_lsd_65536_75
	eor	#0x01
	sta	__print_format_lsd_65536_75
;	../printf_large.c: 781: } while( value.ul );
	lda	(_value + 3)
	sta	*(__print_format_sloc4_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc4_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc4_1_0
	lda	*(__print_format_sloc4_1_0 + 3)
	ora	*(__print_format_sloc4_1_0 + 2)
	ora	*(__print_format_sloc4_1_0 + 1)
	ora	*__print_format_sloc4_1_0
	bne	00182$
;	../printf_large.c: 783: if (width == 0)
	lda	*__print_format_sloc3_1_0
	sta	__print_format_pstore_262144_94
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(__print_format_pstore_262144_94 + 1)
	lda	*__print_format_sloc2_1_0
	sta	__print_format_length_65536_75
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(__print_format_length_65536_75 + 1)
	lda	*(__print_format_sloc0_1_0 + 1)
	ora	*__print_format_sloc0_1_0
	bne	00186$
;	../printf_large.c: 788: width = 1;
	ldx	#0x01
	stx	*__print_format_sloc0_1_0
	dex
	stx	*(__print_format_sloc0_1_0 + 1)
00186$:
;	../printf_large.c: 792: if (!zero_padding && !left_justify)
	lda	__print_format_zero_padding_65536_75
	bne	00191$
	lda	__print_format_left_justify_65536_75
	bne	00191$
;	../printf_large.c: 794: while ( width > (unsigned char) (length+1) )
	lda	*__print_format_sloc0_1_0
	sta	*__print_format_sloc4_1_0
	lda	*(__print_format_sloc0_1_0 + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
00187$:
	ldx	__print_format_length_65536_75
	inx
	txa
	ldx	#0x00
	sec
	sbc	*__print_format_sloc4_1_0
	txa
	sbc	*(__print_format_sloc4_1_0 + 1)
	bcs	00316$
;	../printf_large.c: 796: OUTPUT_CHAR( ' ', p );
	lda	#0x20
	jsr	__output_char
;	../printf_large.c: 797: width--;
	sec
	lda	*__print_format_sloc4_1_0
	sbc	#0x01
	sta	*__print_format_sloc4_1_0
	bcs	00187$
	dec	*(__print_format_sloc4_1_0 + 1)
	jmp	00187$
00316$:
	lda	*__print_format_sloc4_1_0
	sta	*__print_format_sloc0_1_0
	lda	*(__print_format_sloc4_1_0 + 1)
	sta	*(__print_format_sloc0_1_0 + 1)
00191$:
;	../printf_large.c: 801: if (signed_argument) // this now means the original value was negative
	lda	__print_format_signed_argument_65536_75
	beq	00201$
;	../printf_large.c: 803: OUTPUT_CHAR( '-', p );
	lda	#0x2d
	jsr	__output_char
;	../printf_large.c: 805: width--;
	sec
	lda	*__print_format_sloc0_1_0
	sbc	#0x01
	sta	*__print_format_sloc0_1_0
	bcs	00202$
	dec	*(__print_format_sloc0_1_0 + 1)
	jmp	00202$
00201$:
;	../printf_large.c: 807: else if (length != 0)
	lda	(__print_format_length_65536_75 + 1)
	ora	__print_format_length_65536_75
	beq	00202$
;	../printf_large.c: 810: if (prefix_sign)
	lda	__print_format_prefix_sign_65536_75
	beq	00196$
;	../printf_large.c: 812: OUTPUT_CHAR( '+', p );
	lda	#0x2b
	jsr	__output_char
;	../printf_large.c: 814: width--;
	sec
	lda	*__print_format_sloc0_1_0
	sbc	#0x01
	sta	*__print_format_sloc0_1_0
	bcs	00202$
	dec	*(__print_format_sloc0_1_0 + 1)
	jmp	00202$
00196$:
;	../printf_large.c: 816: else if (prefix_space)
	lda	__print_format_prefix_space_65536_75
	beq	00202$
;	../printf_large.c: 818: OUTPUT_CHAR( ' ', p );
	lda	#0x20
	jsr	__output_char
;	../printf_large.c: 820: width--;
	sec
	lda	*__print_format_sloc0_1_0
	sbc	#0x01
	sta	*__print_format_sloc0_1_0
	bcs	00724$
	dec	*(__print_format_sloc0_1_0 + 1)
00724$:
00202$:
;	../printf_large.c: 825: if (!left_justify)
	lda	__print_format_left_justify_65536_75
	bne	00210$
;	../printf_large.c: 827: while ( width-- > length )
	lda	*__print_format_sloc0_1_0
	sta	*__print_format_sloc4_1_0
	lda	*(__print_format_sloc0_1_0 + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
00203$:
	lda	*__print_format_sloc4_1_0
	sta	*__print_format_sloc3_1_0
	lda	*(__print_format_sloc4_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	sec
	lda	*__print_format_sloc4_1_0
	sbc	#0x01
	sta	*__print_format_sloc4_1_0
	bcs	00726$
	dec	*(__print_format_sloc4_1_0 + 1)
00726$:
	lda	__print_format_length_65536_75
	sec
	sbc	*__print_format_sloc3_1_0
	lda	(__print_format_length_65536_75 + 1)
	sbc	*(__print_format_sloc3_1_0 + 1)
	bcs	00317$
;	../printf_large.c: 829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	lda	__print_format_zero_padding_65536_75
	beq	00236$
	lda	#0x30
	ldx	#0x00
	jmp	00237$
00236$:
	lda	#0x20
	ldx	#0x00
00237$:
	jsr	__output_char
	jmp	00203$
00210$:
;	../printf_large.c: 835: if (width > length)
	lda	__print_format_length_65536_75
	sec
	sbc	*__print_format_sloc0_1_0
	lda	(__print_format_length_65536_75 + 1)
	sbc	*(__print_format_sloc0_1_0 + 1)
	bcs	00207$
;	../printf_large.c: 836: width -= length;
	lda	*__print_format_sloc0_1_0
	sec
	sbc	__print_format_length_65536_75
	sta	*__print_format_sloc3_1_0
	lda	*(__print_format_sloc0_1_0 + 1)
	sbc	(__print_format_length_65536_75 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	jmp	00309$
00207$:
;	../printf_large.c: 838: width = 0;
	ldx	#0x00
	stx	*__print_format_sloc3_1_0
	stx	*(__print_format_sloc3_1_0 + 1)
;	../printf_large.c: 877: return charsOutputted;
	jmp	00309$
;	../printf_large.c: 842: while( length-- )
00317$:
	lda	*__print_format_sloc4_1_0
	sta	*__print_format_sloc3_1_0
	lda	*(__print_format_sloc4_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
00309$:
	lda	__print_format_pstore_262144_94
	sta	*__print_format_sloc4_1_0
	lda	(__print_format_pstore_262144_94 + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
	lda	__print_format_length_65536_75
	sta	*__print_format_sloc2_1_0
	lda	(__print_format_length_65536_75 + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
00215$:
	lda	*__print_format_sloc2_1_0
	sta	*__print_format_sloc1_1_0
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	*(__print_format_sloc1_1_0 + 1)
	sec
	lda	*__print_format_sloc2_1_0
	sbc	#0x01
	sta	*__print_format_sloc2_1_0
	bcs	00730$
	dec	*(__print_format_sloc2_1_0 + 1)
00730$:
	lda	*(__print_format_sloc1_1_0 + 1)
	ora	*__print_format_sloc1_1_0
	beq	00217$
;	../printf_large.c: 844: lsd = !lsd;
	lda	__print_format_lsd_65536_75
	eor	#0x01
;	../printf_large.c: 845: if (!lsd)
	sta	__print_format_lsd_65536_75
	bne	00213$
;	../printf_large.c: 847: pstore++;
	inc	*__print_format_sloc4_1_0
	bne	00733$
	inc	*(__print_format_sloc4_1_0 + 1)
00733$:
;	../printf_large.c: 848: value.byte[4] = *pstore >> 4;
	ldy	#0x00
	lda	[*__print_format_sloc4_1_0],y
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	sta	(_value + 0x0004)
	jmp	00214$
00213$:
;	../printf_large.c: 852: value.byte[4] = *pstore & 0x0F;
	ldy	#0x00
	lda	[*__print_format_sloc4_1_0],y
	and	#0x0f
	sta	(_value + 0x0004)
00214$:
;	../printf_large.c: 858: output_digit( value.byte[4] );
	lda	(_value + 0x0004)
	jsr	_output_digit
	jmp	00215$
00217$:
;	../printf_large.c: 861: if (left_justify)
	lda	__print_format_left_justify_65536_75
	bne	00734$
	jmp	00231$
00734$:
;	../printf_large.c: 863: while (width-- > 0)
	lda	*__print_format_sloc3_1_0
	sta	*__print_format_sloc4_1_0
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
00218$:
	lda	*__print_format_sloc4_1_0
	sta	*__print_format_sloc3_1_0
	lda	*(__print_format_sloc4_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	sec
	lda	*__print_format_sloc4_1_0
	sbc	#0x01
	sta	*__print_format_sloc4_1_0
	bcs	00735$
	dec	*(__print_format_sloc4_1_0 + 1)
00735$:
	lda	*(__print_format_sloc3_1_0 + 1)
	ora	*__print_format_sloc3_1_0
	bne	00736$
	jmp	00231$
00736$:
;	../printf_large.c: 865: OUTPUT_CHAR(' ', p);
	lda	#0x20
	jsr	__output_char
	jmp	00218$
00229$:
;	../printf_large.c: 873: OUTPUT_CHAR( c, p );
	jsr	__output_char
	jmp	00231$
00233$:
;	../printf_large.c: 877: return charsOutputted;
	ldx	(_charsOutputted + 1)
	lda	_charsOutputted
;	../printf_large.c: 878: }
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
