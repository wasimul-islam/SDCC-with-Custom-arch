;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rtc390
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
	.globl _rtcMagic
	.globl _RtcRead
	.globl _RtcWrite
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rtc	=	0x310000
_RtcRead_rtcDate_65536_86:
	.ds 4
_RtcRead_rtcBytes_65536_87:
	.ds 8
_RtcWrite_rtcBytes_65536_95:
	.ds 8
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
;Allocation info for local variables in function 'RtcSync'
;------------------------------------------------------------
;dummy                     Allocated to registers 
;byte                      Allocated to registers 
;bitMask                   Allocated to registers r3 
;------------------------------------------------------------
;	rtc390.c:47: static void RtcSync(void) {
;	-----------------------------------------
;	 function RtcSync
;	-----------------------------------------
_RtcSync:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	rtc390.c:51: dummy=rtc;
	mov	dptr,#_rtc
	movx	a,@dptr
;	rtc390.c:54: for (byte=0; byte<8; byte++) {
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
00105$:
;	rtc390.c:55: for (bitMask=0x01; bitMask; bitMask<<=1) {
;	genAssign: resultIsFar = TRUE
	mov	r3,#0x01
	mov	a,r2
	add	a,#_rtcMagic
	mov	dpl1,a
	clr	a
	addc	a,#(_rtcMagic >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_rtcMagic >> 16)
	mov	dpx1,a
00103$:
;	rtc390.c:56: rtc = (rtcMagic[byte]&bitMask) ? 0xff : 0x00;
	inc	dps
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dps,#0
	mov	a,r3
	anl	a,r7
	jz  00109$
00128$:
;	genAssign: resultIsFar = FALSE
	mov	r7,#0xff
	mov	r0,#0x00
	sjmp 00110$
00109$:
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x00
	mov	r0,#0x00
00110$:
	mov	dptr,#_rtc
	mov	a,r7
	movx	@dptr,a
;	rtc390.c:55: for (bitMask=0x01; bitMask; bitMask<<=1) {
	mov	ar7,r3
	mov	a,r7
	add	a,acc
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	ar3,r7
	mov	a,r3
	jnz  00103$
00129$:
;	rtc390.c:54: for (byte=0; byte<8; byte++) {
	inc	r2
	cjne	r2,#0x08,00130$
00130$:
	jc   00105$
00131$:
00107$:
;	rtc390.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;rtcDate                   Allocated with name '_RtcRead_rtcDate_65536_86'
;rtcBytes                  Allocated with name '_RtcRead_rtcBytes_65536_87'
;byte                      Allocated to registers 
;bitMask                   Allocated to registers r3 
;------------------------------------------------------------
;	rtc390.c:61: unsigned char RtcRead(struct tm *rtcDate) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
	mov     dps, #1
	mov     dptr, #_RtcRead_rtcDate_65536_86
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
;	rtc390.c:65: RtcSync();
	lcall	_RtcSync
;	rtc390.c:67: for (byte=0; byte<8; byte++) {
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x00
00110$:
;	rtc390.c:68: rtcBytes[byte]=0;
	mov	a,r6
	add	a,#_RtcRead_rtcBytes_65536_87
	mov	dpl1,a
	clr	a
	addc	a,#(_RtcRead_rtcBytes_65536_87 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_RtcRead_rtcBytes_65536_87 >> 16)
	mov	dpx1,a
	clr	a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	rtc390.c:69: for (bitMask=0x01; bitMask; bitMask<<=1) {
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x01
00108$:
;	rtc390.c:70: if (rtc&1) {
	mov	dptr,#_rtc
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov  r0,a
	jnb  acc[0],00109$
00139$:
;	rtc390.c:71: rtcBytes[byte]|=bitMask;
	mov	a,r6
	add	a,#_RtcRead_rtcBytes_65536_87
	mov	dpl1,a
	clr	a
	addc	a,#(_RtcRead_rtcBytes_65536_87 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_RtcRead_rtcBytes_65536_87 >> 16)
	mov	dpx1,a
	inc	dps
	movx	a,@dptr
	mov	r2,a
	mov	dps,#0
	mov	a,r3
	orl	ar2,a
	mov	a,r2
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	rtc390.c:85: return 0;
;	rtc390.c:71: rtcBytes[byte]|=bitMask;
00109$:
;	rtc390.c:69: for (bitMask=0x01; bitMask; bitMask<<=1) {
	mov	ar7,r3
	mov	a,r7
	add	a,acc
	mov	r7,a
;	genAssign: resultIsFar = FALSE
	mov	ar3,r7
	mov	a,r3
	jnz  00108$
00140$:
;	rtc390.c:67: for (byte=0; byte<8; byte++) {
	inc	r6
	cjne	r6,#0x08,00141$
00141$:
	jc   00110$
00142$:
;	rtc390.c:75: rtcDate->tm_year=BCDtoINT(rtcBytes[7])+100; // year since 1900
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x05
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000007)
	movx	a,@dptr
	mov	r2,a
	mov	ar3,r2
	mov	r4,#0x00
	anl	ar3,#0x0f
	mov	r4,#0x00
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	mov  dptr,#__mulint_PARM_2
	movx @dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov  dptr,#0x000a
	lcall	__mulint
	mov	r2,dpl
	mov	r5,dph
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	a,#0x64
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	acc1, r3
	mov	a,r4
	lcall	__gptrputWord
;	rtc390.c:76: rtcDate->tm_mon=BCDtoINT(rtcBytes[6])-1; // jan=0
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x04
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
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000006)
	movx	a,@dptr
	mov	r6,a
	mov	ar7,r6
	anl	ar7,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00143$
	cpl	F0
	cpl	a
	inc	a
00143$:
	mul	ab
	jnb	F0,00144$
	cpl	a
	inc	a
00144$:
	mov  r6,a
	add	a,r7
	mov	r7,a
	dec	r7
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	rtc390.c:77: rtcDate->tm_mday=BCDtoINT(rtcBytes[5]);
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x03
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
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000005)
	movx	a,@dptr
	mov	r6,a
	mov	ar7,r6
	anl	ar7,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00145$
	cpl	F0
	cpl	a
	inc	a
00145$:
	mul	ab
	jnb	F0,00146$
	cpl	a
	inc	a
00146$:
	mov  r6,a
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	rtc390.c:78: rtcDate->tm_wday=(rtcBytes[4]&0x07)-1; // monday=0?
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x07
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
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000004)
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x07
	dec	r6
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	rtc390.c:79: rtcDate->tm_hour=BCDtoINT(rtcBytes[3]);
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x02
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
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000003)
	movx	a,@dptr
	mov	r6,a
	mov	ar7,r6
	anl	ar7,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00147$
	cpl	F0
	cpl	a
	inc	a
00147$:
	mul	ab
	jnb	F0,00148$
	cpl	a
	inc	a
00148$:
	mov  r6,a
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	rtc390.c:80: rtcDate->tm_min=BCDtoINT(rtcBytes[2]);
	mov	dptr,#_RtcRead_rtcDate_65536_86
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
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000002)
	movx	a,@dptr
	mov	r6,a
	mov	ar7,r6
	anl	ar7,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00149$
	cpl	F0
	cpl	a
	inc	a
00149$:
	mul	ab
	jnb	F0,00150$
	cpl	a
	inc	a
00150$:
	mov  r6,a
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	rtc390.c:81: rtcDate->tm_sec=BCDtoINT(rtcBytes[1]);
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000001)
	movx	a,@dptr
	mov	r2,a
	mov	ar3,r2
	anl	ar3,#0x0f
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r2,a
	clr	F0
	mov	b,#0x0a
	mov	a,r2
	jnb	acc[7],00151$
	cpl	F0
	cpl	a
	inc	a
00151$:
	mul	ab
	jnb	F0,00152$
	cpl	a
	inc	a
00152$:
	mov  r2,a
	add	a,r3
	mov	r3,a
	mov	dptr,#_RtcRead_rtcDate_65536_86
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
	mov	a,r3
	lcall	__gptrput
;	rtc390.c:82: rtcDate->tm_hundredth=BCDtoINT(rtcBytes[0]);
	mov	dptr,#_RtcRead_rtcDate_65536_86
	movx	a,@dptr
	add	a,#0x0b
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
	mov	dptr,#_RtcRead_rtcBytes_65536_87
	movx	a,@dptr
	mov	r6,a
	mov	ar7,r6
	anl	ar7,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00153$
	cpl	F0
	cpl	a
	inc	a
00153$:
	mul	ab
	jnb	F0,00154$
	cpl	a
	inc	a
00154$:
	mov  r6,a
	add	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	rtc390.c:83: if ((rtcBytes[4]&0x30) || (rtcBytes[3]&0x80)) {
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000004)
	movx	a,@dptr
	mov  r2,a
	anl	a,#0x30
	jz   00156$
00155$:
	sjmp 00105$
00156$:
	mov	dptr,#(_RtcRead_rtcBytes_65536_87 + 0x000003)
	movx	a,@dptr
	mov  r2,a
	jnb  acc[7],00106$
00157$:
00105$:
;	rtc390.c:85: return 0;
	mov	dpl,#0x00
;	rtc390.c:87: return 1;
;	rtc390.c:88: }
	ret
00106$:
	mov     dpl,#0x01
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RtcWrite'
;------------------------------------------------------------
;rtcDate                   Allocated to registers r2 r3 r4 r5 
;rtcBytes                  Allocated with name '_RtcWrite_rtcBytes_65536_95'
;byte                      Allocated to registers 
;bitMask                   Allocated to registers r3 
;------------------------------------------------------------
;	rtc390.c:90: void RtcWrite(struct tm *rtcDate) {
;	-----------------------------------------
;	 function RtcWrite
;	-----------------------------------------
_RtcWrite:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	rtc390.c:94: rtcBytes[7]=INTtoBCD(rtcDate->tm_year%100);
	mov	a,#0x05
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	mov  r0,a
	mov  dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000007)
	movx @dptr,a
;	rtc390.c:95: rtcBytes[6]=INTtoBCD(rtcDate->tm_mon)+1;
	mov	a,#0x04
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	inc  a
	mov  r0,a
	mov	dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000006)
	mov	a,r0
	movx	@dptr,a
;	rtc390.c:96: rtcBytes[5]=INTtoBCD(rtcDate->tm_mday);
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	mov  r0,a
	mov  dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000005)
	movx @dptr,a
