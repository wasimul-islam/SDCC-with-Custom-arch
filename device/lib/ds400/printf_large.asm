;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
_P4	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_P1	=	0x0090
_EXIF	=	0x0091
_P4CNT	=	0x0092
_DPX	=	0x0093
_DPX1	=	0x0095
_SCON0	=	0x0098
_SBUF0	=	0x0099
_ESP	=	0x009b
_AP	=	0x009c
_ACON	=	0x009d
_P2	=	0x00a0
_P5	=	0x00a1
_P5CNT	=	0x00a2
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_PMR	=	0x00c4
_MCON	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RTL2	=	0x00ca
_RCAP2H	=	0x00cb
_RTH2	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_MCNT0	=	0x00d1
_MCNT1	=	0x00d2
_MA	=	0x00d3
_MB	=	0x00d4
_MC	=	0x00d5
_WDCON	=	0x00d8
_ACC	=	0x00e0
_EIE	=	0x00e8
_MXAX	=	0x00ea
_B	=	0x00f0
_EIP	=	0x00f8
_TMR0	=	0x8c8a
_TMR1	=	0x8d8b
_TMR2	=	0xcdcc
_RCAP2	=	0xcbca
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_T2	=	0x0090
_T2EX	=	0x0091
_RXD1	=	0x0092
_TXD1	=	0x0093
_INT2	=	0x0094
_INT3	=	0x0095
_INT4	=	0x0096
_INT5	=	0x0097
_RI_0	=	0x0098
_TI_0	=	0x0099
_RB8_0	=	0x009a
_TB8_0	=	0x009b
_REN_0	=	0x009c
_SM2_0	=	0x009d
_SM1_0	=	0x009e
_SM0_0	=	0x009f
_FE_0	=	0x009f
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_EA	=	0x00af
_RXD0	=	0x00b0
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PT2	=	0x00bd
_PS1	=	0x00be
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_RB8_1	=	0x00c2
_TB8_1	=	0x00c3
_REN_1	=	0x00c4
_SM2_1	=	0x00c5
_SM1_1	=	0x00c6
_SM0_1	=	0x00c7
_FE_1	=	0x00c7
_CP_RL	=	0x00c8
_C_T	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RWT	=	0x00d8
_EWT	=	0x00d9
_WDRF	=	0x00da
_WDIF	=	0x00db
_PFI	=	0x00dc
_EPFI	=	0x00dd
_POR	=	0x00de
_SMOD_1	=	0x00df
_EX2	=	0x00e8
_EX3	=	0x00e9
_EX4	=	0x00ea
_EX5	=	0x00eb
_EWDI	=	0x00ec
_C1IE	=	0x00ed
_C0IE	=	0x00ee
_CANBIE	=	0x00ef
_PX2	=	0x00f8
_PX3	=	0x00f9
_PX4	=	0x00fa
_PX5	=	0x00fb
_PWDI	=	0x00fc
_C1IP	=	0x00fd
_C0IP	=	0x00fe
_CANBIP	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculate_digit_b4_65536_122:
	.ds 1
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
_lower_case:
	.ds 1
_output_char:
	.ds 3
_p:
	.ds 4
_value:
	.ds 5
_charsOutputted:
	.ds 2
_output_float_PARM_2:
	.ds 1
_output_float_PARM_3:
	.ds 1
_output_float_PARM_4:
	.ds 1
_output_float_PARM_5:
	.ds 1
_output_float_PARM_6:
	.ds 1
_output_float_PARM_7:
	.ds 1
_output_float_f_65536_125:
	.ds 4
_output_float_fpBuffer_65536_126:
	.ds 128
_output_float_negative_65536_126:
	.ds 1
_output_float_decimalPart_65536_126:
	.ds 4
_output_float_exp_65536_126:
	.ds 1
_output_float_sloc0_1_0:
	.ds 1
_output_float_sloc1_1_0:
	.ds 4
_output_float_sloc2_1_0:
	.ds 4
_output_float_sloc3_1_0:
	.ds 4
__print_format_PARM_2:
	.ds 4
__print_format_PARM_3:
	.ds 4
__print_format_PARM_4:
	.ds 4
__print_format_left_justify_65536_163:
	.ds 1
__print_format_zero_padding_65536_163:
	.ds 1
__print_format_prefix_sign_65536_163:
	.ds 1
__print_format_prefix_space_65536_163:
	.ds 1
__print_format_signed_argument_65536_163:
	.ds 1
__print_format_char_argument_65536_163:
	.ds 1
__print_format_long_argument_65536_163:
	.ds 1
__print_format_float_argument_65536_163:
	.ds 1
__print_format_radix_65536_163:
	.ds 1
__print_format_decimals_65536_163:
	.ds 2
__print_format_store_262144_185:
	.ds 6
__print_format_pstore_262144_185:
	.ds 3
__print_format_sloc0_1_0:
	.ds 4
__print_format_sloc1_1_0:
	.ds 1
__print_format_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	printf_large.c:107: output_char( c, p );
	mov	dptr,#_p
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#00103$
	push	acc
	mov	a,#(00103$ >> 8)
	push	acc
	mov	a,#(00103$ >> 16)
	push	acc
	mov	dptr,#_output_char
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	ret
00103$:
;	stack adjustment for parms
	pop	acc
	pop	acc
	pop	acc
	pop	acc
;	printf_large.c:108: charsOutputted++;
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00101$:
;	printf_large.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;n                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	mov	r2,dpl
;	printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r2
	mov	r2,a
;	printf_large.c:134: if (c > (unsigned char)'9')
	clr	c
	mov	a,#0x39
	subb	a,r2
	jnc  00104$
00115$:
;	printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r2
	mov	r2,a
;	printf_large.c:137: if (lower_case)
	mov	dptr,#_lower_case
	movx	a,@dptr
	jz  00104$
00116$:
;	printf_large.c:138: c = tolower(c);
	orl	ar2,#0x20
00104$:
;	printf_large.c:140: _output_char( c );
	mov	dpl,r2
	lcall	__output_char
00105$:
;	printf_large.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	mov	r2,dpl
;	printf_large.c:159: output_digit( b>>4   );
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r3,a
	push	ar2
	mov	dpl,r3
	lcall	_output_digit
	pop	ar2
