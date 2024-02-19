;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;lower_case                Allocated to stack - _bp -3
;output_char               Allocated to stack - _bp -5
;p                         Allocated to stack - _bp -8
;n                         Allocated to registers r7 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:116: output_digit (unsigned char n, _Bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	printf_large.c:118: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r7
;	printf_large.c:120: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:122: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r7
	mov	r7,a
;	printf_large.c:123: if (lower_case)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00104$
;	printf_large.c:124: c += (unsigned char)('a' - 'A');
	mov	a,#0x20
	add	a,r7
	mov	r7,a
00104$:
;	printf_large.c:126: output_char( c, p );
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	lcall	00117$
	sjmp	00118$
00117$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	ret
00118$:
	dec	sp
	dec	sp
	dec	sp
;	printf_large.c:127: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;lower_case                Allocated to stack - _bp -3
;output_char               Allocated to stack - _bp -5
;p                         Allocated to stack - _bp -8
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	printf_large.c:149: output_2digits (unsigned char b, _Bool lower_case, pfn_outputchar output_char, void* p)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	push	_bp
	mov	_bp,sp
;	printf_large.c:151: output_digit( b>>4,   lower_case, output_char, p );
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	push	ar7
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r6
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
;	printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	anl	ar7,#0x0f
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r7
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	printf_large.c:153: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to stack - _bp -3
;value                     Allocated to registers r1 
;ul                        Allocated to registers r4 r5 r6 r7 
;pb4                       Allocated to registers r0 
;i                         Allocated to stack - _bp +1
;------------------------------------------------------------
;	printf_large.c:168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r1,dpl
;	printf_large.c:170: unsigned long ul = value->ul;
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	mov	a,#0x04
	add	a,r1
	mov	r0,a
;	printf_large.c:174: do
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x20
	pop	ar0
00103$:
;	printf_large.c:176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	push	ar1
	mov	a,@r0
	add	a,@r0
	mov	r2,a
	mov	a,r7
	rl	a
	anl	a,#0x01
	orl	ar2,a
	mov	@r0,ar2
;	printf_large.c:177: ul <<= 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	printf_large.c:179: if (radix <= *pb4 )
	push	ar0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	pop	ar0
	pop	ar1
	jc	00104$
;	printf_large.c:181: *pb4 -= radix;
	mov	ar3,@r0
	push	ar0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,r3
	clr	c
	subb	a,@r0
	mov	r3,a
	pop	ar0
	mov	@r0,ar3
;	printf_large.c:182: ul |= 1;
	orl	ar4,#0x01
00104$:
;	printf_large.c:184: } while (--i);
	push	ar0
	mov	r0,_bp
	inc	r0
	dec	@r0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	pop	ar0
	jnz	00103$
;	printf_large.c:185: value->ul = ul;
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	printf_large.c:186: }
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated to stack - _bp -5
;format                    Allocated to stack - _bp -8
;ap                        Allocated to stack - _bp -9
;pfn                       Allocated to stack - _bp +1
;left_justify              Allocated to registers b0 
;zero_padding              Allocated to registers b1 
;prefix_sign               Allocated to registers b2 
;prefix_space              Allocated to registers b3 
;signed_argument           Allocated to registers b4 
;char_argument             Allocated to registers b5 
;long_argument             Allocated to registers b6 
;float_argument            Allocated to registers b7 
;lower_case                Allocated to stack - _bp +19
;value                     Allocated to stack - _bp +20
;charsOutputted            Allocated to stack - _bp +25
;lsd                       Allocated to registers b5 
;radix                     Allocated to stack - _bp +27
;width                     Allocated to registers 
;decimals                  Allocated to stack - _bp +28
;length                    Allocated to stack - _bp +30
;c                         Allocated to registers r6 
;memtype                   Allocated to registers r7 
;store                     Allocated to stack - _bp +32
;pstore                    Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +39
;sloc4                     Allocated to stack - _bp +6
;sloc5                     Allocated to stack - _bp +8
;sloc6                     Allocated to stack - _bp +11
;sloc7                     Allocated to stack - _bp +12
;sloc8                     Allocated to stack - _bp +14
;sloc9                     Allocated to stack - _bp +16
;sloc10                    Allocated to stack - _bp +18
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x23
	mov	sp,a
