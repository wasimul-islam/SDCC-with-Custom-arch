;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module printf_large
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
__print_format_store_262144_94:
	.ds 6
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c                         Allocated to registers x 
;------------------------------------------------------------
;../printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__output_char:
	tax
;../printf_large.c:107: output_char( c, p );
	lda	(_p + 1)
	psha
	lda	_p
	psha
	bsr	00104$
	bra	00103$
00104$:
	lda	(_output_char + 1)
	psha
	lda	_output_char
	psha
	txa
	rts
00103$:
	ais	#2
;../printf_large.c:108: charsOutputted++;
	ldhx	_charsOutputted
	aix	#1
	sthx	_charsOutputted
;../printf_large.c:109: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers a 
;n                         Allocated to registers a 
;------------------------------------------------------------
;../printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
;../printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	add	#0x30
;../printf_large.c:134: if (c > (unsigned char)'9')
	cmp	#0x39
	bls	00104$
;../printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	add	#0x07
;../printf_large.c:137: if (lower_case)
	ldx	_lower_case
	beq	00104$
;../printf_large.c:138: c = tolower(c);
	ora	#0x20
00104$:
;../printf_large.c:140: _output_char( c );
;../printf_large.c:141: }
	jmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers x 
;------------------------------------------------------------
;../printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_2digits:
	tax
;../printf_large.c:159: output_digit( b>>4   );
	txa
	nsa	
	and	#0x0f
	pshx
	jsr	_output_digit
	pulx
;../printf_large.c:160: output_digit( b&0x0F );
	txa
	and	#0x0f
;../printf_large.c:161: }
	jmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_65536_70'
;ul                        Allocated with name '_calculate_digit_ul_65536_71'
;b4                        Allocated with name '_calculate_digit_b4_65536_71'
;i                         Allocated to registers x 
;------------------------------------------------------------
;../printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calculate_digit:
	sta	_calculate_digit_radix_65536_70
;../printf_large.c:191: register unsigned long ul = value.ul;
	lda	_value
	sta	*_calculate_digit_ul_65536_71
	lda	(_value + 1)
	sta	*(_calculate_digit_ul_65536_71 + 1)
	lda	(_value + 2)
	sta	*(_calculate_digit_ul_65536_71 + 2)
	lda	(_value + 3)
	sta	*(_calculate_digit_ul_65536_71 + 3)
;../printf_large.c:192: register unsigned char b4 = value.byte[4];
	lda	(_value + 0x0004)
;../printf_large.c:195: do
	ldx	#0x20
00103$:
;../printf_large.c:197: b4 = (b4 << 1);
	lsla	
	sta	*_calculate_digit_b4_65536_71
;../printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	lda	*_calculate_digit_ul_65536_71
	rola
	clra
	rola
	ora	*_calculate_digit_b4_65536_71
;../printf_large.c:199: ul <<= 1;
	psha
	pshx
	lda	*(_calculate_digit_ul_65536_71 + 3)
	ldx	*(_calculate_digit_ul_65536_71 + 2)
	lsla
	rolx
	sta	*(_calculate_digit_ul_65536_71 + 3)
	stx	*(_calculate_digit_ul_65536_71 + 2)
	lda	*(_calculate_digit_ul_65536_71 + 1)
	ldx	*_calculate_digit_ul_65536_71
	rola
	rolx
	sta	*(_calculate_digit_ul_65536_71 + 1)
	stx	*_calculate_digit_ul_65536_71
	pulx
	pula
;../printf_large.c:201: if (radix <= b4 )
	cmp	_calculate_digit_radix_65536_70
	bcs	00104$
;../printf_large.c:203: b4 -= radix;
	sub	_calculate_digit_radix_65536_70
;../printf_large.c:204: ul |= 1;
	bset	#0,*(_calculate_digit_ul_65536_71 + 3)
00104$:
;../printf_large.c:206: } while (--i);
	decx
	tstx
	bne	00103$
;../printf_large.c:207: value.ul = ul;
	ldx	*_calculate_digit_ul_65536_71
	stx	_value
	psha
	lda	*(_calculate_digit_ul_65536_71 + 1)
	sta	(_value + 1)
	lda	*(_calculate_digit_ul_65536_71 + 2)
	sta	(_value + 2)
	lda	*(_calculate_digit_ul_65536_71 + 3)
	sta	(_value + 3)
	pula
