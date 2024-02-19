;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _autobaud
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
	.globl _autobaud
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
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
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
;Allocation info for local variables in function 'autobaud'
;------------------------------------------------------------
;	_autobaud.c:57: void autobaud ()
;	-----------------------------------------
;	 function autobaud
;	-----------------------------------------
_autobaud:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_autobaud.c:61: TMOD=0x11;
;	genAssign: resultIsFar = FALSE
	mov	_TMOD,#0x11
;	_autobaud.c:62: TCON = 0;
;	genAssign: resultIsFar = FALSE
	mov	_TCON,#0x00
;	_autobaud.c:63: TH1 = TL1 = 0;
;	genAssign: resultIsFar = FALSE
	mov	_TL1,#0x00
;	genAssign: resultIsFar = FALSE
	mov	_TH1,#0x00
;	_autobaud.c:67: while(RXD) ; 
00102$:
	jb   _RXD,00102$
00178$:
;	_autobaud.c:71: if (RXD) goto autobaud2;
	jb   _RXD,00102$
00179$:
;	_autobaud.c:72: if (RXD) goto autobaud2;
	jb   _RXD,00102$
00180$:
;	_autobaud.c:73: if (RXD) goto autobaud2;
	jb   _RXD,00102$
00181$:
;	_autobaud.c:74: if (RXD) goto autobaud2;
	jb   _RXD,00102$
00182$:
;	_autobaud.c:77: while (!RXD);
00113$:
	jnb  _RXD,00113$
00183$:
;	_autobaud.c:78: TR1 = 1; /* start the timer */
;	genAssign: resultIsFar = FALSE
	setb	_TR1
;	_autobaud.c:79: while (RXD);             // wait for bit #1 to begin
00116$:
	jb   _RXD,00116$
00184$:
;	_autobaud.c:80: while(!RXD);             // wait for bit #2 to begin
00119$:
	jnb  _RXD,00119$
00185$:
;	_autobaud.c:81: while(RXD);              // wait for bit #4 to begin
00122$:
	jb   _RXD,00122$
00186$:
;	_autobaud.c:82: while (!RXD);            // wait for stop bit to begin
00125$:
	jnb  _RXD,00125$
00187$:
;	_autobaud.c:83: TR1 = 0;                 // stop timing
;	genAssign: resultIsFar = FALSE
	clr	_TR1
;	_autobaud.c:86: TH1 = (TH1 << 1) | (TL1 >> 7);
	mov	r2,_TH1
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,_TL1
	rl	a
	anl	a,#0x01
	mov  r3,a
	orl	a,r2
	mov	_TH1,a
;	_autobaud.c:89: TH1 = (TH1 << 1) | ((TL1 >> 6) & 0x01);
	mov	r2,_TH1
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,_TL1
	rl	a
	rl	a
	anl	a,#0x01
	mov  r3,a
	orl	a,r2
;	_autobaud.c:92: TH1 = ~TH1;
	cpl  a
;	_autobaud.c:95: TH1++ ;
	inc  a
	mov  _TH1,a
;	_autobaud.c:97: TL1 = TH1;
;	genAssign: resultIsFar = FALSE
	mov	_TL1,_TH1
;	_autobaud.c:98: TMOD =  0x21     ;      // set timer #1 for 8 bit auto-reload
;	genAssign: resultIsFar = FALSE
	mov	_TMOD,#0x21
;	_autobaud.c:99: PCON =  0x80     ;      // configure built-in uart
;	genAssign: resultIsFar = FALSE
	mov	_PCON,#0x80
;	_autobaud.c:100: SCON =  0x52     ;
;	genAssign: resultIsFar = FALSE
	mov	_SCON,#0x52
00128$:
;	_autobaud.c:101: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