;	printf_large.c:466: charsOutputted = 0;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	printf_large.c:475: while( c=*format++ )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x14
	mov	@r0,a
	mov	a,_bp
	add	a,#0x20
	xch	a,r0
	mov	a,_bp
	add	a,#0x12
	xch	a,r0
	add	a,#0x05
	mov	@r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	add	a,#0x04
	mov	r2,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	@r1,ar2
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	@r1,ar2
00243$:
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar4,@r1
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x01
	add	a,r6
	mov	@r1,a
	clr	a
	addc	a,r5
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,ar4
	mov	a,r7
	mov	r6,a
	jnz	00664$
	ljmp	00245$
00664$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r6,#0x25,00665$
	sjmp	00666$
00665$:
	ljmp	00241$
00666$:
;	printf_large.c:479: left_justify    = 0;
;	assignBit
	clr	b0
;	printf_large.c:480: zero_padding    = 0;
;	assignBit
	clr	b1
;	printf_large.c:481: prefix_sign     = 0;
;	assignBit
	clr	b2
;	printf_large.c:482: prefix_space    = 0;
;	assignBit
	clr	b3
;	printf_large.c:483: signed_argument = 0;
;	assignBit
	clr	b4
;	printf_large.c:484: char_argument   = 0;
;	assignBit
	clr	b5
;	printf_large.c:485: long_argument   = 0;
;	assignBit
	clr	b6
;	printf_large.c:486: float_argument  = 0;
;	assignBit
	clr	b7
;	printf_large.c:487: radix           = 0;
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	@r1,#0x00
;	printf_large.c:488: width           = 0;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	clr	a
	mov	@r1,a
	inc	r1
	mov	@r1,a
;	printf_large.c:489: decimals        = -1;
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	@r1,#0xff
	inc	r1
	mov	@r1,#0xff
;	printf_large.c:491: get_conversion_spec:
	mov	a,_bp
	add	a,#0xf8
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
00101$:
;	printf_large.c:493: c = *format++;
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	dec	r1
	dec	r1
	mov	@r1,dpl
	inc	r1
	mov	@r1,dph
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
;	printf_large.c:495: if (c=='%')
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x25,00103$
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00669$
	sjmp	00670$
00669$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	dpl,@r1
	ret
00670$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00671$
	inc	r1
	inc	@r1
00671$:
;	printf_large.c:498: continue;
	ljmp	00243$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x30,00672$
00672$:
	jnc	00673$
	ljmp	00110$
00673$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	add	a,#0xff - 0x39
	jnc	00674$
	ljmp	00110$
00674$:
;	printf_large.c:503: if (decimals==-1)
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	cjne	@r1,#0xff,00107$
	inc	r1
	cjne	@r1,#0xff,00107$
;	printf_large.c:505: width = 10*width + c - '0';
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r3,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	ar5,@r1
	mov	r6,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,r3
	add	a,#0xd0
	mov	@r1,a
	mov	a,r7
	addc	a,#0xff
	inc	r1
	mov	@r1,a
;	printf_large.c:506: if (width == 0)
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	inc	r1
	orl	a,@r1
	jz	00677$
	ljmp	00101$
00677$:
;	printf_large.c:509: zero_padding = 1;
;	assignBit
	setb	b1
	ljmp	00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	ar4,@r1
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,r6
	add	a,#0xd0
	mov	@r1,a
	mov	a,r7
	addc	a,#0xff
	inc	r1
	mov	@r1,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x2e,00115$
;	printf_large.c:521: if (decimals==-1)
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	cjne	@r1,#0xff,00680$
	inc	r1
	cjne	@r1,#0xff,00680$
	sjmp	00681$
00680$:
	ljmp	00101$
00681$:
;	printf_large.c:522: decimals=0;
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	clr	a
	mov	@r1,a
	inc	r1
	mov	@r1,a
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x61,00682$
00682$:
	jc	00117$
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	add	a,#0xff - 0x7a
	jc	00117$