;	printf_large.c:160: output_digit( b&0x0F );
	anl	ar2,#0x0f
	mov	dpl,r2
	lcall	_output_digit
00101$:
;	printf_large.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to registers r2 
;ul                        Allocated to registers r3 r4 r5 r6 
;b4                        Allocated with name '_calculate_digit_b4_65536_122'
;i                         Allocated to registers r0 
;------------------------------------------------------------
;	printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	mov	r2,dpl
;	printf_large.c:191: register unsigned long ul = value.ul;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
;	printf_large.c:192: register unsigned char b4 = value.byte[4];
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r7,a
;	printf_large.c:195: do
;	genAssign: resultIsFar = FALSE
	mov	r0,#0x20
00103$:
;	printf_large.c:197: b4 = (b4 << 1);
	mov	ar1,r7
	mov	a,r1
	add	a,acc
	mov	_calculate_digit_b4_65536_122,a
;	printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	mov	a,r6
	rl	a
	anl	a,#0x01
	mov  r1,a
	orl	a,_calculate_digit_b4_65536_122
	mov	r7,a
;	printf_large.c:199: ul <<= 1;
	mov	a,r3
	add	a,acc
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
	mov	a,r7
	subb	a,r2
	jc   00104$
00124$:
;	printf_large.c:203: b4 -= radix;
	clr	c
	mov	a,r7
	subb	a,r2
	mov	r7,a
;	printf_large.c:204: ul |= 1;
	orl	ar3,#0x01
00104$:
;	printf_large.c:206: } while (--i);
	dec	r0
	mov	a,r0
	jnz  00103$
00125$:
;	printf_large.c:207: value.ul = ul;
	mov	dptr,#_value
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	printf_large.c:208: value.byte[4] = b4;
	mov	dptr,#(_value + 0x000004)
	mov	a,r7
	movx	@dptr,a
00106$:
;	printf_large.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_float'
;------------------------------------------------------------
;reqWidth                  Allocated with name '_output_float_PARM_2'
;reqDecimals               Allocated with name '_output_float_PARM_3'
;left                      Allocated with name '_output_float_PARM_4'
;zero                      Allocated with name '_output_float_PARM_5'
;sign                      Allocated with name '_output_float_PARM_6'
;space                     Allocated with name '_output_float_PARM_7'
;f                         Allocated with name '_output_float_f_65536_125'
;fpBuffer                  Allocated with name '_output_float_fpBuffer_65536_126'
;negative                  Allocated with name '_output_float_negative_65536_126'
;integerPart               Allocated to registers r2 r3 r4 r5 
;rounding                  Allocated to registers r0 r1 r7 r6 
;decimalPart               Allocated with name '_output_float_decimalPart_65536_126'
;fpBI                      Allocated to registers r6 
;fpBD                      Allocated to registers 
;minWidth                  Allocated to registers r2 
;i                         Allocated to registers 
;exp                       Allocated with name '_output_float_exp_65536_126'
;sloc0                     Allocated with name '_output_float_sloc0_1_0'
;sloc1                     Allocated with name '_output_float_sloc1_1_0'
;sloc2                     Allocated with name '_output_float_sloc2_1_0'
;sloc3                     Allocated with name '_output_float_sloc3_1_0'
;------------------------------------------------------------
;	printf_large.c:241: output_float (float f, unsigned char reqWidth,
;	-----------------------------------------
;	 function output_float
;	-----------------------------------------
_output_float:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	printf_large.c:247: _Bool negative = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_negative_65536_126
	clr	a
	movx	@dptr,a
;	printf_large.c:253: signed char exp = -128;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_exp_65536_126
	mov	a,#0x80
	movx	@dptr,a
;	printf_large.c:256: if (f<0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00102$
00439$:
;	printf_large.c:258: negative=1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_negative_65536_126
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:259: f=-f;
	mov	a,r5
	cpl	acc[7]
	mov	r5,a
00102$:
;	printf_large.c:262: if (f>0x00ffffff)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x7fffff
	mov	b,#0x4b
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jnz	00440$
	ljmp	00111$
00440$:
;	printf_large.c:266: for (exp = 0; f >= 10.0; exp++) f /=10.0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_sloc0_1_0
	clr	a
	movx	@dptr,a
00181$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jnz  00205$
00441$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
	mov	dptr,#_output_float_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp 00181$
00205$:
	mov	dptr,#_output_float_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_sloc1_1_0
	movx	@dptr,a
00184$:
;	printf_large.c:267: for (       ; f < 1.0;   exp--) f *=10.0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3f
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00246$
00442$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov  dptr,#0x0000
	mov	dpx,#0x20
	mov	b,#0x41
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
	mov	dptr,#_output_float_sloc1_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	sjmp 00184$
00246$:
	mov	dptr,#_output_float_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_exp_65536_126
	movx	@dptr,a
;	printf_large.c:269: if (negative)
	mov	dptr,#_output_float_negative_65536_126
	movx	a,@dptr
	jz  00108$
00443$:
;	printf_large.c:271: OUTPUT_CHAR ('-', p);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,#0x2d
	lcall	__output_char
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00109$
00108$:
;	printf_large.c:275: if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz  00109$
00444$:
;	printf_large.c:277: OUTPUT_CHAR ('+', p);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,#0x2b
	lcall	__output_char
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00109$:
;	printf_large.c:280: reqWidth = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
;	printf_large.c:281: left = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:282: zero = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:283: sign = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#_output_float_PARM_4
	movx  @dptr,a
	mov   dptr,#_output_float_PARM_5
	movx  @dptr,a
	mov   dptr,#_output_float_PARM_6
	movx  @dptr,a
;	printf_large.c:284: space = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_7
	clr	a
	movx	@dptr,a
00111$:
;	printf_large.c:288: if (reqDecimals==-1)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	cjne a,#0xff,00113$
00446$:
;	printf_large.c:289: reqDecimals=DEFAULT_FLOAT_PRECISION;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_3
	mov	a,#0x06
	movx	@dptr,a
00113$:
;	printf_large.c:292: rounding = 0.5;
;	genAssign: resultIsFar = TRUE
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r7,#0x00
	mov	r6,#0x3f
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_sloc2_1_0
	movx	@dptr,a
00187$:
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	jz  00114$
00447$:
;	printf_large.c:295: rounding /= 10.0;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r7
	mov	b,r6
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	ar0,r2
	mov	ar1,r3
	mov	ar7,r4
	mov	ar6,r5
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00187$
00114$:
;	printf_large.c:297: f += rounding;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_f_65536_125
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:300: integerPart = f;
	inc	dps
	mov	dptr,#_output_float_f_65536_125
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fs2ulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = FALSE
;	printf_large.c:301: decimalPart = f - integerPart;
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___ulong2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_output_float_f_65536_125
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = FALSE
;	printf_large.c:304: while (integerPart)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_sloc2_1_0
	clr	a
	movx	@dptr,a
00115$:
	mov	a,r6
	orl	a,r7
	orl	a,r0
	orl	a,r1
	jnz	00448$
	ljmp	00248$
00448$:
;	printf_large.c:306: fpBuffer[fpBI++]='0' + integerPart%10;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_output_float_sloc2_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_output_float_sloc1_1_0
	mov	a,r2
	add	a,#_output_float_fpBuffer_65536_126
	movx	@dptr,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 16)
	inc	dptr
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__modulong
	mov	r5,dpl
	mov	r2,dph
	mov	r3,dpx
	mov	r4,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	mov	dptr,#_output_float_sloc1_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:307: integerPart /= 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00115$
00248$:
	mov	dptr,#_output_float_sloc2_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r6,a
;	printf_large.c:309: if (!fpBI)
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	jnz  00119$
00449$:
;	printf_large.c:312: fpBuffer[fpBI++]='0';
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	mov	dptr,#_output_float_sloc2_1_0
	movx	a,@dptr
	add	a,#_output_float_fpBuffer_65536_126
	mov	r7,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 8)
	mov	r0,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 16)
	mov	r1,a
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	a,#0x30
	movx	@dptr,a
