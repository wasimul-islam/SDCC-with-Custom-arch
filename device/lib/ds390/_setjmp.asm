;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _setjmp
	.optsdcc -mds390 --model-flat24
	
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
	.globl _longjmp
	.globl _longjmp_PARM_2
	.globl ___setjmp
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
___setjmp_sloc0_1_0:
	.ds 1
_longjmp_sloc4_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___setjmp_sloc1_1_0:
	.ds 4
___setjmp_sloc2_1_0:
	.ds 4
_longjmp_PARM_2:
	.ds 2
_longjmp_sloc0_1_0:
	.ds 4
_longjmp_sloc1_1_0:
	.ds 3
_longjmp_sloc2_1_0:
	.ds 4
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
;Allocation info for local variables in function '__setjmp'
;------------------------------------------------------------
;buf                       Allocated to registers r2 r3 r4 r5 
;sp                        Allocated to registers r6 
;esp                       Allocated to registers r2 
;lsp                       Allocated to registers r6 r7 r0 r1 
;sloc1                     Allocated with name '___setjmp_sloc1_1_0'
;sloc2                     Allocated with name '___setjmp_sloc2_1_0'
;------------------------------------------------------------
;	_setjmp.c:37: int __setjmp (jmp_buf buf)
;	-----------------------------------------
;	 function __setjmp
;	-----------------------------------------
___setjmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___setjmp_sloc2_1_0
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
;	_setjmp.c:48: }
	setb	___setjmp_sloc0_1_0
	jbc	ea,00103$
	clr	___setjmp_sloc0_1_0
00103$:
;	_setjmp.c:46: sp = SP;
;	genAssign: resultIsFar = TRUE
	mov	r6,_SP
;	_setjmp.c:47: esp = ESP;
;	genAssign: resultIsFar = FALSE
	mov	r2,_ESP
	mov	c,___setjmp_sloc0_1_0
	mov	ea,c
;	_setjmp.c:49: lsp = sp;
	mov	dptr,#___setjmp_sloc1_1_0
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_setjmp.c:50: lsp |= (unsigned int)(esp << 8);
	mov	ar6,r2
	mov	ar7,r6
	mov	r6,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#___setjmp_sloc1_1_0
	movx	a,@dptr
	orl	ar6,a
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	inc	dptr
	movx	a,@dptr
	orl	ar0,a
	inc	dptr
	movx	a,@dptr
	orl	ar1,a
;	_setjmp.c:51: lsp |= 0x400000;
	orl	ar0,#0x40
;	_setjmp.c:52: *buf++ = lsp;
	mov	ar2,r6
	mov	dptr,#___setjmp_sloc2_1_0
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r2
	lcall	__gptrput
	mov	dptr,#___setjmp_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	_setjmp.c:53: *buf++ = lsp >> 8;
	mov	ar2,r6
	mov	ar3,r7
	mov	ar2,r3
	mov	r3,#0x00
	mov	dptr,#___setjmp_sloc2_1_0
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r2
	lcall	__gptrput
	mov	dptr,#___setjmp_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	_setjmp.c:54: *buf++ = *((unsigned char __xdata *) lsp - 0);
	mov	dpl1,r6
	mov	dph1,r7
	mov	dpx1,r0
	inc	dps
	movx	a,@dptr
	mov	r1,a
	mov	dps,#0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	cjne	r3,#0x00,00104$
	inc	r4
00104$:
;	_setjmp.c:55: *buf++ = *((unsigned char __xdata *) lsp - 1);
	mov	a,dpl1
	add	a,#0xff
	mov	dpl,a
	mov	a,dph1
	addc	a,#0xff
	mov	dph,a
	mov	a,dpx1
	addc	a,#0xff
	mov	dpx,a
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	cjne	r3,#0x00,00105$
	inc	r4
