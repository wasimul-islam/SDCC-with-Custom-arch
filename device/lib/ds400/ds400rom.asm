;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ds400rom
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
	.globl __romredirect
	.globl __romcall
	.globl _init_rom_PARM_2
	.globl _DSS_hb_chandle
	.globl _DSS_ms_count
	.globl _DSS_sched
	.globl _DSS_curr_pc
	.globl _DSS_timerReload
	.globl _DSS_wos_crit_count
	.globl _init_rom
	.globl _task_gettimemillis_long
	.globl _task_getthreadID
	.globl _task_gettickreload
	.globl _task_settickreload
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
_DSS_wos_crit_count	=	0x0068
_DSS_timerReload	=	0x006b
_DSS_curr_pc	=	0x006d
_DSS_sched	=	0x0072
_DSS_ms_count	=	0x0074
_DSS_hb_chandle	=	0x007b
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
_init_rom_PARM_2:
	.ds 3
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
;Allocation info for local variables in function '_romcall'
;------------------------------------------------------------
;	ds400rom.c:271: void _romcall(void) __naked
;	-----------------------------------------
;	 function _romcall
;	-----------------------------------------
__romcall:
;	naked function: no prologue.
;	ds400rom.c:316: __endasm ;
	push	dpx ; dptr0 preserved here
	push	dph
	push	dpl
;	point to the address of the table
	mov	dptr, #(0xFF << 16 | 2)
	push	acc ; acc preserved here
	push	b ; b preserved here
	inc	dptr
	clr	a 
	movc a, @a+dptr ; get the address of the table
	push	acc
	inc	dptr
	clr	a 
	movc a, @a+dptr
	add	a, 0x1E ; add function offset to the table
	mov	dpl, a
	pop	acc
	addc	a, 0x1F
	mov	dph, a
;
;	dpx is the same, all in the same bank
;
	inc	dptr ; get the target address of the function we want
	clr	a 
	movc a, @a+dptr
	mov	b, a
	inc	dptr
	clr	a 
	movc a, @a+dptr
	mov	0x1B, a
	mov	0x1C, b
	mov	0x1D, dpx ; high byte does not change
	pop	b ; b restored here
	pop	acc ; acc restored here
	pop	dpl ; dptr0 preserved here
	pop	dph
	pop	dpx
	push	0x1B ; push the target address
	push	0x1C
	push	0x1D
	ret	; this is not a ret, it is a call!
;	the called function ends with a ret which will return to our original caller.
00101$:
;	ds400rom.c:317: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function '_romredirect'
;------------------------------------------------------------
;	ds400rom.c:320: void _romredirect(void) __naked
;	-----------------------------------------
;	 function _romredirect
;	-----------------------------------------
__romredirect:
;	naked function: no prologue.
;	ds400rom.c:353: __endasm;
	push	dpx
	push	dph
	push	dpl
	push	acc
;	dptr = 256 + function offset.
	mov	a, #(256 & 0xff)
	add	a, 0x1E ; add function offset to the table
	mov	dpl, a
	mov	a, #((256 >> 8) & 0xff)
	addc	a, 0x1F
	mov	dph, a
	mov	dpx, #((256 >> 16) & 0xff)
	movx	a, @dptr ; read high byte
	mov	0x1D, a
	inc	dptr
	movx	a, @dptr ; read mid byte
	mov	0x1C, a
	inc	dptr
	movx	a, @dptr ; read low byte
	mov	0x1B, a
	pop	acc ; restore acc and dptr
	pop	dpl
	pop	dph
	pop	dpx
	push	0x1B ; push low byte of target address
	push	0x1C
	push	0x1D ; push high byte of target address
	ret	; this is not a ret, it is a call!
;	the called function ends with a ret which will return to our original caller.
00101$:
;	ds400rom.c:354: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rom'
;------------------------------------------------------------
;hiMem                     Allocated with name '_init_rom_PARM_2'
;loMem                     Allocated to registers 
;------------------------------------------------------------
;	ds400rom.c:369: unsigned char init_rom(void __xdata *loMem,
;	-----------------------------------------
;	 function init_rom
;	-----------------------------------------
_init_rom:
;	naked function: no prologue.
;	ds400rom.c:393: __endasm        ;
;	load params.
;	loMem is already in DPTR.
	mov	r2, dpx
	mov	r1, dph
	mov	r0, dpl
;	hiMem is in _init_rom_PARM_2
	mov	dptr, #_init_rom_PARM_2
	mov	r5, dpx
	mov	r4, dph
	mov	r3, dpl
	mov	0x1E, #((69 * 3) & 0xff) 
	mov 0x1F, #(((69 * 3) >> 8) & 0xff) 
	lcall __romcall
;	result is in acc, move to dpl for C convention.
	mov	dpl, a
	ret
00101$:
;	ds400rom.c:394: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'task_gettimemillis_long'
;------------------------------------------------------------
;	ds400rom.c:398: unsigned long task_gettimemillis_long(void) __naked
;	-----------------------------------------
;	 function task_gettimemillis_long
;	-----------------------------------------
_task_gettimemillis_long:
;	naked function: no prologue.
;	ds400rom.c:409: __endasm;
;	no parameters to load.
	mov	0x1E, #(( 8 * 3) & 0xff) 
	mov 0x1F, #((( 8 * 3) >> 8) & 0xff) 
	lcall __romredirect
;	results in r4 - r0, return in DPTR/B
	mov	dpl, r0
	mov	dph, r1
	mov	dpx, r2
	mov	b, r3
	ret
00101$:
;	ds400rom.c:410: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'task_getthreadID'
;------------------------------------------------------------
;	ds400rom.c:412: unsigned char task_getthreadID(void) __naked
;	-----------------------------------------
;	 function task_getthreadID
;	-----------------------------------------
_task_getthreadID:
;	naked function: no prologue.
;	ds400rom.c:420: __endasm;
;	no parameters to load.
	mov	0x1E, #(( 9 * 3) & 0xff) 
	mov 0x1F, #((( 9 * 3) >> 8) & 0xff) 
	lcall __romredirect
;	results in acc, return in dpl
	mov	dpl, a
	ret
00101$:
;	ds400rom.c:421: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'task_gettickreload'
;------------------------------------------------------------
;	ds400rom.c:423: unsigned int task_gettickreload(void)
;	-----------------------------------------
;	 function task_gettickreload
;	-----------------------------------------
_task_gettickreload:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ds400rom.c:425: return DSS_timerReload;
	mov	dpl,_DSS_timerReload
	mov	dph,(_DSS_timerReload + 1)
00101$:
;	ds400rom.c:426: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_settickreload'
;------------------------------------------------------------
;rl                        Allocated to registers 
;------------------------------------------------------------
;	ds400rom.c:428: void task_settickreload(unsigned int rl)
;	-----------------------------------------
;	 function task_settickreload
;	-----------------------------------------
_task_settickreload:
	mov	_DSS_timerReload,dpl
	mov	(_DSS_timerReload + 1),dph
;	ds400rom.c:430: DSS_timerReload = rl;
00101$:
;	ds400rom.c:431: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