00119$:
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
;	genAssign: resultIsFar = FALSE
	mov	ar7,r6
00190$:
	mov	a,r0
	jnz  00189$
00450$:
;	genAssign: resultIsFar = FALSE
	mov	ar1,r0
	ljmp	00120$
00189$:
;	printf_large.c:320: decimalPart *= 10.0;
	push	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	mov  dptr,#0x0000
	mov	dpx,#0x20
	mov	b,#0x41
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_decimalPart_65536_126
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:322: integerPart = decimalPart;
	push	ar6
	push	ar7
	push	ar0
	inc	dps
	mov	dptr,#_output_float_decimalPart_65536_126
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fs2ulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = FALSE
;	printf_large.c:323: fpBuffer[fpBD++] = '0' + integerPart;
	mov	a,r7
	add	a,#_output_float_fpBuffer_65536_126
	mov	dpl1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 16)
	mov	dpx1,a
	inc	r7
	mov	ar6,r2
	mov	a,#0x30
	add	a,r6
	mov  r6,a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:324: decimalPart -= integerPart;
	push	ar6
	push	ar7
	push	ar0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___ulong2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	inc	dps
	mov	dptr,#_output_float_decimalPart_65536_126
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fssub
	mov     dps, #1
	mov     dptr, #_output_float_sloc3_1_0
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_output_float_sloc3_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	dec	r0
	pop	ar6
	ljmp	00190$
00120$:
;	printf_large.c:327: minWidth=fpBI; // we need at least these
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
;	printf_large.c:328: minWidth+=reqDecimals?reqDecimals+1:0; // maybe these
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	jz  00198$
00451$:
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	add	a,#0x01
	mov  r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	sjmp 00199$
00198$:
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x00
	mov	r4,#0x00
00199$:
	mov	a,r3
	add	a,r2
	mov	r2,a
;	printf_large.c:329: if (negative || sign || space)
	mov	dptr,#_output_float_negative_65536_126
	movx	a,@dptr
	jnz  00121$
00452$:
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jnz  00121$
00453$:
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz  00122$
00454$:
00121$:
;	printf_large.c:330: minWidth++; // and maybe even this :)
	inc	r2
00122$:
;	printf_large.c:332: if (!left && reqWidth>i)
	mov	dptr,#_output_float_PARM_4
	movx	a,@dptr
	jz	00455$
	ljmp	00159$
00455$:
	mov	dptr,#_output_float_PARM_2
	clr	c
	mov	a,r1
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00456$
	ljmp	00159$
00456$:
;	printf_large.c:334: if (zero)
	mov	dptr,#_output_float_PARM_5
	movx	a,@dptr
	jz   00228$
00457$:
;	printf_large.c:336: if (negative)
	mov	dptr,#_output_float_negative_65536_126
	movx	a,@dptr
	jz  00131$
00458$:
;	printf_large.c:338: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2d
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00226$
00131$:
;	printf_large.c:340: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz  00128$
00459$:
;	printf_large.c:342: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2b
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00226$
00128$:
;	printf_large.c:344: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz  00226$
00460$:
;	printf_large.c:346: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar2
;	printf_large.c:348: while (reqWidth-->minWidth)
00226$:
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
00133$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	dec	r3
	clr	c
	mov	a,r2
	subb	a,r4
	jc	00461$
	ljmp	00250$