00105$:
;	_setjmp.c:56: *buf++ = *((unsigned char __xdata *) lsp - 2);
	mov	a,dpl1
	add	a,#0xfe
	mov	dpl,a
	mov	a,dph1
	addc	a,#0xff
	mov	dph,a
	mov	a,dpx1
	addc	a,#0xff
	mov	dpx,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	_setjmp.c:57: return 0;
	mov  dptr,#0x0000
00101$:
;	_setjmp.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'longjmp'
;------------------------------------------------------------
;rv                        Allocated with name '_longjmp_PARM_2'
;buf                       Allocated to registers r2 r3 r4 r5 
;lsp                       Allocated to registers r6 r7 r0 r1 
;sloc0                     Allocated with name '_longjmp_sloc0_1_0'
;sloc1                     Allocated with name '_longjmp_sloc1_1_0'
;sloc2                     Allocated with name '_longjmp_sloc2_1_0'
;sloc3                     Allocated with name '_longjmp_sloc3_1_0'
;------------------------------------------------------------
;	_setjmp.c:60: int longjmp (jmp_buf buf, int rv)
;	-----------------------------------------
;	 function longjmp
;	-----------------------------------------
_longjmp:
;	_setjmp.c:64: lsp = *buf++;
	mov     r2,dpl
	mov     r3,dph
	mov     r4,dpx
	mov     r5,b
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
	cjne	r3,#0x00,00110$
	inc	r4
00110$:
	mov	dptr,#_longjmp_sloc0_1_0
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_setjmp.c:65: lsp |= (unsigned int)(*buf++ << 8);
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
	cjne	r3,#0x00,00111$
	inc	r4
00111$:
	mov	ar7,r6
	mov	r6,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#_longjmp_sloc0_1_0
	movx	a,@dptr
	orl	ar6,a
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	inc	dptr
	movx	a,@dptr
	orl	ar0,a
	inc	dptr
	movx	a,@dptr
	orl	ar1,a
;	_setjmp.c:66: lsp |= 0x400000;
	orl	ar0,#0x40
;	_setjmp.c:67: *((unsigned char __xdata *) lsp - 0) = *buf++;
	mov	dptr,#_longjmp_sloc1_1_0
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	dps, #1
	mov	dptr, #_longjmp_sloc0_1_0
	dec	dps
	lcall	__gptrget
	mov	dps,#1
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_longjmp_sloc2_1_0
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
	mov	dptr,#_longjmp_sloc1_1_0
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
	mov     dps, #1
	mov     dptr, #_longjmp_sloc0_1_0
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
;	_setjmp.c:68: *((unsigned char __xdata *) lsp - 1) = *buf++;
	mov	dptr,#_longjmp_sloc1_1_0
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_longjmp_sloc2_1_0
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_longjmp_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	a,r5
	movx	@dptr,a
;	_setjmp.c:69: *((unsigned char __xdata *) lsp - 2) = *buf++;
	mov	dptr,#_longjmp_sloc1_1_0
	movx	a,@dptr
	add	a,#0xfe
	mov	dpl1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	dph1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	dpx1,a
	mov	dptr,#_longjmp_sloc2_1_0
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov  r5,a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	_setjmp.c:73: }
	setb	_longjmp_sloc4_1_0
	jbc	ea,00112$
	clr	_longjmp_sloc4_1_0
00112$:
;	_setjmp.c:71: SP = lsp;
	mov	_SP,r6
;	_setjmp.c:72: ESP = lsp >> 8;
	mov	ar6,r7
	mov	r7,#0x00
	mov	_ESP,r6
	mov	c,_longjmp_sloc4_1_0
	mov	ea,c
;	_setjmp.c:74: return rv ? rv : 1;
	mov	dptr,#_longjmp_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00103$
00113$:
	mov	dptr,#_longjmp_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	dpl1,a
	inc	dptr
	movx	a,@dptr
	mov	dph1,a
	sjmp 00104$
00103$:
;	genAssign: resultIsFar = FALSE
	mov	dpl1,#0x01
	clr	a
	mov	dph1,a
00104$:
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
;	_setjmp.c:75: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
