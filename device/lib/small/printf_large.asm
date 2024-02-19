;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 3
_value:
	.ds 5
_charsOutputted:
	.ds 2
__print_format_PARM_2:
	.ds 3
__print_format_PARM_3:
	.ds 3
__print_format_PARM_4:
	.ds 1
__print_format_left_justify_65536_78:
	.ds 1
__print_format_zero_padding_65536_78:
	.ds 1
__print_format_prefix_sign_65536_78:
	.ds 1
__print_format_prefix_space_65536_78:
	.ds 1
__print_format_signed_argument_65536_78:
	.ds 1
__print_format_char_argument_65536_78:
	.ds 1
__print_format_long_argument_65536_78:
	.ds 1
__print_format_float_argument_65536_78:
	.ds 1
__print_format_lsd_65536_78:
	.ds 1
__print_format_radix_65536_78:
	.ds 1
__print_format_decimals_65536_78:
	.ds 2
__print_format_length_65536_78:
	.ds 2
__print_format_c_65536_78:
	.ds 1
__print_format_pstore_262144_99:
	.ds 1
__print_format_sloc0_1_0:
	.ds 3
__print_format_sloc1_1_0:
	.ds 1
__print_format_sloc2_1_0:
	.ds 2
__print_format_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculate_digit_radix_65536_73:
	.ds 1
_calculate_digit_b4_65536_74:
	.ds 1
_calculate_digit_i_65536_74:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
__print_format_store_262144_99:
	.ds 6
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	printf_large.c:107: output_char( c, p );
	push	_p
	push	(_p + 1)
	push	(_p + 2)
	lcall	00103$
	sjmp	00104$
00103$:
	push	_output_char
	push	(_output_char + 1)
	mov	dpl,r7
	ret
00104$:
	dec	sp
	dec	sp
	dec	sp
;	printf_large.c:108: charsOutputted++;
	inc	_charsOutputted
	clr	a
	cjne	a,_charsOutputted,00105$
	inc	(_charsOutputted + 1)
00105$:
;	printf_large.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	mov	r7,dpl
;	printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r7
;	printf_large.c:134: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r7
	mov	r7,a
;	printf_large.c:137: if (lower_case)
	mov	a,_lower_case
	jz	00104$
;	printf_large.c:138: c = tolower(c);
	orl	ar7,#0x20
00104$:
;	printf_large.c:140: _output_char( c );
	mov	dpl,r7
;	printf_large.c:141: }
	ljmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
;	printf_large.c:159: output_digit( b>>4   );
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_output_digit
	pop	ar7
;	printf_large.c:160: output_digit( b&0x0F );
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
;	printf_large.c:161: }
	ljmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_65536_73'
;ul                        Allocated to registers r3 r4 r5 r6 
;b4                        Allocated with name '_calculate_digit_b4_65536_74'
;i                         Allocated with name '_calculate_digit_i_65536_74'
;------------------------------------------------------------
;	printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	mov	_calculate_digit_radix_65536_73,dpl
;	printf_large.c:191: register unsigned long ul = value.ul;
	mov	r3,(_value + 0)
	mov	r4,(_value + 1)
	mov	r5,(_value + 2)
	mov	r6,(_value + 3)
;	printf_large.c:192: register unsigned char b4 = value.byte[4];
	mov	r2,(_value + 0x0004)
;	printf_large.c:195: do
	mov	_calculate_digit_i_65536_74,#0x20
00103$:
;	printf_large.c:197: b4 = (b4 << 1);
	mov	ar7,r2
	mov	a,r7
	add	a,r7
	mov	_calculate_digit_b4_65536_74,a
;	printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	mov	a,r6
	rl	a
	anl	a,#0x01
	orl	a,_calculate_digit_b4_65536_74
	mov	r2,a
;	printf_large.c:199: ul <<= 1;
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
;	printf_large.c:201: if (radix <= b4 )
	clr	c
	mov	a,r2
	subb	a,_calculate_digit_radix_65536_73
	jc	00104$
;	printf_large.c:203: b4 -= radix;
	mov	a,r2
	clr	c
	subb	a,_calculate_digit_radix_65536_73
	mov	r2,a
;	printf_large.c:204: ul |= 1;
	orl	ar3,#0x01
00104$:
;	printf_large.c:206: } while (--i);
	djnz	_calculate_digit_i_65536_74,00103$
;	printf_large.c:207: value.ul = ul;
	mov	(_value + 0),r3
	mov	(_value + 1),r4
	mov	(_value + 2),r5
	mov	(_value + 3),r6
;	printf_large.c:208: value.byte[4] = b4;
	mov	(_value + 0x0004),r2