00461$:
;	printf_large.c:350: OUTPUT_CHAR('0', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x30
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
;	printf_large.c:355: while (reqWidth-->minWidth)
	sjmp 00133$
00228$:
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00136$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	clr	c
	mov	a,r2
	subb	a,r5
	jnc  00251$
00462$:
;	printf_large.c:357: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar4
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar4
	pop	ar2
	sjmp 00136$
00251$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
	mov	a,r4
	movx	@dptr,a
;	printf_large.c:359: if (negative)
	mov	dptr,#_output_float_negative_65536_126
	movx	a,@dptr
	jz  00145$
00463$:
;	printf_large.c:361: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2d
	lcall	__output_char
	pop	ar6
	pop	ar2
	ljmp	00160$
00145$:
;	printf_large.c:363: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz  00142$
00464$:
;	printf_large.c:365: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2b
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00160$
00142$:
;	printf_large.c:367: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz  00160$
00465$:
;	printf_large.c:369: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00160$
00159$:
;	printf_large.c:375: if (negative)
	mov	dptr,#_output_float_negative_65536_126
	movx	a,@dptr
	jz  00156$
00466$:
;	printf_large.c:377: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2d
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00160$
00156$:
;	printf_large.c:379: else if (sign)
	mov	dptr,#_output_float_PARM_6
	movx	a,@dptr
	jz  00153$
00467$:
;	printf_large.c:381: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2b
	lcall	__output_char
	pop	ar6
	pop	ar2
	sjmp 00160$
00153$:
;	printf_large.c:383: else if (space)
	mov	dptr,#_output_float_PARM_7
	movx	a,@dptr
	jz  00160$
00468$:
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar2
;	printf_large.c:428: return;
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	sjmp 00160$
00250$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
	mov	a,r3
	movx	@dptr,a
00160$:
;	printf_large.c:390: i=fpBI-1;
	mov	ar3,r6
	dec	r3
;	printf_large.c:391: do {
00162$:
;	printf_large.c:392: OUTPUT_CHAR (fpBuffer[i], p);
	mov	a,r3
	add	a,#_output_float_fpBuffer_65536_126
	mov	dpl1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 16)
	mov	dpx1,a
	inc	dps
	movx	a,@dptr
	mov	r4,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,r4
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
;	printf_large.c:393: } while (i--);
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jnz  00162$
00469$:
;	printf_large.c:396: if (reqDecimals)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	jz  00169$
00470$:
;	printf_large.c:398: OUTPUT_CHAR ('.', p);
	push	ar2
	push	ar6
	mov	dpl,#0x2e
	lcall	__output_char
	pop	ar6
	pop	ar2
;	printf_large.c:400: while (reqDecimals--)
;	genAssign: resultIsFar = FALSE
	mov	ar3,r6
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00165$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jz  00169$
00471$:
;	printf_large.c:402: OUTPUT_CHAR (fpBuffer[i++], p);
	mov	a,r3
	add	a,#_output_float_fpBuffer_65536_126
	mov	dpl1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_65536_126 >> 16)
	mov	dpx1,a
	inc	r3
	inc	dps
	movx	a,@dptr
	mov	r5,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	lcall	__output_char
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00165$
00169$:
;	printf_large.c:406: if (left && reqWidth>minWidth)
	mov	dptr,#_output_float_PARM_4
	movx	a,@dptr
	jz  00174$
00472$:
	mov	dptr,#_output_float_PARM_2
	clr	c
	mov	a,r2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00174$
00473$:
;	printf_large.c:408: while (reqWidth-->minWidth)
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
00170$:
	clr	c
	mov	a,r2
	subb	a,r3
	jnc  00174$
00474$:
	dec	r3
;	printf_large.c:410: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar3
	pop	ar2
	sjmp 00170$
00174$:
;	printf_large.c:414: if (exp != -128)
	mov	dptr,#_output_float_exp_65536_126
	movx	a,@dptr
	cjne	a,#0x80,00475$
	ljmp	00179$
00475$:
;	printf_large.c:416: OUTPUT_CHAR ('e', p);
	mov	dpl,#0x65
	lcall	__output_char
;	printf_large.c:417: if (exp<0)
	mov	dptr,#_output_float_exp_65536_126
	movx	a,@dptr
	jnb  acc[7],00177$
00476$:
;	printf_large.c:419: OUTPUT_CHAR ('-', p);
	mov	dpl,#0x2d
	lcall	__output_char
;	printf_large.c:420: exp = -exp;
	mov	dptr,#_output_float_exp_65536_126
	mov	dps, #1
	mov	dptr, #_output_float_exp_65536_126
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	inc	dps
	movx	@dptr,a
	mov	dps,#0
00177$:
;	printf_large.c:422: OUTPUT_CHAR ('0'+exp/10, p);
	mov	dptr,#_output_float_exp_65536_126
	movx	a,@dptr
	mov	r2,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	push	ar2
	push	ar3
	mov	dpl,r4
	lcall	__output_char
	pop	ar3
	pop	ar2
;	printf_large.c:423: OUTPUT_CHAR ('0'+exp%10, p);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	dpl,r2
	lcall	__output_char
00179$:
;	printf_large.c:428: return;
00192$:
;	printf_large.c:430: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;left_justify              Allocated with name '__print_format_left_justify_65536_163'
;zero_padding              Allocated with name '__print_format_zero_padding_65536_163'
;prefix_sign               Allocated with name '__print_format_prefix_sign_65536_163'
;prefix_space              Allocated with name '__print_format_prefix_space_65536_163'
;signed_argument           Allocated with name '__print_format_signed_argument_65536_163'
;char_argument             Allocated with name '__print_format_char_argument_65536_163'
;long_argument             Allocated with name '__print_format_long_argument_65536_163'
;float_argument            Allocated with name '__print_format_float_argument_65536_163'
;lsd                       Allocated to registers r2 
;radix                     Allocated with name '__print_format_radix_65536_163'
;width                     Allocated to registers 
;decimals                  Allocated with name '__print_format_decimals_65536_163'
;length                    Allocated to registers r6 r7 
;c                         Allocated to registers r2 
;memtype                   Allocated to registers r6 
;store                     Allocated with name '__print_format_store_262144_185'
;pstore                    Allocated with name '__print_format_pstore_262144_185'
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	mov     dps, #1
	mov     dptr, #_output_char
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:462: p = pvoid;
	mov	dptr,#__print_format_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_p
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:466: charsOutputted = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_charsOutputted
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:469: if (format==0)
	mov	dptr,#__print_format_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00253$
00653$:
;	printf_large.c:471: format=NULL_STRING;
	mov	dptr,#__print_format_PARM_3
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	printf_large.c:475: while( c=*format++ )
00253$:
00242$:
	mov	dptr,#__print_format_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#__print_format_PARM_3
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	a,r6
	jnz	00654$
	ljmp	00244$
00654$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r2,#0x25,00655$
	sjmp	00656$
00655$:
	ljmp	00240$
00656$:
;	printf_large.c:479: left_justify    = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_left_justify_65536_163
;	printf_large.c:480: zero_padding    = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:481: prefix_sign     = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:482: prefix_space    = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_zero_padding_65536_163
	movx  @dptr,a
	mov   dptr,#__print_format_prefix_sign_65536_163
	movx  @dptr,a
	mov   dptr,#__print_format_prefix_space_65536_163
	movx  @dptr,a