;	printf_large.c:530: c = toupper(c);
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	anl	a,#0xdf
	mov	@r1,a
;	printf_large.c:531: lower_case = 1;
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	@r1,#0x01
	sjmp	00118$
00117$:
;	printf_large.c:534: lower_case = 0;
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	@r1,#0x00
00118$:
;	printf_large.c:536: switch( c )
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x20,00685$
	ljmp	00122$
00685$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x2b,00686$
	ljmp	00121$
00686$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x2d,00687$
	ljmp	00120$
00687$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x42,00688$
	ljmp	00123$
00688$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x43,00689$
	ljmp	00129$
00689$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x44,00690$
	ljmp	00166$
00690$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x46,00691$
	ljmp	00170$
00691$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x48,00692$
	ljmp	00101$
00692$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x49,00693$
	ljmp	00166$
00693$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x4a,00694$
	ljmp	00101$
00694$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x4c,00695$
	sjmp	00128$
00695$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x4f,00696$
	ljmp	00167$
00696$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x50,00697$
	ljmp	00152$
00697$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x53,00698$
	ljmp	00133$
00698$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x54,00699$
	ljmp	00101$
00699$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x55,00700$
	ljmp	00168$
00700$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x58,00701$
	ljmp	00169$
00701$:
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	cjne	@r1,#0x5a,00702$
	ljmp	00101$
00702$:
	ljmp	00171$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
;	assignBit
	setb	b0
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
;	assignBit
	setb	b2
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
;	assignBit
	setb	b3
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
;	assignBit
	setb	b5
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
;	assignBit
	setb	b6
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	jnb	b5,00131$
;	printf_large.c:562: c = va_arg(ap,char);
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar6,@r1
	sjmp	00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	add	a,#0xfe
	mov	r5,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	@r1,ar5
	mov	ar1,r5
	mov	ar6,@r1
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00704$
	sjmp	00705$
00704$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r6
	ret
00705$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00706$
	inc	r1
	inc	@r1
00706$:
;	printf_large.c:566: break;
	ljmp	00172$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r6,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	mov	r0,ar6
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	pop	ar0
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	dec	r1
	dec	r1
;	printf_large.c:582: length = strlen(PTR);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar2
	push	ar1
	push	ar0
	push	bits
	lcall	_strlen
	push	ar0
	xch	a,r0
	mov	a,_bp
	add	a,#0x10
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar0
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
;	printf_large.c:584: if ( decimals == -1 )
	push	ar0
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	cjne	@r0,#0xff,00707$
	inc	r0
	cjne	@r0,#0xff,00707$
	sjmp	00708$
00707$:
	pop	ar0
	sjmp	00135$
00708$:
;	printf_large.c:586: decimals = length;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	pop	ar0
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	jnb	b0,00709$
	ljmp	00289$
00709$:
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	pop	ar1
	pop	ar0
	jc	00710$
	ljmp	00289$
00710$:
;	printf_large.c:590: width -= length;
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r6,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	r5,a
;	printf_large.c:591: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	pop	ar0
00136$:
	mov	ar4,r6
	mov	ar7,r5
	dec	r6
	cjne	r6,#0xff,00711$
	dec	r5
00711$:
	mov	a,r4
	orl	a,r7
	jz	00329$
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	lcall	00713$
	sjmp	00714$
00713$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00714$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00715$
	inc	r0
	inc	@r0
00715$:
	pop	ar0
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp	00136$
00329$:
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	pop	ar0
00289$:
	push	ar0
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	pop	ar0
00143$:
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,a
	jnz	00716$
	ljmp	00330$
00716$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00330$
	dec	r4
	cjne	r4,#0xff,00718$
	dec	r7
00718$:
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar7
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	lcall	00719$
	sjmp	00720$
00719$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	ret
00720$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar7
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00721$
	inc	r0
	inc	@r0
00721$:
	pop	ar0
;	printf_large.c:600: PTR++;
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	inc	r3
	cjne	r3,#0x00,00722$
	inc	r5
00722$:
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	dec	r1
	dec	r1
	ljmp	00143$