;../printf_large.c:208: value.byte[4] = b4;
	sta	(_value + 0x0004)
;../printf_large.c:209: }
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
;length                    Allocated to registers 
;c                         Allocated to registers a 
;store                     Allocated with name '__print_format_store_262144_94'
;pstore                    Allocated to registers 
;------------------------------------------------------------
;../printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__print_format:
	sta	(_output_char + 1)
	stx	_output_char
;../printf_large.c:462: p = pvoid;
	ldhx	__print_format_PARM_2
	sthx	_p
;../printf_large.c:466: charsOutputted = 0;
	clrh
	clrx
	sthx	_charsOutputted
;../printf_large.c:475: while( c=*format++ )
00231$:
	ldhx	__print_format_PARM_3
	lda	,x
	aix	#1
	sthx	__print_format_PARM_3
	tax
	tsta
	bne	00627$
	jmp	00233$
00627$:
;../printf_large.c:477: if ( c=='%' )
	cpx	#0x25
	beq	00628$
	jmp	00229$
00628$:
;../printf_large.c:479: left_justify    = 0;
	clra
	sta	__print_format_left_justify_65536_75
;../printf_large.c:480: zero_padding    = 0;
	sta	__print_format_zero_padding_65536_75
;../printf_large.c:481: prefix_sign     = 0;
	sta	__print_format_prefix_sign_65536_75
;../printf_large.c:482: prefix_space    = 0;
	sta	__print_format_prefix_space_65536_75
;../printf_large.c:483: signed_argument = 0;
	sta	__print_format_signed_argument_65536_75
;../printf_large.c:484: char_argument   = 0;
	sta	__print_format_char_argument_65536_75
;../printf_large.c:485: long_argument   = 0;
	sta	__print_format_long_argument_65536_75
;../printf_large.c:486: float_argument  = 0;
	sta	__print_format_float_argument_65536_75
;../printf_large.c:487: radix           = 0;
	sta	__print_format_radix_65536_75
;../printf_large.c:488: width           = 0;
	clrh
	tax
	sthx	*__print_format_sloc0_1_0
;../printf_large.c:489: decimals        = -1;
	aix	#-1
	sthx	__print_format_decimals_65536_75
;../printf_large.c:491: get_conversion_spec:
	ldhx	__print_format_PARM_3
	sthx	*__print_format_sloc1_1_0
00101$:
;../printf_large.c:493: c = *format++;
	ldhx	*__print_format_sloc1_1_0
	lda	,x
	aix	#1
	sthx	*__print_format_sloc1_1_0
	ldx	*__print_format_sloc1_1_0
	stx	__print_format_PARM_3
	psha
	lda	*(__print_format_sloc1_1_0 + 1)
	sta	(__print_format_PARM_3 + 1)
	pula
;../printf_large.c:495: if (c=='%')
	cmp	#0x25
	bne	00103$
;../printf_large.c:497: OUTPUT_CHAR(c, p);
	jsr	__output_char
;../printf_large.c:498: continue;
	bra	00231$
00103$:
;../printf_large.c:501: if (isdigit(c))
	cmp	#0x30
	bcs	00110$
	cmp	#0x39
	bhi	00110$
;../printf_large.c:503: if (decimals==-1)
	psha
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	pula
	bne	00632$
	psha
	lda	__print_format_decimals_65536_75
	cmp	#0xff
	pula
	beq	00633$
00632$:
	bra	00107$