;	printf_large.c:483: signed_argument = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_65536_163
;	printf_large.c:484: char_argument   = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:485: long_argument   = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:486: float_argument  = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_char_argument_65536_163
	movx  @dptr,a
	mov   dptr,#__print_format_long_argument_65536_163
	movx  @dptr,a
	mov   dptr,#__print_format_float_argument_65536_163
	movx  @dptr,a
;	printf_large.c:487: radix           = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_65536_163
;	printf_large.c:488: width           = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_sloc2_1_0
	movx  @dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:489: decimals        = -1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_decimals_65536_163
	mov  a,#0xff
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	printf_large.c:491: get_conversion_spec:
	mov	dptr,#__print_format_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00103$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r2
	mov	dph,r6
	mov	dpx,r0
	mov	b,r1
	mov	dps, #1
	mov	dptr, #__print_format_sloc1_1_0
	dec	dps
	lcall	__gptrget
	mov	dps,#1
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	mov	r2,dpl
	mov	r6,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	printf_large.c:495: if (c=='%')
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne a,#0x25,00105$
00658$:
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	mov	dpl,a
	lcall	__output_char
;	printf_large.c:498: continue;
	ljmp	00242$
00105$:
;	printf_large.c:501: if (isdigit(c))
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x30,00659$
00659$:
	jnc	00660$
	ljmp	00112$
00660$:
	mov	dptr,#__print_format_sloc1_1_0
	clr	c
	mov	a,#0x39
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc	00661$
	ljmp	00112$
00661$:
;	printf_large.c:503: if (decimals==-1)
	mov	dptr,#__print_format_decimals_65536_163
	movx	a,@dptr
	cjne	a,#0xff,00662$
	inc	dptr
	movx	a,@dptr
	cjne	a,#0xff,00662$
	sjmp	00663$
00662$:
	sjmp 00109$
00663$:
;	printf_large.c:505: width = 10*width + c - '0';
	mov	dptr,#__print_format_sloc2_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar6
	push	ar0
	push	ar1
	mov  dptr,#0x000a
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar1
	pop	ar0
	pop	ar6
	pop	ar2
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,r3
	add	a,#0xd0
	movx	@dptr,a
	mov	a,r4
	addc	a,#0xff
	inc	dptr
	movx	@dptr,a
;	printf_large.c:506: if (width == 0)
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00664$
	ljmp	00103$
00664$:
;	printf_large.c:509: zero_padding = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_zero_padding_65536_163
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00103$
00109$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	mov	dptr,#__print_format_decimals_65536_163
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar6
	push	ar0
	push	ar1
	mov  dptr,#0x000a
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar1
	pop	ar0
	pop	ar6
	pop	ar2
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	a,r7
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_decimals_65536_163
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00103$
00112$:
;	printf_large.c:519: if (c=='.')
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne a,#0x2e,00117$
00666$:
;	printf_large.c:521: if (decimals==-1)
	mov	dptr,#__print_format_decimals_65536_163
	movx	a,@dptr
	cjne	a,#0xff,00667$
	inc	dptr
	movx	a,@dptr
	cjne	a,#0xff,00667$
	sjmp	00668$
00667$:
	ljmp	00103$
00668$:
;	printf_large.c:522: decimals=0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_decimals_65536_163
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00103$
00117$:
;	printf_large.c:528: if (islower(c))
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x61,00669$
00669$:
	jc   00119$
00670$:
	mov	dptr,#__print_format_sloc1_1_0
	clr	c
	mov	a,#0x7a
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00119$
00671$:
;	printf_large.c:530: c = toupper(c);
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	anl	a,#0xdf
	movx	@dptr,a
;	printf_large.c:531: lower_case = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_lower_case
	mov	a,#0x01
	movx	@dptr,a
	sjmp 00120$
00119$:
;	printf_large.c:534: lower_case = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_lower_case
	clr	a
	movx	@dptr,a
00120$:
;	printf_large.c:536: switch( c )
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x20,00672$
	ljmp	00124$
00672$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x2b,00673$
	ljmp	00123$
00673$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x2d,00674$
	ljmp	00122$
00674$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x42,00675$
	ljmp	00125$
00675$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x43,00676$
	ljmp	00131$
00676$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x44,00677$
	ljmp	00168$
00677$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x46,00678$
	ljmp	00172$
00678$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x48,00679$
	ljmp	00103$
00679$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x49,00680$
	ljmp	00168$
00680$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x4a,00681$
	ljmp	00103$
00681$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x4c,00682$
	ljmp	00130$
00682$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x4f,00683$
	ljmp	00169$
00683$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x50,00684$
	ljmp	00157$
00684$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x53,00685$
	ljmp	00135$
00685$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x54,00686$
	ljmp	00103$
00686$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x55,00687$
	ljmp	00170$
00687$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x58,00688$
	ljmp	00171$
00688$:
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x5a,00689$
	ljmp	00103$
00689$:
	ljmp	00173$
;	printf_large.c:538: case '-':
00122$:
;	printf_large.c:539: left_justify = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_left_justify_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:541: case '+':
00123$:
;	printf_large.c:542: prefix_sign = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_prefix_sign_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:544: case ' ':
00124$:
;	printf_large.c:545: prefix_space = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_prefix_space_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:547: case 'B': /* byte */
00125$:
;	printf_large.c:548: char_argument = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_char_argument_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:556: case 'L': /* long */
00130$:
;	printf_large.c:557: long_argument = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_long_argument_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:560: case 'C':
00131$:
;	printf_large.c:561: if( char_argument )
	mov	dptr,#__print_format_char_argument_65536_163
	movx	a,@dptr
	jz  00133$