00330$:
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
;	printf_large.c:603: if ( left_justify && (length < width))
	jb	b0,00723$
	ljmp	00172$
00723$:
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	pop	ar0
	jc	00724$
	ljmp	00172$
00724$:
;	printf_large.c:605: width -= length;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r1
	clr	c
	subb	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	mov	r7,a
;	printf_large.c:606: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
00146$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00725$
	dec	r7
00725$:
	mov	a,r4
	orl	a,r5
	jnz	00726$
	ljmp	00331$
00726$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar6
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00727$
	sjmp	00728$
00727$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00728$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00729$
	inc	r1
	inc	@r1
00729$:
;	printf_large.c:613: case 'P':
	sjmp	00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r5,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar5
	mov	r0,ar5
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	pop	ar0
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
	dec	r1
;	printf_large.c:637: unsigned char memtype = value.byte[2];
	mov	a,_bp
	add	a,#0x14
	mov	r6,a
	add	a,#0x02
	mov	r1,a
	mov	ar7,@r1
;	printf_large.c:638: if (memtype >= 0x80)
	cjne	r7,#0x80,00730$
00730$:
	jc	00160$
;	printf_large.c:639: c = 'C';
	mov	r5,#0x43
	sjmp	00161$
00160$:
;	printf_large.c:640: else if (memtype >= 0x60)
	cjne	r7,#0x60,00732$
00732$:
	jc	00157$
;	printf_large.c:641: c = 'P';
	mov	r5,#0x50
	sjmp	00161$
00157$:
;	printf_large.c:642: else if (memtype >= 0x40)
	cjne	r7,#0x40,00734$
00734$:
	jc	00154$
;	printf_large.c:643: c = 'I';
	mov	r5,#0x49
	sjmp	00161$
00154$:
;	printf_large.c:645: c = 'X';
	mov	r5,#0x58
00161$:
;	printf_large.c:647: OUTPUT_CHAR(c, p);
	push	ar6
	push	ar5
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00736$
	sjmp	00737$
00736$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00737$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,#0x01
	add	a,@r1
	mov	r4,a
	clr	a
	inc	r1
	addc	a,@r1
	mov	r3,a
;	printf_large.c:648: OUTPUT_CHAR(':', p);
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00738$
	sjmp	00739$
00738$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x3a
	ret
00739$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r4
	cjne	r4,#0x00,00740$
	inc	r3
00740$:
;	printf_large.c:649: OUTPUT_CHAR('0', p);
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00741$
	sjmp	00742$
00741$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x30
	ret
00742$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	inc	r4
	cjne	r4,#0x00,00743$
	inc	r3
00743$:
;	printf_large.c:650: OUTPUT_CHAR('x', p);
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00744$
	sjmp	00745$
00744$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x78
	ret
00745$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,#0x01
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r7,a
;	printf_large.c:651: if ((c != 'I' /* idata */) &&
	cjne	r5,#0x49,00746$
	sjmp	00163$
00746$:
;	printf_large.c:652: (c != 'P' /* pdata */))
	cjne	r5,#0x50,00747$
	sjmp	00163$
00747$:
;	printf_large.c:654: OUTPUT_2DIGITS( value.byte[1] );
	mov	a,r6
	inc	a
	mov	r1,a
	mov	ar5,@r1
	push	ar7
	push	ar4
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r1
	push	acc
	mov	dpl,r5
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar4
	pop	ar7
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r7,a
00163$:
;	printf_large.c:656: OUTPUT_2DIGITS( value.byte[0] );
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	ar1,@r1
	mov	ar5,@r1
	push	ar7
	push	ar4
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r1
	push	acc
	mov	dpl,r5
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,#0x02
	add	a,r4
	mov	@r1,a
	clr	a
	addc	a,r7
	inc	r1
	mov	@r1,a
;	printf_large.c:668: break;
	ljmp	00172$
;	printf_large.c:671: case 'I':
00166$:
;	printf_large.c:672: signed_argument = 1;
;	assignBit
	setb	b4
;	printf_large.c:673: radix = 10;
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	@r1,#0x0a
;	printf_large.c:674: break;
	ljmp	00172$