00633$:
;../printf_large.c:505: width = 10*width + c - '0';
	ldx	*__print_format_sloc0_1_0
	stx	__mulint_PARM_2
	psha
	lda	*(__print_format_sloc0_1_0 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	#0x0a
	clrx
	jsr	__mulint
	sta	*(__print_format_sloc2_1_0 + 1)
	stx	*__print_format_sloc2_1_0
	pula
	clrx
	add	*(__print_format_sloc2_1_0 + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	txa
	adc	*__print_format_sloc2_1_0
	sta	*__print_format_sloc2_1_0
	ldhx	*__print_format_sloc2_1_0
	aix	#-48
	sthx	*__print_format_sloc0_1_0
;../printf_large.c:506: if (width == 0)
	lda	*(__print_format_sloc0_1_0 + 1)
	ora	*__print_format_sloc0_1_0
	bne	00101$
;../printf_large.c:509: zero_padding = 1;
	lda	#0x01
	sta	__print_format_zero_padding_65536_75
	bra	00101$
00107$:
;../printf_large.c:514: decimals = 10*decimals + c - '0';
	ldhx	__print_format_decimals_65536_75
	sthx	__mulint_PARM_2
	psha
	lda	#0x0a
	clrx
	jsr	__mulint
	sta	*(__print_format_sloc2_1_0 + 1)
	stx	*__print_format_sloc2_1_0
	pula
	clrx
	add	*(__print_format_sloc2_1_0 + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	txa
	adc	*__print_format_sloc2_1_0
	sta	*__print_format_sloc2_1_0
	ldhx	*__print_format_sloc2_1_0
	aix	#-48
	sthx	__print_format_decimals_65536_75
;../printf_large.c:516: goto get_conversion_spec;
	jmp	00101$
00110$:
;../printf_large.c:519: if (c=='.')
	cmp	#0x2e
	bne	00115$
;../printf_large.c:521: if (decimals==-1)
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	bne	00636$
	lda	__print_format_decimals_65536_75
	cbeqa	#0xff,00637$
00636$:
	jmp	00101$
00637$:
;../printf_large.c:522: decimals=0;
	clrh
	clrx
	sthx	__print_format_decimals_65536_75
;../printf_large.c:525: goto get_conversion_spec;
	jmp	00101$
00115$:
;../printf_large.c:528: if (islower(c))
	cmp	#0x61
	bcs	00117$
	cmp	#0x7a
	bhi	00117$
;../printf_large.c:530: c = toupper(c);
	and	#0xdf
;../printf_large.c:531: lower_case = 1;
	ldx	#0x01
	stx	_lower_case
	bra	00118$
00117$:
;../printf_large.c:534: lower_case = 0;
	clrx
	stx	_lower_case
00118$:
;../printf_large.c:536: switch( c )
	cmp	#0x20
	bne	00640$
	bra	00122$
00640$:
	cmp	#0x2b
	bne	00641$
	bra	00121$
00641$:
	cbeqa	#0x2d,00120$
	cmp	#0x42
	bne	00643$
	bra	00123$
00643$:
	cmp	#0x43
	bne	00644$
	jmp	00129$
00644$:
	cmp	#0x44
	bne	00645$
	jmp	00154$
00645$:
	cmp	#0x46
	bne	00646$
	jmp	00158$
00646$:
	cmp	#0x48
	bne	00647$
	jmp	00101$
00647$:
	cmp	#0x49
	bne	00648$
	jmp	00154$
00648$:
	cmp	#0x4a
	bne	00649$
	jmp	00101$
00649$:
	cbeqa	#0x4c,00128$
	cmp	#0x4f
	bne	00651$
	jmp	00155$
00651$:
	cmp	#0x50
	bne	00652$
	jmp	00152$
00652$:
	cbeqa	#0x53,00133$
	cmp	#0x54
	bne	00654$
	jmp	00101$
00654$:
	cmp	#0x55
	bne	00655$
	jmp	00156$
00655$:
	cmp	#0x58
	bne	00656$
	jmp	00157$
00656$:
	cmp	#0x5a
	bne	00657$
	jmp	00101$
00657$:
	jmp	00159$
;../printf_large.c:538: case '-':
00120$:
;../printf_large.c:539: left_justify = 1;
	lda	#0x01
	sta	__print_format_left_justify_65536_75
;../printf_large.c:540: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:541: case '+':
00121$:
;../printf_large.c:542: prefix_sign = 1;
	lda	#0x01
	sta	__print_format_prefix_sign_65536_75
;../printf_large.c:543: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:544: case ' ':
00122$:
;../printf_large.c:545: prefix_space = 1;
	lda	#0x01
	sta	__print_format_prefix_space_65536_75
;../printf_large.c:546: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:547: case 'B': /* byte */
00123$:
;../printf_large.c:548: char_argument = 1;
	lda	#0x01
	sta	__print_format_char_argument_65536_75
;../printf_large.c:549: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:556: case 'L': /* long */
00128$:
;../printf_large.c:557: long_argument = 1;
	lda	#0x01
	sta	__print_format_long_argument_65536_75
;../printf_large.c:558: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:560: case 'C':
00129$:
;../printf_large.c:561: if( char_argument )
	lda	__print_format_char_argument_65536_75
	beq	00131$
;../printf_large.c:562: c = va_arg(ap,char);
	ldhx	__print_format_PARM_4
	aix	#1
	sthx	__print_format_PARM_4
	aix	#-1
	lda	,x
	bra	00132$
00131$:
;../printf_large.c:564: c = va_arg(ap,int);
	ldhx	__print_format_PARM_4
	aix	#2
	sthx	__print_format_PARM_4
	aix	#-2
	lda	1,x
00132$:
;../printf_large.c:565: OUTPUT_CHAR( c, p );
	jsr	__output_char
;../printf_large.c:566: break;
	jmp	00160$
;../printf_large.c:568: case 'S':
00133$:
;../printf_large.c:569: PTR = va_arg(ap,ptr_t);
	ldhx	__print_format_PARM_4
	aix	#2
	sthx	__print_format_PARM_4
	aix	#-2
	ldhx	,x
	sthx	_value
;../printf_large.c:582: length = strlen(PTR);
	txa
	pshh
	pulx
	jsr	_strlen
	sta	*(__print_format_sloc2_1_0 + 1)
	stx	*__print_format_sloc2_1_0
;../printf_large.c:584: if ( decimals == -1 )
	lda	(__print_format_decimals_65536_75 + 1)
	cmp	#0xff
	bne	00659$
	lda	__print_format_decimals_65536_75
	cbeqa	#0xff,00660$
00659$:
	bra	00135$
00660$:
;../printf_large.c:586: decimals = length;
	lda	*__print_format_sloc2_1_0
	sta	__print_format_decimals_65536_75
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(__print_format_decimals_65536_75 + 1)
00135$:
;../printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	lda	__print_format_left_justify_65536_75
	bne	00277$
	ldhx	*__print_format_sloc2_1_0
	cphx	*__print_format_sloc0_1_0
	bcc	00277$
;../printf_large.c:590: width -= length;
	lda	*(__print_format_sloc0_1_0 + 1)
	sub	*(__print_format_sloc2_1_0 + 1)
	tax
	lda	*__print_format_sloc0_1_0
	sbc	*__print_format_sloc2_1_0
	psha
	pulh
;../printf_large.c:591: while( width-- != 0 )
00136$:
	sthx	*__print_format_sloc1_1_0
	aix	#-1
	lda	*(__print_format_sloc1_1_0 + 1)
	ora	*__print_format_sloc1_1_0
	beq	00312$
;../printf_large.c:593: OUTPUT_CHAR( ' ', p );
	pshx
	pshh
	lda	#0x20
	jsr	__output_char
	pulh
	pulx
	bra	00136$
;../printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	sthx	*__print_format_sloc0_1_0
00277$:
	ldhx	__print_format_decimals_65536_75
	sthx	*__print_format_sloc1_1_0
00143$:
	ldhx	_value
	lda	,x
	tsta
	beq	00145$
	ldhx	*__print_format_sloc1_1_0
	cphx	#0x0000
	ble	00145$
	ldhx	*__print_format_sloc1_1_0
	aix	#-1
	sthx	*__print_format_sloc1_1_0
;../printf_large.c:599: OUTPUT_CHAR( c, p );
	jsr	__output_char
;../printf_large.c:600: PTR++;
	ldhx	_value
	aix	#1
	sthx	_value
	bra	00143$
00145$:
;../printf_large.c:603: if ( left_justify && (length < width))
	lda	__print_format_left_justify_65536_75
	bne	00666$
	bra	00160$
00666$:
	ldhx	*__print_format_sloc2_1_0
	cphx	*__print_format_sloc0_1_0
	bcc	00160$
;../printf_large.c:605: width -= length;
	lda	*(__print_format_sloc0_1_0 + 1)
	sub	*(__print_format_sloc2_1_0 + 1)
	tax
	lda	*__print_format_sloc0_1_0
	sbc	*__print_format_sloc2_1_0
	psha
	pulh
;../printf_large.c:606: while( width-- != 0 )
00146$:
	sthx	*__print_format_sloc2_1_0
	aix	#-1
	lda	*(__print_format_sloc2_1_0 + 1)
	ora	*__print_format_sloc2_1_0
	beq	00314$
;../printf_large.c:608: OUTPUT_CHAR( ' ', p );
	pshx
	pshh
	lda	#0x20
	jsr	__output_char
	pulh
	pulx
	bra	00146$
;../printf_large.c:613: case 'P':
00152$:
;../printf_large.c:614: PTR = va_arg(ap,ptr_t);
	ldhx	__print_format_PARM_4
	aix	#2
	sthx	__print_format_PARM_4
	aix	#-2
	ldhx	,x
	sthx	_value
;../printf_large.c:658: OUTPUT_CHAR('0', p);
	lda	#0x30
	jsr	__output_char
;../printf_large.c:659: OUTPUT_CHAR('x', p);
	lda	#0x78
	jsr	__output_char
;../printf_large.c:660: OUTPUT_2DIGITS( value.byte[0] );
	lda	_value
	jsr	_output_2digits
;../printf_large.c:661: OUTPUT_2DIGITS( value.byte[1] );
	lda	(_value + 0x0001)
	jsr	_output_2digits
;../printf_large.c:668: break;
	bra	00160$
;../printf_large.c:671: case 'I':
00154$:
;../printf_large.c:672: signed_argument = 1;
	lda	#0x01
	sta	__print_format_signed_argument_65536_75
;../printf_large.c:673: radix = 10;
	lda	#0x0a
	sta	__print_format_radix_65536_75
;../printf_large.c:674: break;
	bra	00160$
;../printf_large.c:676: case 'O':
00155$:
;../printf_large.c:677: radix = 8;
	lda	#0x08
	sta	__print_format_radix_65536_75
;../printf_large.c:678: break;
	bra	00160$
;../printf_large.c:680: case 'U':
00156$:
;../printf_large.c:681: radix = 10;
	lda	#0x0a
	sta	__print_format_radix_65536_75
;../printf_large.c:682: break;
	bra	00160$
;../printf_large.c:684: case 'X':
00157$:
;../printf_large.c:685: radix = 16;
	lda	#0x10
	sta	__print_format_radix_65536_75
;../printf_large.c:686: break;
	bra	00160$
;../printf_large.c:688: case 'F':
00158$:
;../printf_large.c:689: float_argument=1;
	lda	#0x01
	sta	__print_format_float_argument_65536_75
;../printf_large.c:690: break;
	bra	00160$
;../printf_large.c:692: default:
00159$:
;../printf_large.c:694: OUTPUT_CHAR( c, p );
	jsr	__output_char
;../printf_large.c:877: return charsOutputted;
	bra	00160$
;../printf_large.c:696: }
00314$:
	sthx	*__print_format_sloc0_1_0
00160$:
;../printf_large.c:698: if (float_argument)
	lda	__print_format_float_argument_65536_75
	beq	00226$
;../printf_large.c:700: value.f = va_arg(ap, float);
	ldhx	__print_format_PARM_4
	aix	#4
	sthx	__print_format_PARM_4
	aix	#-4
	lda	,x
	sta	*__print_format_sloc3_1_0
	lda	1,x
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	2,x
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	3,x
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:702: PTR="<NO FLOAT>";
	lda	#>___str_0
	sta	_value
	lda	#___str_0
	sta	(_value + 1)
;../printf_large.c:703: while (c=*PTR++)
00161$:
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	ldhx	*__print_format_sloc3_1_0
	aix	#1
	sthx	_value
	ldhx	*__print_format_sloc3_1_0
	lda	,x
	tsta
	bne	00670$
	jmp	00231$
00670$:
;../printf_large.c:705: OUTPUT_CHAR (c, p);
	jsr	__output_char
	bra	00161$
00226$:
;../printf_large.c:723: else if (radix != 0)
	lda	__print_format_radix_65536_75
	bne	00671$
	jmp	00231$
00671$:
;../printf_large.c:728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;../printf_large.c:731: if (char_argument)
	lda	__print_format_char_argument_65536_75
	beq	00172$
;../printf_large.c:733: value.l = va_arg(ap, char);
	ldhx	__print_format_PARM_4
	aix	#1
	sthx	__print_format_PARM_4
	aix	#-1
	lda	,x
	sta	*(__print_format_sloc3_1_0 + 3)
	mov	#0x00,*(__print_format_sloc3_1_0 + 2)
	mov	#0x00,*(__print_format_sloc3_1_0 + 1)
	mov	#0x00,*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:734: if (!signed_argument)
	lda	__print_format_signed_argument_65536_75
	beq	00673$
	jmp	00173$
00673$:
;../printf_large.c:736: value.l &= 0xFF;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	mov	#0x00,*(__print_format_sloc3_1_0 + 2)
	mov	#0x00,*(__print_format_sloc3_1_0 + 1)
	mov	#0x00,*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	jmp	00173$
00172$:
;../printf_large.c:739: else if (long_argument)
	lda	__print_format_long_argument_65536_75
	beq	00169$
;../printf_large.c:741: value.l = va_arg(ap, long);
	ldhx	__print_format_PARM_4
	aix	#4
	sthx	__print_format_PARM_4
	aix	#-4
	lda	,x
	sta	*__print_format_sloc3_1_0
	lda	1,x
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	2,x
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	3,x
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	bra	00173$
00169$:
;../printf_large.c:745: value.l = va_arg(ap, int);
	ldhx	__print_format_PARM_4
	aix	#2
	sthx	__print_format_PARM_4
	aix	#-2
	ldhx	,x
	stx	*(__print_format_sloc3_1_0 + 3)
	pshh
	pula
	sta	*(__print_format_sloc3_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(__print_format_sloc3_1_0 + 1)
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:746: if (!signed_argument)
	lda	__print_format_signed_argument_65536_75
	bne	00173$
;../printf_large.c:748: value.l &= 0xFFFF;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	mov	#0x00,*(__print_format_sloc3_1_0 + 1)
	mov	#0x00,*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
00173$:
;../printf_large.c:752: if ( signed_argument )
	lda	__print_format_signed_argument_65536_75
	beq	00178$
;../printf_large.c:754: if (value.l < 0)
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sub	#0x00
	bge	00175$
;../printf_large.c:755: value.l = -value.l;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	clra
	sub	*(__print_format_sloc3_1_0 + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	clra
	sbc	*(__print_format_sloc3_1_0 + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	clra
	sbc	*(__print_format_sloc3_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	clra
	sbc	*__print_format_sloc3_1_0
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	bra	00178$
00175$:
;../printf_large.c:757: signed_argument = 0;
	clra
	sta	__print_format_signed_argument_65536_75
00178$:
;../printf_large.c:761: lsd = 1;
	lda	#0x01
	sta	__print_format_lsd_65536_75
;../printf_large.c:763: do {
	ldhx	#(__print_format_store_262144_94 + 0x0005)
	sthx	*__print_format_sloc3_1_0
	clrh
	clrx
	sthx	*__print_format_sloc2_1_0
00182$:
;../printf_large.c:764: value.byte[4] = 0;
	clra
	sta	(_value + 0x0004)
;../printf_large.c:768: calculate_digit(radix);
	lda	__print_format_radix_65536_75
	jsr	_calculate_digit
;../printf_large.c:770: if (!lsd)
	lda	__print_format_lsd_65536_75
	bne	00180$
;../printf_large.c:772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	lda	(_value + 0x0004)
	nsa	
	and	#0xf0
	sta	*__print_format_sloc1_1_0
	lda	(_value + 0x0004)
	nsa	
	and	#0x0f
	ora	*__print_format_sloc1_1_0
	ldhx	*__print_format_sloc3_1_0
	ldx	,x
	stx	*__print_format_sloc1_1_0
	ora	*__print_format_sloc1_1_0
	ldhx	*__print_format_sloc3_1_0
	sta	,x
;../printf_large.c:773: pstore--;
	ldhx	*__print_format_sloc3_1_0
	aix	#-1
	sthx	*__print_format_sloc3_1_0
	bra	00181$
00180$:
;../printf_large.c:777: *pstore = value.byte[4];
	lda	(_value + 0x0004)
	ldhx	*__print_format_sloc3_1_0
	sta	,x
00181$:
;../printf_large.c:779: length++;
	ldhx	*__print_format_sloc2_1_0
	aix	#1
	sthx	*__print_format_sloc2_1_0
;../printf_large.c:780: lsd = !lsd;
	lda	__print_format_lsd_65536_75
	eor	#0x01
	sta	__print_format_lsd_65536_75
;../printf_large.c:781: } while( value.ul );
	lda	_value
	sta	*__print_format_sloc4_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc4_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc4_1_0 + 3)
	lda	*__print_format_sloc4_1_0
	ora	*(__print_format_sloc4_1_0 + 1)
	ora	*(__print_format_sloc4_1_0 + 2)
	ora	*(__print_format_sloc4_1_0 + 3)
	bne	00182$
;../printf_large.c:783: if (width == 0)
	mov	*__print_format_sloc3_1_0,*__print_format_sloc4_1_0
	mov	*(__print_format_sloc3_1_0 + 1),*(__print_format_sloc4_1_0 + 1)
	mov	*__print_format_sloc2_1_0,*__print_format_sloc3_1_0
	mov	*(__print_format_sloc2_1_0 + 1),*(__print_format_sloc3_1_0 + 1)
	lda	*(__print_format_sloc0_1_0 + 1)
	ora	*__print_format_sloc0_1_0
	bne	00186$
;../printf_large.c:788: width = 1;
	ldhx	#0x0001
	sthx	*__print_format_sloc0_1_0
00186$:
;../printf_large.c:792: if (!zero_padding && !left_justify)
	lda	__print_format_zero_padding_65536_75
	bne	00191$
	lda	__print_format_left_justify_65536_75
	bne	00191$
;../printf_large.c:794: while ( width > (unsigned char) (length+1) )
	ldhx	*__print_format_sloc0_1_0
00187$:
	lda	*(__print_format_sloc3_1_0 + 1)
	inca
	sta	*(__print_format_sloc2_1_0 + 1)
	mov	#0x00,*__print_format_sloc2_1_0
	cphx	*__print_format_sloc2_1_0
	bls	00316$
;../printf_large.c:796: OUTPUT_CHAR( ' ', p );
	pshx
	pshh
	lda	#0x20
	jsr	__output_char
	pulh
	pulx
;../printf_large.c:797: width--;
	aix	#-1
	bra	00187$
00316$:
	sthx	*__print_format_sloc0_1_0
00191$:
;../printf_large.c:801: if (signed_argument) // this now means the original value was negative
	lda	__print_format_signed_argument_65536_75
	beq	00201$
;../printf_large.c:803: OUTPUT_CHAR( '-', p );
	lda	#0x2d
	jsr	__output_char
;../printf_large.c:805: width--;
	ldhx	*__print_format_sloc0_1_0
	aix	#-1
	sthx	*__print_format_sloc0_1_0
	bra	00202$
00201$:
;../printf_large.c:807: else if (length != 0)
	lda	*(__print_format_sloc3_1_0 + 1)
	ora	*__print_format_sloc3_1_0
	beq	00202$
;../printf_large.c:810: if (prefix_sign)
	lda	__print_format_prefix_sign_65536_75
	beq	00196$
;../printf_large.c:812: OUTPUT_CHAR( '+', p );
	lda	#0x2b
	jsr	__output_char
;../printf_large.c:814: width--;
	ldhx	*__print_format_sloc0_1_0
	aix	#-1
	sthx	*__print_format_sloc0_1_0
	bra	00202$
00196$:
;../printf_large.c:816: else if (prefix_space)
	lda	__print_format_prefix_space_65536_75
	beq	00202$
;../printf_large.c:818: OUTPUT_CHAR( ' ', p );
	lda	#0x20
	jsr	__output_char
;../printf_large.c:820: width--;
	ldhx	*__print_format_sloc0_1_0
	aix	#-1
	sthx	*__print_format_sloc0_1_0
00202$:
;../printf_large.c:825: if (!left_justify)
	lda	__print_format_left_justify_65536_75
	bne	00210$
;../printf_large.c:827: while ( width-- > length )
	mov	*__print_format_sloc0_1_0,*__print_format_sloc2_1_0
	mov	*(__print_format_sloc0_1_0 + 1),*(__print_format_sloc2_1_0 + 1)
00203$:
	ldhx	*__print_format_sloc2_1_0
	pshx
	pshh
	ldhx	*__print_format_sloc2_1_0
	aix	#-1
	sthx	*__print_format_sloc2_1_0
	pulh
	pulx
	cphx	*__print_format_sloc3_1_0
	bls	00317$
;../printf_large.c:829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	lda	__print_format_zero_padding_65536_75
	beq	00236$
	clrx
	lda	#0x30
	bra	00237$
00236$:
	clrx
	lda	#0x20
00237$:
	jsr	__output_char
	bra	00203$
00210$:
;../printf_large.c:835: if (width > length)
	ldhx	*__print_format_sloc0_1_0
	cphx	*__print_format_sloc3_1_0
	bls	00207$
;../printf_large.c:836: width -= length;
	lda	*(__print_format_sloc0_1_0 + 1)
	sub	*(__print_format_sloc3_1_0 + 1)
	sta	*(__print_format_sloc1_1_0 + 1)
	lda	*__print_format_sloc0_1_0
	sbc	*__print_format_sloc3_1_0
	sta	*__print_format_sloc1_1_0
	bra	00309$
00207$:
;../printf_large.c:838: width = 0;
	clrh
	clrx
	sthx	*__print_format_sloc1_1_0
;../printf_large.c:877: return charsOutputted;
	bra	00309$
;../printf_large.c:842: while( length-- )
00317$:
	mov	*__print_format_sloc2_1_0,*__print_format_sloc1_1_0
	mov	*(__print_format_sloc2_1_0 + 1),*(__print_format_sloc1_1_0 + 1)
00309$:
	ldhx	*__print_format_sloc4_1_0
	mov	*__print_format_sloc3_1_0,*__print_format_sloc4_1_0
	mov	*(__print_format_sloc3_1_0 + 1),*(__print_format_sloc4_1_0 + 1)
00215$:
	mov	*__print_format_sloc4_1_0,*__print_format_sloc3_1_0
	mov	*(__print_format_sloc4_1_0 + 1),*(__print_format_sloc3_1_0 + 1)
	pshx
	pshh
	ldhx	*__print_format_sloc4_1_0
	aix	#-1
	sthx	*__print_format_sloc4_1_0
	pulh
	pulx
	lda	*(__print_format_sloc3_1_0 + 1)
	ora	*__print_format_sloc3_1_0
	beq	00217$
;../printf_large.c:844: lsd = !lsd;
	lda	__print_format_lsd_65536_75
	eor	#0x01
	sta	__print_format_lsd_65536_75
;../printf_large.c:845: if (!lsd)
	lda	__print_format_lsd_65536_75
	bne	00213$
;../printf_large.c:847: pstore++;
	aix	#1
;../printf_large.c:848: value.byte[4] = *pstore >> 4;
	lda	,x
	nsa	
	and	#0x0f
	sta	(_value + 0x0004)
	bra	00214$
00213$:
;../printf_large.c:852: value.byte[4] = *pstore & 0x0F;
	lda	,x
	and	#0x0f
	sta	(_value + 0x0004)
00214$:
;../printf_large.c:858: output_digit( value.byte[4] );
	lda	(_value + 0x0004)
	pshx
	pshh
	jsr	_output_digit
	pulh
	pulx
	bra	00215$
00217$:
;../printf_large.c:861: if (left_justify)
	lda	__print_format_left_justify_65536_75
	bne	00694$
	jmp	00231$
00694$:
;../printf_large.c:863: while (width-- > 0)
	ldhx	*__print_format_sloc1_1_0
00218$:
	sthx	*__print_format_sloc4_1_0
	aix	#-1
	lda	*(__print_format_sloc4_1_0 + 1)
	ora	*__print_format_sloc4_1_0
	bne	00695$
	jmp	00231$
00695$:
;../printf_large.c:865: OUTPUT_CHAR(' ', p);
	pshx
	pshh
	lda	#0x20
	jsr	__output_char
	pulh
	pulx
	bra	00218$
00229$:
;../printf_large.c:873: OUTPUT_CHAR( c, p );
	txa
	jsr	__output_char
	jmp	00231$
00233$:
;../printf_large.c:877: return charsOutputted;
	ldx	_charsOutputted
	lda	(_charsOutputted + 1)
;../printf_large.c:878: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