00690$:
;	printf_large.c:562: c = va_arg(ap,char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	dec	r4
	cjne	r4,#0xff,00691$
	dec	r5
	cjne	r5,#0xff,00691$
	dec	r7
00691$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
;	genAssign: resultIsFar = FALSE
	mov	ar2,r4
	sjmp 00134$
00133$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
;	genAssign: resultIsFar = FALSE
	mov	ar2,r4
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:564: c = va_arg(ap,int);
00134$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	mov	dpl,r2
	lcall	__output_char
;	printf_large.c:566: break;
	ljmp	00174$
;	printf_large.c:568: case 'S':
00135$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,#0xfc
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r3
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r7,a
	mov	r3,acc1
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:572: if (PTR==0)
	mov	a,r4
	orl	a,r5
	orl	a,r7
	jnz  00137$
00692$:
;	printf_large.c:574: PTR=NULL_STRING;
	mov	dptr,#_value
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	printf_large.c:575: length=NULL_STRING_LENGTH;
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x06
	mov	r5,#0x00
	sjmp 00138$
00137$:
;	printf_large.c:579: length = strlen(PTR);
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r7
	mov	dph,r3
	mov	dpx,r1
	mov	b,r6
	lcall	_strlen
	mov	r3,dpl
	mov	r6,dph
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	mov	ar5,r6
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:579: length = strlen(PTR);
00138$:
;	printf_large.c:584: if ( decimals == -1 )
	mov	dptr,#__print_format_decimals_65536_163
	movx	a,@dptr
	cjne	a,#0xff,00693$
	inc	dptr
	movx	a,@dptr
	cjne	a,#0xff,00693$
	sjmp	00694$
00693$:
	sjmp 00140$
00694$:
;	printf_large.c:586: decimals = length;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_decimals_65536_163
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00140$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	mov	dptr,#__print_format_left_justify_65536_163
	movx	a,@dptr
	jnz  00290$
00695$:
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	mov	a,r4
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r5
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00290$
00696$:
;	printf_large.c:590: width -= length;
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	movx	a,@dptr
	subb	a,r4
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	subb	a,r5
	mov	r7,a
;	printf_large.c:591: while( width-- != 0 )
00141$:
;	genAssign: resultIsFar = FALSE
	mov	ar0,r6
	mov	ar1,r7
	dec	r6
	cjne	r6,#0xff,00697$
	dec	r7
00697$:
	mov	a,r0
	orl	a,r1
	jz  00326$
00698$:
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp 00141$
00326$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00290$:
	mov	dptr,#__print_format_decimals_65536_163
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00148$:
	push	ar4
	push	ar5
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
;	genAssign: resultIsFar = FALSE
	mov	ar2,r0
	pop	ar5
	pop	ar4
	mov	a,r0
	jz  00327$
00699$:
;	genAssign: resultIsFar = FALSE
	mov	ar0,r6
	mov	ar1,r7
	dec	r6
	cjne	r6,#0xff,00700$
	dec	r7
00700$:
	clr	c
	clr	a
	subb	a,r0
	clr	a
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc  00327$
00701$:
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar4
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	lcall	__output_char
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	printf_large.c:600: PTR++;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	inc	r0
	cjne	r0,#0x00,00702$
	inc	r1
	cjne	r1,#0x00,00702$
	inc	r4
00702$:
	mov	dptr,#_value
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	00148$
00327$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_decimals_65536_163
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:603: if ( left_justify && (length < width))
	mov	dptr,#__print_format_left_justify_65536_163
	movx	a,@dptr
	jnz	00703$
	ljmp	00174$
00703$:
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	mov	a,r4
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r5
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00704$
	ljmp	00174$
00704$:
;	printf_large.c:605: width -= length;
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	movx	a,@dptr
	subb	a,r4
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	subb	a,r5
	mov	r5,a
;	printf_large.c:606: while( width-- != 0 )
00151$:
;	genAssign: resultIsFar = FALSE
	mov	ar6,r4
	mov	ar7,r5
	dec	r4
	cjne	r4,#0xff,00705$
	dec	r5
00705$:
	mov	a,r6
	orl	a,r7
	jnz	00706$
	ljmp	00328$
00706$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar4
	push	ar5
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar5
	pop	ar4
;	printf_large.c:613: case 'P':
	sjmp 00151$
00157$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,#0xfc
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	a,r0
	addc	a,#0xff
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	mov	dptr,#_value
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	printf_large.c:618: unsigned char memtype = value.byte[3];
	mov	dptr,#(_value + 0x000003)
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
;	printf_large.c:619: if (memtype >= 0x80)
	cjne	r6,#0x80,00707$
00707$:
	jc   00165$
00708$:
;	printf_large.c:620: c = 'C';
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x43
	sjmp 00166$
00165$:
;	printf_large.c:621: else if (memtype >= 0x60)
	cjne	r6,#0x60,00709$
00709$:
	jc   00162$
00710$:
;	printf_large.c:622: c = 'P';
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x50
	sjmp 00166$
00162$:
;	printf_large.c:623: else if (memtype >= 0x40)
	cjne	r6,#0x40,00711$
00711$:
	jc   00159$
00712$:
;	printf_large.c:624: c = 'I';
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x49
	sjmp 00166$
00159$:
;	printf_large.c:626: c = 'X';
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x58
00166$:
;	printf_large.c:628: OUTPUT_CHAR(c, p);
	mov	dpl,r7
	lcall	__output_char
;	printf_large.c:629: OUTPUT_CHAR(':', p);
	mov	dpl,#0x3a
	lcall	__output_char
;	printf_large.c:630: OUTPUT_CHAR('0', p);
	mov	dpl,#0x30
	lcall	__output_char
;	printf_large.c:631: OUTPUT_CHAR('x', p);
	mov	dpl,#0x78
	lcall	__output_char
;	printf_large.c:632: OUTPUT_2DIGITS( value.byte[2] );
	mov	dptr,#(_value + 0x000002)
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r6
	lcall	_output_2digits
;	printf_large.c:633: OUTPUT_2DIGITS( value.byte[1] );
	mov	dptr,#(_value + 0x000001)
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r6
	lcall	_output_2digits
;	printf_large.c:634: OUTPUT_2DIGITS( value.byte[0] );
	mov	dptr,#_value
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r6
	lcall	_output_2digits
;	printf_large.c:668: break;
;	printf_large.c:671: case 'I':
	sjmp 00174$
00168$:
;	printf_large.c:672: signed_argument = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:673: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_65536_163
	mov	a,#0x0a
	movx	@dptr,a
;	printf_large.c:674: break;
;	printf_large.c:676: case 'O':
	sjmp 00174$
00169$:
;	printf_large.c:677: radix = 8;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_65536_163
	mov	a,#0x08
	movx	@dptr,a
;	printf_large.c:678: break;
;	printf_large.c:680: case 'U':
	sjmp 00174$
00170$:
;	printf_large.c:681: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_65536_163
	mov	a,#0x0a
	movx	@dptr,a
;	printf_large.c:682: break;
;	printf_large.c:684: case 'X':
	sjmp 00174$
00171$:
;	printf_large.c:685: radix = 16;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_65536_163
	mov	a,#0x10
	movx	@dptr,a
;	printf_large.c:686: break;
;	printf_large.c:688: case 'F':
	sjmp 00174$
00172$:
;	printf_large.c:689: float_argument=1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_float_argument_65536_163
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:690: break;
;	printf_large.c:692: default:
	sjmp 00174$
00173$:
;	printf_large.c:694: OUTPUT_CHAR( c, p );
	mov	dptr,#__print_format_sloc1_1_0
	movx	a,@dptr
	mov	dpl,a
	lcall	__output_char
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:696: }
	sjmp 00174$