;	printf_large.c:676: case 'O':
00167$:
;	printf_large.c:677: radix = 8;
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	@r1,#0x08
;	printf_large.c:678: break;
;	printf_large.c:680: case 'U':
	sjmp	00172$
00168$:
;	printf_large.c:681: radix = 10;
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	@r1,#0x0a
;	printf_large.c:682: break;
;	printf_large.c:684: case 'X':
	sjmp	00172$
00169$:
;	printf_large.c:685: radix = 16;
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	@r1,#0x10
;	printf_large.c:686: break;
;	printf_large.c:688: case 'F':
	sjmp	00172$
00170$:
;	printf_large.c:689: float_argument=1;
;	assignBit
	setb	b7
;	printf_large.c:690: break;
;	printf_large.c:692: default:
	sjmp	00172$
00171$:
;	printf_large.c:694: OUTPUT_CHAR( c, p );
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00748$
	sjmp	00749$
00748$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	dpl,@r1
	ret
00749$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00750$
	inc	r1
	inc	@r1
00750$:
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:696: }
	sjmp	00172$
00331$:
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
00172$:
;	printf_large.c:698: if (float_argument)
	jb	b7,00751$
	ljmp	00238$
00751$:
;	printf_large.c:700: value.f = va_arg(ap, float);
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar7
	mov	r0,ar7
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:702: PTR="<NO FLOAT>";
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	@r1,#___str_0
	inc	r1
	mov	@r1,#(___str_0 >> 8)
	inc	r1
	mov	@r1,#0x80
	dec	r1
	dec	r1
;	printf_large.c:703: while (c=*PTR++)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	pop	ar0
00173$:
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	pop	ar0
	mov	a,r7
	mov	r6,a
	jnz	00752$
	ljmp	00243$
00752$:
;	printf_large.c:705: OUTPUT_CHAR (c, p);
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	b,ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	lcall	00753$
	sjmp	00754$
00753$:
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	ret
00754$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	inc	r4
	cjne	r4,#0x00,00755$
	inc	r3
00755$:
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
	pop	ar0
	ljmp	00173$
00238$:
;	printf_large.c:723: else if (radix != 0)
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
	mov	a,@r1
	jnz	00756$
	ljmp	00243$
00756$:
;	printf_large.c:728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	ar7,@r1
;	printf_large.c:731: if (char_argument)
	jnb	b5,00184$
;	printf_large.c:733: value.l = va_arg(ap, char);
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r6,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	mov	r0,ar6
	mov	ar6,@r0
	pop	ar0
	mov	ar4,r6
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:734: if (!signed_argument)
	pop	ar7
	jnb	b4,00758$
	ljmp	00185$
00758$:
;	printf_large.c:736: value.l &= 0xFF;
	push	ar7
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
	pop	ar7
	ljmp	00185$
00184$:
;	printf_large.c:739: else if (long_argument)
	jnb	b6,00181$
;	printf_large.c:741: value.l = va_arg(ap, long);
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r6,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	mov	r0,ar6
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	pop	ar0
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
	pop	ar7
	sjmp	00185$
00181$:
;	printf_large.c:745: value.l = va_arg(ap, int);
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r6,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar6
	mov	r0,ar6
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:746: if (!signed_argument)
	pop	ar7
	jb	b4,00185$
;	printf_large.c:748: value.l &= 0xFFFF;
	push	ar7
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	r6,#0x00
	mov	r7,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	printf_large.c:877: return charsOutputted;
	pop	ar7
;	printf_large.c:748: value.l &= 0xFFFF;
00185$:
;	printf_large.c:752: if ( signed_argument )
	jnb	b4,00190$
;	printf_large.c:754: if (value.l < 0)
	push	ar7
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,r7
	pop	ar7
	jnb	acc.7,00187$
;	printf_large.c:755: value.l = -value.l;
	push	ar7
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
	pop	ar7
	sjmp	00190$
00187$:
;	printf_large.c:757: signed_argument = 0;
;	assignBit
	clr	b4
00190$:
;	printf_large.c:761: lsd = 1;
;	assignBit
	setb	b5