;	printf_large.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;left_justify              Allocated with name '__print_format_left_justify_65536_78'
;zero_padding              Allocated with name '__print_format_zero_padding_65536_78'
;prefix_sign               Allocated with name '__print_format_prefix_sign_65536_78'
;prefix_space              Allocated with name '__print_format_prefix_space_65536_78'
;signed_argument           Allocated with name '__print_format_signed_argument_65536_78'
;char_argument             Allocated with name '__print_format_char_argument_65536_78'
;long_argument             Allocated with name '__print_format_long_argument_65536_78'
;float_argument            Allocated with name '__print_format_float_argument_65536_78'
;lsd                       Allocated with name '__print_format_lsd_65536_78'
;radix                     Allocated with name '__print_format_radix_65536_78'
;width                     Allocated to registers 
;decimals                  Allocated with name '__print_format_decimals_65536_78'
;length                    Allocated with name '__print_format_length_65536_78'
;c                         Allocated with name '__print_format_c_65536_78'
;memtype                   Allocated to registers r6 
;pstore                    Allocated with name '__print_format_pstore_262144_99'
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;sloc3                     Allocated with name '__print_format_sloc3_1_0'
;store                     Allocated with name '__print_format_store_262144_99'
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	mov	_output_char,dpl
	mov	(_output_char + 1),dph
;	printf_large.c:462: p = pvoid;
	mov	_p,__print_format_PARM_2
	mov	(_p + 1),(__print_format_PARM_2 + 1)
	mov	(_p + 2),(__print_format_PARM_2 + 2)
;	printf_large.c:466: charsOutputted = 0;
	clr	a
	mov	_charsOutputted,a
	mov	(_charsOutputted + 1),a