;	rtc390.c:97: rtcBytes[4]=(INTtoBCD(rtcDate->tm_wday)+1)&0x07; //set 24h  mode
	mov	a,#0x07
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	inc  a
	mov  r0,a
	anl	ar0,#0x07
	mov	dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000004)
	mov	a,r0
	movx	@dptr,a
;	rtc390.c:98: rtcBytes[3]=INTtoBCD(rtcDate->tm_hour)&0x3f; // oscilator on, reset on
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	mov	r0,a
	anl	ar0,#0x3f
	mov	dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000003)
	mov	a,r0
	movx	@dptr,a
;	rtc390.c:99: rtcBytes[2]=INTtoBCD(rtcDate->tm_min);
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov  r6,a
	add	a,r0
	mov  r0,a
	mov  dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000002)
	movx @dptr,a
;	rtc390.c:100: rtcBytes[1]=INTtoBCD(rtcDate->tm_sec);
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r3,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov  r2,a
	add	a,r4
	mov  r4,a
	mov  dptr,#(_RtcWrite_rtcBytes_65536_95 + 0x000001)
	movx @dptr,a
;	rtc390.c:102: rtcBytes[0]=0;
	mov	dptr,#_RtcWrite_rtcBytes_65536_95
	clr	a
	movx	@dptr,a