;	printf_large.c:763: do {
	mov	ar1,r7
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	pop	ar0
00194$:
;	printf_large.c:764: value.byte[4] = 0;
	mov	a,_bp
	add	a,#0x14
	add	a,#0x04
	push	ar0
	mov	r0,a
	mov	@r0,#0x00
	pop	ar0
;	printf_large.c:766: calculate_digit(&value, radix);
	mov	ar5,r0
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r5
	lcall	_calculate_digit
	dec	sp
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
;	printf_large.c:770: if (!lsd)
	jb	b5,00192$
;	printf_large.c:772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	push	ar0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar0,@r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	mov	r5,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar0,@r0
	mov	ar4,@r0
	pop	ar0
	mov	a,r4
	swap	a
	anl	a,#0x0f
	orl	ar5,a
	mov	a,@r1
	mov	r4,a
	orl	ar5,a
	mov	@r1,ar5
;	printf_large.c:773: pstore--;
	dec	r1
	sjmp	00193$
00192$:
;	printf_large.c:777: *pstore = value.byte[4];
	push	ar0
	mov	r0,ar2
	mov	ar5,@r0
	pop	ar0
	mov	@r1,ar5
00193$:
;	printf_large.c:779: length++;
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00764$
	inc	r0
	inc	@r0
00764$:
	pop	ar0
;	printf_large.c:780: lsd = !lsd;
	cpl	b5
;	printf_large.c:781: } while( value.ul );
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r7
	jz	00765$
	ljmp	00194$
00765$:
;	printf_large.c:783: if (width == 0)
	mov	ar7,r1
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	inc	r1
	orl	a,@r1
	jnz	00198$
;	printf_large.c:788: width = 1;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	@r1,#0x01
	inc	r1
	mov	@r1,#0x00
00198$:
;	printf_large.c:792: if (!zero_padding && !left_justify)
	jnb	b1,00767$
	ljmp	00203$
00767$:
	jnb	b0,00768$
	ljmp	00203$
00768$:
;	printf_large.c:794: while ( width > (unsigned char) (length+1) )
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar3,@r1
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
00199$:
	push	ar7
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	clr	c
	mov	a,r6
	subb	a,@r1
	mov	a,r7
	inc	r1
	subb	a,@r1
	pop	ar7
	jnc	00333$
;	printf_large.c:796: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00770$
	sjmp	00771$
00770$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00771$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	inc	r4
	cjne	r4,#0x00,00772$
	inc	r3
00772$:
;	printf_large.c:797: width--;
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00773$
	inc	r1
	dec	@r1
00773$:
	sjmp	00199$
00333$:
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar3
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
00203$:
;	printf_large.c:801: if (signed_argument) // this now means the original value was negative
	jnb	b4,00213$
;	printf_large.c:803: OUTPUT_CHAR( '-', p );
	push	ar7
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00775$
	sjmp	00776$
00775$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x2d
	ret
00776$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00777$
	inc	r1
	inc	@r1
00777$:
;	printf_large.c:805: width--;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00778$
	inc	r1
	dec	@r1
00778$:
	ljmp	00214$
00213$:
;	printf_large.c:807: else if (length != 0)
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r1
	inc	r1
	orl	a,@r1
	jnz	00779$
	ljmp	00214$
00779$:
;	printf_large.c:810: if (prefix_sign)
	jnb	b2,00208$
;	printf_large.c:812: OUTPUT_CHAR( '+', p );
	push	ar7
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00781$
	sjmp	00782$
00781$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x2b
	ret
00782$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00783$
	inc	r1
	inc	@r1
00783$:
;	printf_large.c:814: width--;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00784$
	inc	r1
	dec	@r1
00784$:
	sjmp	00214$
00208$:
;	printf_large.c:816: else if (prefix_space)
	jnb	b3,00214$
;	printf_large.c:818: OUTPUT_CHAR( ' ', p );
	push	ar7
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00786$
	sjmp	00787$
00786$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00787$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00788$
	inc	r1
	inc	@r1