;	printf_large.c:475: while( c=*format++ )
00243$:
	mov	r5,__print_format_PARM_3
	mov	r6,(__print_format_PARM_3 + 1)
	mov	r7,(__print_format_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x01
	add	a,r5
	mov	__print_format_PARM_3,a
	clr	a
	addc	a,r6
	mov	(__print_format_PARM_3 + 1),a
	mov	(__print_format_PARM_3 + 2),r7
	mov	a,r4
	mov	r7,a
	jnz	00664$
	ljmp	00245$
00664$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r7,#0x25,00665$
	sjmp	00666$
00665$:
	ljmp	00241$
00666$:
;	printf_large.c:479: left_justify    = 0;
;	printf_large.c:480: zero_padding    = 0;
;	printf_large.c:481: prefix_sign     = 0;
;	printf_large.c:482: prefix_space    = 0;
;	printf_large.c:483: signed_argument = 0;
;	printf_large.c:484: char_argument   = 0;
;	printf_large.c:485: long_argument   = 0;
;	printf_large.c:486: float_argument  = 0;
;	printf_large.c:487: radix           = 0;
;	printf_large.c:488: width           = 0;
	clr	a
	mov	__print_format_left_justify_65536_78,a
	mov	__print_format_zero_padding_65536_78,a
	mov	__print_format_prefix_sign_65536_78,a
	mov	__print_format_prefix_space_65536_78,a
	mov	__print_format_signed_argument_65536_78,a
	mov	__print_format_char_argument_65536_78,a
	mov	__print_format_long_argument_65536_78,a
	mov	__print_format_float_argument_65536_78,a
	mov	__print_format_radix_65536_78,a
	mov	__print_format_sloc3_1_0,a
	mov	(__print_format_sloc3_1_0 + 1),a
;	printf_large.c:489: decimals        = -1;
	mov	__print_format_decimals_65536_78,#0xff
	mov	(__print_format_decimals_65536_78 + 1),#0xff
;	printf_large.c:491: get_conversion_spec:
	mov	__print_format_sloc0_1_0,__print_format_PARM_3
	mov	(__print_format_sloc0_1_0 + 1),(__print_format_PARM_3 + 1)
	mov	(__print_format_sloc0_1_0 + 2),(__print_format_PARM_3 + 2)
00101$:
;	printf_large.c:493: c = *format++;
	mov	dpl,__print_format_sloc0_1_0
	mov	dph,(__print_format_sloc0_1_0 + 1)
	mov	b,(__print_format_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	__print_format_sloc1_1_0,a
	inc	dptr
	mov	__print_format_sloc0_1_0,dpl
	mov	(__print_format_sloc0_1_0 + 1),dph
	mov	__print_format_PARM_3,__print_format_sloc0_1_0
	mov	(__print_format_PARM_3 + 1),(__print_format_sloc0_1_0 + 1)
	mov	(__print_format_PARM_3 + 2),(__print_format_sloc0_1_0 + 2)
;	printf_large.c:495: if (c=='%')
	mov	a,#0x25
	cjne	a,__print_format_sloc1_1_0,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dpl,__print_format_sloc1_1_0
	lcall	__output_char
;	printf_large.c:498: continue;
	sjmp	00243$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	a,#0x100 - 0x30
	add	a,__print_format_sloc1_1_0
	jnc	00110$
	mov	a,__print_format_sloc1_1_0
	add	a,#0xff - 0x39
	jc	00110$
;	printf_large.c:503: if (decimals==-1)
	mov	a,#0xff
	cjne	a,__print_format_decimals_65536_78,00107$
	cjne	a,(__print_format_decimals_65536_78 + 1),00107$
;	printf_large.c:505: width = 10*width + c - '0';
	mov	__mulint_PARM_2,__print_format_sloc3_1_0
	mov	(__mulint_PARM_2 + 1),(__print_format_sloc3_1_0 + 1)
	mov	dptr,#0x000a
	lcall	__mulint
	mov	__print_format_sloc2_1_0,dpl
	mov	(__print_format_sloc2_1_0 + 1),dph
	mov	r2,__print_format_sloc1_1_0
	mov	r6,#0x00
	mov	a,r2
	add	a,__print_format_sloc2_1_0
	mov	r2,a
	mov	a,r6
	addc	a,(__print_format_sloc2_1_0 + 1)
	mov	r6,a
	mov	a,r2
	add	a,#0xd0
	mov	__print_format_sloc3_1_0,a
	mov	a,r6
	addc	a,#0xff
	mov	(__print_format_sloc3_1_0 + 1),a
;	printf_large.c:506: if (width == 0)
	mov	a,__print_format_sloc3_1_0
	orl	a,(__print_format_sloc3_1_0 + 1)
	jnz	00101$
;	printf_large.c:509: zero_padding = 1;
	mov	__print_format_zero_padding_65536_78,#0x01
	sjmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	__mulint_PARM_2,__print_format_decimals_65536_78
	mov	(__mulint_PARM_2 + 1),(__print_format_decimals_65536_78 + 1)
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r3,dph
	mov	r2,__print_format_sloc1_1_0
	mov	r5,#0x00
	mov	a,r2
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,r6
	add	a,#0xd0
	mov	__print_format_decimals_65536_78,a
	mov	a,r3
	addc	a,#0xff
	mov	(__print_format_decimals_65536_78 + 1),a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	mov	a,#0x2e
	cjne	a,__print_format_sloc1_1_0,00115$
;	printf_large.c:521: if (decimals==-1)
	mov	a,#0xff
	cjne	a,__print_format_decimals_65536_78,00676$
	cjne	a,(__print_format_decimals_65536_78 + 1),00676$
	sjmp	00677$
00676$:
	ljmp	00101$
00677$:
;	printf_large.c:522: decimals=0;
	clr	a
	mov	__print_format_decimals_65536_78,a
	mov	(__print_format_decimals_65536_78 + 1),a
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	a,#0x100 - 0x61
	add	a,__print_format_sloc1_1_0
	jnc	00117$
	mov	a,__print_format_sloc1_1_0
	add	a,#0xff - 0x7a
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	anl	__print_format_sloc1_1_0,#0xdf
;	printf_large.c:531: lower_case = 1;
	mov	_lower_case,#0x01
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	mov	_lower_case,#0x00
00118$:
;	printf_large.c:536: switch( c )
	mov	a,#0x20
	cjne	a,__print_format_sloc1_1_0,00680$
	ljmp	00122$
00680$:
	mov	a,#0x2b
	cjne	a,__print_format_sloc1_1_0,00681$
	ljmp	00121$
00681$:
	mov	a,#0x2d
	cjne	a,__print_format_sloc1_1_0,00682$
	sjmp	00120$
00682$:
	mov	a,#0x42
	cjne	a,__print_format_sloc1_1_0,00683$
	ljmp	00123$
00683$:
	mov	a,#0x43
	cjne	a,__print_format_sloc1_1_0,00684$
	ljmp	00129$
00684$:
	mov	a,#0x44
	cjne	a,__print_format_sloc1_1_0,00685$
	ljmp	00166$
00685$:
	mov	a,#0x46
	cjne	a,__print_format_sloc1_1_0,00686$
	ljmp	00170$
00686$:
	mov	a,#0x48
	cjne	a,__print_format_sloc1_1_0,00687$
	ljmp	00101$
00687$:
	mov	a,#0x49
	cjne	a,__print_format_sloc1_1_0,00688$
	ljmp	00166$
00688$:
	mov	a,#0x4a
	cjne	a,__print_format_sloc1_1_0,00689$
	ljmp	00101$
00689$:
	mov	a,#0x4c
	cjne	a,__print_format_sloc1_1_0,00690$
	sjmp	00128$
00690$:
	mov	a,#0x4f
	cjne	a,__print_format_sloc1_1_0,00691$
	ljmp	00167$
00691$:
	mov	a,#0x50
	cjne	a,__print_format_sloc1_1_0,00692$
	ljmp	00152$
00692$:
	mov	a,#0x53
	cjne	a,__print_format_sloc1_1_0,00693$
	sjmp	00133$
00693$:
	mov	a,#0x54
	cjne	a,__print_format_sloc1_1_0,00694$
	ljmp	00101$
00694$:
	mov	a,#0x55
	cjne	a,__print_format_sloc1_1_0,00695$
	ljmp	00168$
00695$:
	mov	a,#0x58
	cjne	a,__print_format_sloc1_1_0,00696$
	ljmp	00169$
00696$:
	mov	a,#0x5a
	cjne	a,__print_format_sloc1_1_0,00697$
	ljmp	00101$
00697$:
	ljmp	00171$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
	mov	__print_format_left_justify_65536_78,#0x01
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
	mov	__print_format_prefix_sign_65536_78,#0x01
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
	mov	__print_format_prefix_space_65536_78,#0x01
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
	mov	__print_format_char_argument_65536_78,#0x01
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
	mov	__print_format_long_argument_65536_78,#0x01
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	mov	a,__print_format_char_argument_65536_78
	jz	00131$
;	printf_large.c:562: c = va_arg(ap,char);
	mov	a,__print_format_PARM_4
	dec	a
	mov	r1,a
	mov	__print_format_PARM_4,r1
	mov	ar6,@r1
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	a,__print_format_PARM_4
	add	a,#0xfe
	mov	r3,a
	mov	__print_format_PARM_4,r3
	mov	ar1,r3
	mov	ar6,@r1
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	mov	dpl,r6
	lcall	__output_char
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	a,__print_format_PARM_4
	add	a,#0xfd
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r6
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_strlen
	mov	__print_format_sloc0_1_0,dpl
	mov	(__print_format_sloc0_1_0 + 1),dph
;	printf_large.c:584: if ( decimals == -1 )
	mov	a,#0xff
	cjne	a,__print_format_decimals_65536_78,00135$
	cjne	a,(__print_format_decimals_65536_78 + 1),00135$
;	printf_large.c:586: decimals = length;
	mov	__print_format_decimals_65536_78,__print_format_sloc0_1_0
	mov	(__print_format_decimals_65536_78 + 1),(__print_format_sloc0_1_0 + 1)
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	mov	a,__print_format_left_justify_65536_78
	jnz	00289$
	clr	c
	mov	a,__print_format_sloc0_1_0
	subb	a,__print_format_sloc3_1_0
	mov	a,(__print_format_sloc0_1_0 + 1)
	subb	a,(__print_format_sloc3_1_0 + 1)
	jnc	00289$
;	printf_large.c:590: width -= length;
	mov	a,__print_format_sloc3_1_0
	clr	c
	subb	a,__print_format_sloc0_1_0
	mov	__print_format_sloc2_1_0,a
	mov	a,(__print_format_sloc3_1_0 + 1)
	subb	a,(__print_format_sloc0_1_0 + 1)
	mov	(__print_format_sloc2_1_0 + 1),a
;	printf_large.c:591: while( width-- != 0 )
00136$:
	mov	r2,__print_format_sloc2_1_0
	mov	r6,(__print_format_sloc2_1_0 + 1)
	dec	__print_format_sloc2_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc2_1_0,00703$
	dec	(__print_format_sloc2_1_0 + 1)
00703$:
	mov	a,r2
	orl	a,r6
	jz	00329$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp	00136$
00329$:
	mov	__print_format_sloc3_1_0,__print_format_sloc2_1_0
	mov	(__print_format_sloc3_1_0 + 1),(__print_format_sloc2_1_0 + 1)
00289$:
	mov	r3,__print_format_decimals_65536_78
	mov	r6,(__print_format_decimals_65536_78 + 1)
00143$:
	mov	dpl,_value
	mov	dph,(_value + 1)
	mov	b,(_value + 2)
	lcall	__gptrget
	mov	r2,a
	mov	__print_format_c_65536_78,r2
	jz	00145$
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00145$
	dec	r3
	cjne	r3,#0xff,00707$
	dec	r6
00707$:
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	mov	dpl,__print_format_c_65536_78
	push	ar6
	push	ar3
	lcall	__output_char
	pop	ar3
	pop	ar6
;	printf_large.c:600: PTR++;
	mov	r2,(_value + 0)
	mov	r4,(_value + 1)
	mov	r5,(_value + 2)
	inc	r2
	cjne	r2,#0x00,00708$
	inc	r4
00708$:
	mov	(_value + 0),r2
	mov	(_value + 1),r4
	mov	(_value + 2),r5
	sjmp	00143$
00145$:
;	printf_large.c:603: if ( left_justify && (length < width))
	mov	a,__print_format_left_justify_65536_78
	jnz	00709$
	ljmp	00172$
00709$:
	clr	c
	mov	a,__print_format_sloc0_1_0
	subb	a,__print_format_sloc3_1_0
	mov	a,(__print_format_sloc0_1_0 + 1)
	subb	a,(__print_format_sloc3_1_0 + 1)
	jc	00710$
	ljmp	00172$
00710$:
;	printf_large.c:605: width -= length;
	mov	a,__print_format_sloc3_1_0
	clr	c
	subb	a,__print_format_sloc0_1_0
	mov	__print_format_sloc2_1_0,a
	mov	a,(__print_format_sloc3_1_0 + 1)
	subb	a,(__print_format_sloc0_1_0 + 1)
	mov	(__print_format_sloc2_1_0 + 1),a
;	printf_large.c:606: while( width-- != 0 )
00146$:
	mov	r2,__print_format_sloc2_1_0
	mov	r6,(__print_format_sloc2_1_0 + 1)
	dec	__print_format_sloc2_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc2_1_0,00711$
	dec	(__print_format_sloc2_1_0 + 1)
00711$:
	mov	a,r2
	orl	a,r6
	jnz	00712$
	ljmp	00331$
00712$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:613: case 'P':
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	a,__print_format_PARM_4
	add	a,#0xfd
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r6
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	r6,(_value + 0x0002)
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r6,#0x80,00713$
00713$:
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	r3,#0x43
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r6,#0x60,00715$
00715$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	r3,#0x50
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r6,#0x40,00717$
00717$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	r3,#0x49
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	r3,#0x58
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	mov	dpl,r3
	push	ar3
	lcall	__output_char
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	mov	dpl,#0x3a
	lcall	__output_char
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	mov	dpl,#0x30
	lcall	__output_char
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	mov	dpl,#0x78
	lcall	__output_char
	pop	ar3
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r3,#0x49,00719$
	sjmp	00163$
00719$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r3,#0x50,00720$
	sjmp	00163$
00720$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	dpl,(_value + 0x0001)
	lcall	_output_2digits
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	dpl,_value
	lcall	_output_2digits
;	printf_large.c:668: break;
;	printf_large.c:671: case 'I':
	sjmp	00172$
00166$:
;	printf_large.c:672: signed_argument = 1;
	mov	__print_format_signed_argument_65536_78,#0x01
;	printf_large.c:673: radix = 10;
	mov	__print_format_radix_65536_78,#0x0a
;	printf_large.c:674: break;
;	printf_large.c:676: case 'O':
	sjmp	00172$
00167$:
;	printf_large.c:677: radix = 8;
	mov	__print_format_radix_65536_78,#0x08
;	printf_large.c:678: break;
;	printf_large.c:680: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:681: radix = 10;
	mov	__print_format_radix_65536_78,#0x0a
;	printf_large.c:682: break;
;	printf_large.c:684: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:685: radix = 16;
	mov	__print_format_radix_65536_78,#0x10
;	printf_large.c:686: break;
;	printf_large.c:688: case 'F':
	sjmp	00172$
00170$:
;	printf_large.c:689: float_argument=1;
	mov	__print_format_float_argument_65536_78,#0x01
;	printf_large.c:690: break;
;	printf_large.c:692: default:
	sjmp	00172$
00171$:
;	printf_large.c:694: OUTPUT_CHAR( c, p );
	mov	dpl,__print_format_sloc1_1_0
	lcall	__output_char
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:696: }
	sjmp	00172$
00331$:
	mov	__print_format_sloc3_1_0,__print_format_sloc2_1_0
	mov	(__print_format_sloc3_1_0 + 1),(__print_format_sloc2_1_0 + 1)
00172$:
;	printf_large.c:698: if (float_argument)
	mov	a,__print_format_float_argument_65536_78
	jz	00238$
;	printf_large.c:700: value.f = va_arg(ap, float);
	mov	a,__print_format_PARM_4
	add	a,#0xfc
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	__print_format_sloc3_1_0,@r1
	inc	r1
	mov	(__print_format_sloc3_1_0 + 1),@r1
	inc	r1
	mov	(__print_format_sloc3_1_0 + 2),@r1
	inc	r1
	mov	(__print_format_sloc3_1_0 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	mov	(_value + 0),__print_format_sloc3_1_0
	mov	(_value + 1),(__print_format_sloc3_1_0 + 1)
	mov	(_value + 2),(__print_format_sloc3_1_0 + 2)
	mov	(_value + 3),(__print_format_sloc3_1_0 + 3)
;	printf_large.c:702: PTR="<NO FLOAT>";
	mov	(_value + 0),#___str_0
	mov	(_value + 1),#(___str_0 >> 8)
	mov	(_value + 2),#0x80
;	printf_large.c:703: while (c=*PTR++)
00173$:
	mov	__print_format_sloc3_1_0,(_value + 0)
	mov	(__print_format_sloc3_1_0 + 1),(_value + 1)
	mov	(__print_format_sloc3_1_0 + 2),(_value + 2)
	mov	a,#0x01
	add	a,__print_format_sloc3_1_0
	mov	r2,a
	clr	a
	addc	a,(__print_format_sloc3_1_0 + 1)
	mov	r3,a
	mov	r6,(__print_format_sloc3_1_0 + 2)
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r6
	mov	dpl,__print_format_sloc3_1_0
	mov	dph,(__print_format_sloc3_1_0 + 1)
	mov	b,(__print_format_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	mov	r3,a
	jnz	00722$
	ljmp	00243$
00722$:
;	printf_large.c:705: OUTPUT_CHAR (c, p);
	mov	dpl,r3
	lcall	__output_char
	sjmp	00173$
00238$:
;	printf_large.c:723: else if (radix != 0)
	mov	a,__print_format_radix_65536_78
	jnz	00723$
	ljmp	00243$
00723$:
;	printf_large.c:728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	printf_large.c:731: if (char_argument)
	mov	a,__print_format_char_argument_65536_78
	jz	00184$
;	printf_large.c:733: value.l = va_arg(ap, char);
	mov	a,__print_format_PARM_4
	dec	a
	mov	r1,a
	mov	__print_format_PARM_4,r1
	mov	ar6,@r1
	mov	ar2,r6
	mov	r3,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r5
	mov	(_value + 3),r6
;	printf_large.c:734: if (!signed_argument)
	mov	a,__print_format_signed_argument_65536_78
;	printf_large.c:736: value.l &= 0xFF;
	jnz	00185$
	mov	r2,_value
	mov	r3,a
	mov	r5,a
	mov	r6,a
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r5
	mov	(_value + 3),r6
	sjmp	00185$
00184$:
;	printf_large.c:739: else if (long_argument)
	mov	a,__print_format_long_argument_65536_78
	jz	00181$
;	printf_large.c:741: value.l = va_arg(ap, long);
	mov	a,__print_format_PARM_4
	add	a,#0xfc
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r5
	mov	(_value + 3),r6
	sjmp	00185$
00181$:
;	printf_large.c:745: value.l = va_arg(ap, int);
	mov	a,__print_format_PARM_4
	add	a,#0xfe
	mov	r6,a
	mov	__print_format_PARM_4,r6
	mov	ar1,r6
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	a,r6
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	(_value + 0),r3
	mov	(_value + 1),r2
	mov	(_value + 2),r5
	mov	(_value + 3),r6
;	printf_large.c:746: if (!signed_argument)
	mov	a,__print_format_signed_argument_65536_78
;	printf_large.c:748: value.l &= 0xFFFF;
	jnz	00185$
	mov	r2,_value
	mov	r3,(_value + 1)
	mov	r5,a
	mov	r6,a
	mov	(_value + 0),r2
	mov	(_value + 1),r3
	mov	(_value + 2),r5
	mov	(_value + 3),r6
00185$:
;	printf_large.c:752: if ( signed_argument )
	mov	a,__print_format_signed_argument_65536_78
	jz	00190$
;	printf_large.c:754: if (value.l < 0)
	mov	a,(_value + 3)
	jnb	acc.7,00187$
;	printf_large.c:755: value.l = -value.l;
	clr	c
	clr	a
	subb	a,_value
	mov	r3,a
	clr	a
	subb	a,(_value + 1)
	mov	r4,a
	clr	a
	subb	a,(_value + 2)
	mov	r5,a
	clr	a
	subb	a,(_value + 3)
	mov	r6,a
	mov	(_value + 0),r3
	mov	(_value + 1),r4
	mov	(_value + 2),r5
	mov	(_value + 3),r6
	sjmp	00190$
00187$:
;	printf_large.c:757: signed_argument = 0;
	mov	__print_format_signed_argument_65536_78,#0x00
00190$:
;	printf_large.c:761: lsd = 1;
	mov	__print_format_lsd_65536_78,#0x01
;	printf_large.c:763: do {
	mov	r1,#(__print_format_store_262144_99 + 0x0005)
	mov	r5,#0x00
	mov	r6,#0x00
00194$:
;	printf_large.c:764: value.byte[4] = 0;
	mov	(_value + 0x0004),#0x00
;	printf_large.c:768: calculate_digit(radix);
	mov	dpl,__print_format_radix_65536_78
	push	ar6
	push	ar5
	push	ar1
	lcall	_calculate_digit
	pop	ar1
	pop	ar5
	pop	ar6
;	printf_large.c:770: if (!lsd)
	mov	a,__print_format_lsd_65536_78
	jnz	00192$
;	printf_large.c:772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	a,(_value + 0x0004)
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	a,(_value + 0x0004)
	swap	a
	anl	a,#0x0f
	orl	ar4,a
	mov	a,@r1
	mov	r3,a
	orl	a,r4
	mov	@r1,a
;	printf_large.c:773: pstore--;
	dec	r1
	sjmp	00193$
00192$:
;	printf_large.c:777: *pstore = value.byte[4];
	mov	@r1,(_value + 0x0004)
00193$:
;	printf_large.c:779: length++;
	inc	r5
	cjne	r5,#0x00,00731$
	inc	r6
00731$:
;	printf_large.c:780: lsd = !lsd;
	mov	a,__print_format_lsd_65536_78
	cjne	a,#0x01,00732$
00732$:
	clr	a
	rlc	a
	mov	__print_format_lsd_65536_78,a
;	printf_large.c:781: } while( value.ul );
	mov	a,_value
	orl	a,(_value + 1)
	orl	a,(_value + 2)
	orl	a,(_value + 3)
	jnz	00194$
;	printf_large.c:783: if (width == 0)
	mov	__print_format_pstore_262144_99,r1
	mov	__print_format_length_65536_78,r5
	mov	(__print_format_length_65536_78 + 1),r6
	mov	a,__print_format_sloc3_1_0
	orl	a,(__print_format_sloc3_1_0 + 1)
;	printf_large.c:788: width = 1;
	jnz	00198$
	mov	__print_format_sloc3_1_0,#0x01
	mov	(__print_format_sloc3_1_0 + 1),a
00198$:
;	printf_large.c:792: if (!zero_padding && !left_justify)
	mov	a,__print_format_zero_padding_65536_78
	jnz	00203$
	mov	a,__print_format_left_justify_65536_78
	jnz	00203$
;	printf_large.c:794: while ( width > (unsigned char) (length+1) )
	mov	r2,__print_format_sloc3_1_0
	mov	r3,(__print_format_sloc3_1_0 + 1)
00199$:
	mov	r4,__print_format_length_65536_78
	inc	r4
	mov	r6,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r6
	subb	a,r3
	jnc	00333$
;	printf_large.c:796: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	push	ar3
	push	ar2
	lcall	__output_char
	pop	ar2
	pop	ar3
;	printf_large.c:797: width--;
	dec	r2
	cjne	r2,#0xff,00738$
	dec	r3
00738$:
	sjmp	00199$
00333$:
	mov	__print_format_sloc3_1_0,r2
	mov	(__print_format_sloc3_1_0 + 1),r3
00203$:
;	printf_large.c:801: if (signed_argument) // this now means the original value was negative
	mov	a,__print_format_signed_argument_65536_78
	jz	00213$
;	printf_large.c:803: OUTPUT_CHAR( '-', p );
	mov	dpl,#0x2d
	lcall	__output_char
;	printf_large.c:805: width--;
	dec	__print_format_sloc3_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc3_1_0,00740$
	dec	(__print_format_sloc3_1_0 + 1)
00740$:
	sjmp	00214$
00213$:
;	printf_large.c:807: else if (length != 0)
	mov	a,__print_format_length_65536_78
	orl	a,(__print_format_length_65536_78 + 1)
	jz	00214$
;	printf_large.c:810: if (prefix_sign)
	mov	a,__print_format_prefix_sign_65536_78
	jz	00208$
;	printf_large.c:812: OUTPUT_CHAR( '+', p );
	mov	dpl,#0x2b
	lcall	__output_char
;	printf_large.c:814: width--;
	dec	__print_format_sloc3_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc3_1_0,00743$
	dec	(__print_format_sloc3_1_0 + 1)
00743$:
	sjmp	00214$
00208$:
;	printf_large.c:816: else if (prefix_space)
	mov	a,__print_format_prefix_space_65536_78
	jz	00214$
;	printf_large.c:818: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:820: width--;
	dec	__print_format_sloc3_1_0
	mov	a,#0xff
	cjne	a,__print_format_sloc3_1_0,00745$
	dec	(__print_format_sloc3_1_0 + 1)
00745$:
00214$:
;	printf_large.c:825: if (!left_justify)
	mov	a,__print_format_left_justify_65536_78
	jnz	00222$
;	printf_large.c:827: while ( width-- > length )
	mov	r5,__print_format_sloc3_1_0
	mov	r6,(__print_format_sloc3_1_0 + 1)
00215$:
	mov	ar3,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00747$
	dec	r6
00747$:
	clr	c
	mov	a,__print_format_length_65536_78
	subb	a,r3
	mov	a,(__print_format_length_65536_78 + 1)
	subb	a,r4
	jnc	00334$
;	printf_large.c:829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	mov	a,__print_format_zero_padding_65536_78
	jz	00248$
	mov	r3,#0x30
	mov	r4,#0x00
	sjmp	00249$
00248$:
	mov	r3,#0x20
	mov	r4,#0x00
00249$:
	mov	dpl,r3
	push	ar6
	push	ar5
	lcall	__output_char
	pop	ar5
	pop	ar6
	sjmp	00215$
00222$:
;	printf_large.c:835: if (width > length)
	clr	c
	mov	a,__print_format_length_65536_78
	subb	a,__print_format_sloc3_1_0
	mov	a,(__print_format_length_65536_78 + 1)
	subb	a,(__print_format_sloc3_1_0 + 1)
	jnc	00219$
;	printf_large.c:836: width -= length;
	mov	a,__print_format_sloc3_1_0
	clr	c
	subb	a,__print_format_length_65536_78
	mov	__print_format_sloc3_1_0,a
	mov	a,(__print_format_sloc3_1_0 + 1)
	subb	a,(__print_format_length_65536_78 + 1)
	mov	(__print_format_sloc3_1_0 + 1),a
	sjmp	00326$
00219$:
;	printf_large.c:838: width = 0;
	clr	a
	mov	__print_format_sloc3_1_0,a
	mov	(__print_format_sloc3_1_0 + 1),a
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:842: while( length-- )
	sjmp	00326$
00334$:
	mov	__print_format_sloc3_1_0,r5
	mov	(__print_format_sloc3_1_0 + 1),r6
00326$:
	mov	r1,__print_format_pstore_262144_99
	mov	r5,__print_format_length_65536_78
	mov	r6,(__print_format_length_65536_78 + 1)
00227$:
	mov	ar2,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00751$
	dec	r6
00751$:
	mov	a,r2
	orl	a,r4
	jz	00229$
;	printf_large.c:844: lsd = !lsd;
	mov	a,__print_format_lsd_65536_78
	cjne	a,#0x01,00753$
00753$:
	clr	a
	rlc	a
;	printf_large.c:845: if (!lsd)
	mov	__print_format_lsd_65536_78,a
	jnz	00225$
;	printf_large.c:847: pstore++;
	inc	r1
;	printf_large.c:848: value.byte[4] = *pstore >> 4;
	mov	a,@r1
	swap	a
	anl	a,#0x0f
	mov	r4,a
	mov	(_value + 0x0004),r4
	sjmp	00226$
00225$:
;	printf_large.c:852: value.byte[4] = *pstore & 0x0F;
	mov	ar4,@r1
	mov	a,#0x0f
	anl	a,r4
	mov	(_value + 0x0004),a
00226$:
;	printf_large.c:858: output_digit( value.byte[4] );
	mov	dpl,(_value + 0x0004)
	push	ar6
	push	ar5
	push	ar1
	lcall	_output_digit
	pop	ar1
	pop	ar5
	pop	ar6
	sjmp	00227$
00229$:
;	printf_large.c:861: if (left_justify)
	mov	a,__print_format_left_justify_65536_78
	jnz	00755$
	ljmp	00243$
00755$:
;	printf_large.c:863: while (width-- > 0)
	mov	r5,__print_format_sloc3_1_0
	mov	r6,(__print_format_sloc3_1_0 + 1)
00230$:
	mov	ar3,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00756$
	dec	r6
00756$:
	mov	a,r3
	orl	a,r4
	jnz	00757$
	ljmp	00243$
00757$:
;	printf_large.c:865: OUTPUT_CHAR(' ', p);
	mov	dpl,#0x20
	push	ar6
	push	ar5
	lcall	__output_char
	pop	ar5
	pop	ar6
	sjmp	00230$
00241$:
;	printf_large.c:873: OUTPUT_CHAR( c, p );
	mov	dpl,r7
	lcall	__output_char
	ljmp	00243$
00245$:
;	printf_large.c:877: return charsOutputted;
	mov	dpl,_charsOutputted
	mov	dph,(_charsOutputted + 1)
;	printf_large.c:878: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