00328$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00174$:
;	printf_large.c:698: if (float_argument)
	mov	dptr,#__print_format_float_argument_65536_163
	movx	a,@dptr
	jnz	00713$
	ljmp	00237$
00713$:
;	printf_large.c:700: value.f = va_arg(ap, float);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfc
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:718: OUTPUT_FLOAT(value.f, width, decimals, left_justify,
	mov	dptr,#__print_format_sloc2_1_0
	mov	dps, #1
	mov	dptr, #_output_float_PARM_2
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	mov	dps, #1
	mov	dptr, #_output_float_PARM_3
	dec	dps
	mov	dptr, #__print_format_decimals_65536_163
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#__print_format_left_justify_65536_163
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_PARM_4
	movx	@dptr,a
	mov	dptr,#__print_format_zero_padding_65536_163
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_PARM_5
	movx	@dptr,a
	mov	dptr,#__print_format_prefix_sign_65536_163
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_PARM_6
	movx	@dptr,a
	mov	dptr,#__print_format_prefix_space_65536_163
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_PARM_7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	_output_float
	ljmp	00242$
00237$:
;	printf_large.c:723: else if (radix != 0)
	mov	dptr,#__print_format_radix_65536_163
	movx	a,@dptr
	jnz	00714$
	ljmp	00242$
00714$:
;	printf_large.c:728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	printf_large.c:731: if (char_argument)
	mov	dptr,#__print_format_char_argument_65536_163
	movx	a,@dptr
	jnz	00715$
	ljmp	00183$
00715$:
;	printf_large.c:733: value.l = va_arg(ap, char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r4
	cjne	r4,#0xff,00716$
	dec	r5
	cjne	r5,#0xff,00716$
	dec	r6
00716$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:734: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_65536_163
	movx	a,@dptr
	jz	00717$
	ljmp	00184$
00717$:
;	printf_large.c:736: value.l &= 0xFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00184$
00183$:
;	printf_large.c:739: else if (long_argument)
	mov	dptr,#__print_format_long_argument_65536_163
	movx	a,@dptr
	jz  00180$
00718$:
;	printf_large.c:741: value.l = va_arg(ap, long);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfc
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp 00184$
00180$:
;	printf_large.c:745: value.l = va_arg(ap, int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:746: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_65536_163
	movx	a,@dptr
	jnz  00184$
00719$:
;	printf_large.c:748: value.l &= 0xFFFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00184$:
;	printf_large.c:752: if ( signed_argument )
	mov	dptr,#__print_format_signed_argument_65536_163
	movx	a,@dptr
	jz  00189$
00720$:
;	printf_large.c:754: if (value.l < 0)
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov  r7,a
	jnb  acc[7],00186$
00721$:
;	printf_large.c:755: value.l = -value.l;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
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
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp 00189$
00186$:
;	printf_large.c:757: signed_argument = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_65536_163
	clr	a
	movx	@dptr,a
00189$:
;	printf_large.c:761: lsd = 1;
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x01
;	printf_large.c:763: do {
;	genAssign: resultIsFar = FALSE
	mov	r5,#(__print_format_store_262144_185 + 0x000005)
	mov	r6,#((__print_format_store_262144_185 + 0x000005) >> 8)
	mov	r7,#((__print_format_store_262144_185 + 0x000005) >> 16)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc0_1_0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00193$:
;	printf_large.c:764: value.byte[4] = 0;
	mov	dptr,#(_value + 0x000004)
	clr	a
	movx	@dptr,a
;	printf_large.c:768: calculate_digit(radix);
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#__print_format_radix_65536_163
	movx	a,@dptr
	mov	dpl,a
	lcall	_calculate_digit
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	printf_large.c:770: if (!lsd)
	mov	a,r2
	jnz  00191$
00722$:
;	printf_large.c:772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r3,a
	swap	a
	anl	a,#0xf0
	mov	r3,a
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r4,a
	swap	a
	anl	a,#0x0f
	mov  r4,a
	orl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	dpx,r7
	movx	a,@dptr
	mov  r4,a
	orl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	dpx,r7
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:773: pstore--;
	dec	r5
	cjne	r5,#0xff,00723$
	dec	r6
	cjne	r6,#0xff,00723$
	dec	r7
00723$:
	sjmp 00192$
00191$:
;	printf_large.c:777: *pstore = value.byte[4];
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r4,a
	mov  dpl,r5
	mov  dph,r6
	mov  dpx,r7
	movx	@dptr,a
00192$:
;	printf_large.c:779: length++;
	mov	dptr,#__print_format_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	printf_large.c:780: lsd = !lsd;
	mov	a,r2
	cjne	a,#0x01,00724$
00724$:
	clr	a
	rlc	a
	mov	r2,a
;	printf_large.c:781: } while( value.ul );
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	r1,a
	mov	a,r4
	orl	a,r3
	orl	a,r0
	orl	a,r1
	jz	00725$
	ljmp	00193$
00725$:
;	printf_large.c:783: if (width == 0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_pstore_262144_185
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#__print_format_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00197$
00726$:
;	printf_large.c:788: width = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00197$:
;	printf_large.c:792: if (!zero_padding && !left_justify)
	mov	dptr,#__print_format_zero_padding_65536_163
	movx	a,@dptr
	jnz  00202$
00727$:
	mov	dptr,#__print_format_left_justify_65536_163
	movx	a,@dptr
	jnz  00202$
00728$:
;	printf_large.c:794: while ( width > (unsigned char) (length+1) )
	mov	dptr,#__print_format_sloc2_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00198$:
	mov	ar3,r6
	inc	r3
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r0
	mov	a,r4
	subb	a,r1
	jnc  00330$
00729$:
;	printf_large.c:796: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar2
;	printf_large.c:797: width--;
	dec	r0
	cjne	r0,#0xff,00730$
	dec	r1
00730$:
	sjmp 00198$
00330$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
00202$:
;	printf_large.c:801: if (signed_argument) // this now means the original value was negative
	mov	dptr,#__print_format_signed_argument_65536_163
	movx	a,@dptr
	jz  00212$
00731$:
;	printf_large.c:803: OUTPUT_CHAR( '-', p );
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,#0x2d
	lcall	__output_char
	pop	ar7
	pop	ar6
	pop	ar2
;	printf_large.c:805: width--;
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	sjmp 00213$
00212$:
;	printf_large.c:807: else if (length != 0)
	mov	a,r6
	orl	a,r7
	jz  00213$
00732$:
;	printf_large.c:810: if (prefix_sign)
	mov	dptr,#__print_format_prefix_sign_65536_163
	movx	a,@dptr
	jz  00207$
00733$:
;	printf_large.c:812: OUTPUT_CHAR( '+', p );
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,#0x2b
	lcall	__output_char
	pop	ar7
	pop	ar6
	pop	ar2
;	printf_large.c:814: width--;
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	sjmp 00213$
00207$:
;	printf_large.c:816: else if (prefix_space)
	mov	dptr,#__print_format_prefix_space_65536_163
	movx	a,@dptr
	jz  00213$
00734$:
;	printf_large.c:818: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar7
	pop	ar6
	pop	ar2
;	printf_large.c:820: width--;
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
00213$:
;	printf_large.c:825: if (!left_justify)
	mov	dptr,#__print_format_left_justify_65536_163
	movx	a,@dptr
	jnz  00221$
00735$:
;	printf_large.c:827: while ( width-- > length )
	mov	dptr,#__print_format_sloc2_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00214$:
;	genAssign: resultIsFar = FALSE
	mov	ar3,r0
	mov	ar4,r1
	dec	r0
	cjne	r0,#0xff,00736$
	dec	r1
00736$:
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc  00331$
00737$:
;	printf_large.c:829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	mov	dptr,#__print_format_zero_padding_65536_163
	movx	a,@dptr
	jz  00247$
00738$:
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x30
	mov	r4,#0x00
	sjmp 00248$
00247$:
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x20
	mov	r4,#0x00
00248$:
	push	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r3
	lcall	__output_char
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar2
	sjmp 00214$
00221$:
;	printf_large.c:835: if (width > length)
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	mov	a,r6
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r7
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00218$
00739$:
;	printf_large.c:836: width -= length;
	mov	dptr,#__print_format_sloc2_1_0
	clr	c
	movx	a,@dptr
	subb	a,r6
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	subb	a,r7
	movx	@dptr,a
	sjmp 00323$
00218$:
;	printf_large.c:838: width = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:877: return charsOutputted;
;	printf_large.c:842: while( length-- )
	sjmp 00323$
00331$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_sloc2_1_0
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
00323$:
	mov	dptr,#__print_format_pstore_262144_185
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign: resultIsFar = FALSE
00226$:
;	genAssign: resultIsFar = FALSE
	mov	ar3,r6
	mov	ar4,r7
	dec	r6
	cjne	r6,#0xff,00740$
	dec	r7
00740$:
	mov	a,r3
	orl	a,r4
	jz  00228$
00741$:
;	printf_large.c:844: lsd = !lsd;
	mov	a,r2
	cjne	a,#0x01,00742$
00742$:
	clr	a
	rlc	a
;	printf_large.c:845: if (!lsd)
	mov  r2,a
	jnz  00224$
00743$:
;	printf_large.c:847: pstore++;
	inc	r5
	cjne	r5,#0x00,00744$
	inc	r0
	cjne	r0,#0x00,00744$
	inc	r1
00744$:
;	printf_large.c:848: value.byte[4] = *pstore >> 4;
	mov	dpl,r5
	mov	dph,r0
	mov	dpx,r1
	movx	a,@dptr
	mov  r3,a
	swap	a
	anl	a,#0x0f
	mov  r3,a
	mov  dptr,#(_value + 0x000004)
	movx @dptr,a
	sjmp 00225$
00224$:
;	printf_large.c:852: value.byte[4] = *pstore & 0x0F;
	mov	dpl,r5
	mov	dph,r0
	mov	dpx,r1
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0f
	mov	dptr,#(_value + 0x000004)
	mov	a,r3
	movx	@dptr,a
00225$:
;	printf_large.c:858: output_digit( value.byte[4] );
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r3,a
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r3
	lcall	_output_digit
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
	sjmp 00226$
00228$:
;	printf_large.c:861: if (left_justify)
	mov	dptr,#__print_format_left_justify_65536_163
	movx	a,@dptr
	jnz	00745$
	ljmp	00242$
00745$:
;	printf_large.c:863: while (width-- > 0)
	mov	dptr,#__print_format_sloc2_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00229$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r3
	mov	ar6,r4
	dec	r3
	cjne	r3,#0xff,00746$
	dec	r4
00746$:
	mov	a,r5
	orl	a,r6
	jnz	00747$
	ljmp	00242$
00747$:
;	printf_large.c:865: OUTPUT_CHAR(' ', p);
	push	ar3
	push	ar4
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar4
	pop	ar3
	sjmp 00229$
00240$:
;	printf_large.c:873: OUTPUT_CHAR( c, p );
	mov	dpl,r2
	lcall	__output_char
	ljmp	00242$
00244$:
;	printf_large.c:877: return charsOutputted;
	mov     dps, #1
	mov     dptr, #_charsOutputted
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00245$:
;	printf_large.c:878: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NULL>"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