00788$:
;	printf_large.c:820: width--;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	dec	@r1
	cjne	@r1,#0xff,00789$
	inc	r1
	dec	@r1
00789$:
00214$:
;	printf_large.c:825: if (!left_justify)
	jnb	b0,00790$
	ljmp	00222$
00790$:
;	printf_large.c:827: while ( width-- > length )
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
00215$:
	push	ar7
	mov	ar6,r3
	mov	ar7,r4
	dec	r3
	cjne	r3,#0xff,00791$
	dec	r4
00791$:
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,r6
	inc	r1
	mov	a,@r1
	subb	a,r7
	pop	ar7
	jc	00792$
	ljmp	00334$
00792$:
;	printf_large.c:829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb	b1,00248$
	mov	r5,#0x30
	mov	r6,#0x00
	sjmp	00249$
00248$:
	mov	r5,#0x20
	mov	r6,#0x00
00249$:
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00794$
	sjmp	00795$
00794$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r5
	ret
00795$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00796$
	inc	r1
	inc	@r1
00796$:
	sjmp	00215$
00222$:
;	printf_large.c:835: if (width > length)
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	pop	ar0
	jnc	00219$
;	printf_large.c:836: width -= length;
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r1
	clr	c
	subb	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	pop	acc
	mov	@r1,a
	dec	r1
	pop	acc
	mov	@r1,a
	pop	ar0
	sjmp	00326$
00219$:
;	printf_large.c:838: width = 0;
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	clr	a
	mov	@r1,a
	inc	r1
	mov	@r1,a
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:842: while( length-- )
	sjmp	00326$
00334$:
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
00326$:
	mov	ar1,r7
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	pop	ar0
00227$:
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xff,00798$
	inc	r0
	dec	@r0
00798$:
	pop	ar0
	mov	a,r3
	orl	a,r6
	jnz	00799$
	ljmp	00335$
00799$:
;	printf_large.c:844: lsd = !lsd;
	cpl	b5
;	printf_large.c:845: if (!lsd)
	jb	b5,00225$
;	printf_large.c:847: pstore++;
	inc	r1
;	printf_large.c:848: value.byte[4] = *pstore >> 4;
	mov	a,@r1
	swap	a
	anl	a,#0x0f
	mov	r6,a
	push	ar0
	mov	r0,ar2
	mov	@r0,ar6
	pop	ar0
	sjmp	00226$
00225$:
;	printf_large.c:852: value.byte[4] = *pstore & 0x0F;
	mov	ar6,@r1
	mov	a,#0x0f
	anl	a,r6
	push	ar0
	mov	r0,ar2
	mov	@r0,a
	pop	ar0
00226$:
;	printf_large.c:855: output_digit( value.byte[4], lower_case, output_char, p );
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	push	ar7
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	push	bits
	mov	b,ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r6
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar7
;	printf_large.c:856: charsOutputted++;
	inc	r4
	cjne	r4,#0x00,00801$
	inc	r7
00801$:
	ljmp	00227$
00335$:
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar7
;	printf_large.c:861: if (left_justify)
	jb	b0,00802$
	ljmp	00243$
00802$:
;	printf_large.c:863: while (width-- > 0)
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
00230$:
	mov	ar3,r4
	mov	ar7,r5
	dec	r4
	cjne	r4,#0xff,00803$
	dec	r5
00803$:
	mov	a,r3
	orl	a,r7
	jnz	00804$
	ljmp	00243$
00804$:
;	printf_large.c:865: OUTPUT_CHAR(' ', p);
	push	ar5
	push	ar4
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00805$
	sjmp	00806$
00805$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,#0x20
	ret
00806$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00807$
	inc	r1
	inc	@r1
00807$:
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	sjmp	00230$
00241$:
;	printf_large.c:873: OUTPUT_CHAR( c, p );
	push	ar2
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	lcall	00808$
	sjmp	00809$
00808$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r6
	ret
00809$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00810$
	inc	r1
	inc	@r1
00810$:
	ljmp	00243$
00245$:
;	printf_large.c:877: return charsOutputted;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	printf_large.c:878: }
	mov	sp,_bp
	pop	_bp
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