;	rtc390.c:104: RtcSync();
	lcall	_RtcSync
;	rtc390.c:106: for (byte=0; byte<8; byte++) {
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
00105$:
;	rtc390.c:107: for (bitMask=0x01; bitMask; bitMask<<=1) {
;	genAssign: resultIsFar = TRUE
	mov	r3,#0x01
	mov	a,r2
	add	a,#_RtcWrite_rtcBytes_65536_95
	mov	dpl1,a
	clr	a
	addc	a,#(_RtcWrite_rtcBytes_65536_95 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_RtcWrite_rtcBytes_65536_95 >> 16)
	mov	dpx1,a
00103$:
;	rtc390.c:108: rtc = (rtcBytes[byte]&bitMask) ? 0xff : 0x00;
	inc	dps
	movx	a,@dptr
	mov	r7,a
	mov	dps,#0
	mov	a,r3
	anl	a,r7
	jz  00109$
00128$:
;	genAssign: resultIsFar = FALSE
	mov	r7,#0xff
	mov	r0,#0x00
	sjmp 00110$
00109$:
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x00
	mov	r0,#0x00
00110$:
	mov	dptr,#_rtc
	mov	a,r7
	movx	@dptr,a
;	rtc390.c:107: for (bitMask=0x01; bitMask; bitMask<<=1) {
	mov	ar7,r3
	mov	a,r7
	add	a,acc
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	ar3,r7
	mov	a,r3
	jnz  00103$
00129$:
;	rtc390.c:106: for (byte=0; byte<8; byte++) {
	inc	r2
	cjne	r2,#0x08,00130$
00130$:
	jc   00105$
00131$:
00107$:
;	rtc390.c:111: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_rtcMagic:
	.db #0xc5	; 197
	.db #0x3a	; 58
	.db #0xa3	; 163
	.db #0x5c	; 92
	.db #0xc5	; 197
	.db #0x3a	; 58
	.db #0xa3	; 163
	.db #0x5c	; 92
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
