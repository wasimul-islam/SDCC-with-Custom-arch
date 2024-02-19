;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _gptrput
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
	.globl __gptrputWord
	.globl __gptrput
	.globl __gptrputWord_PARM_2
	.globl __gptrput_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
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
__gptrput_PARM_2:
	.ds 1
__gptrputWord_PARM_2:
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
;Allocation info for local variables in function '_gptrput'
;------------------------------------------------------------
;c                         Allocated with name '__gptrput_PARM_2'
;gptr                      Allocated to registers 
;------------------------------------------------------------
;	_gptrput.c:148: _gptrput (char *gptr, char c) __naked
;	-----------------------------------------
;	 function _gptrput
;	-----------------------------------------
__gptrput:
;	naked function: no prologue.
;	_gptrput.c:194: __endasm;
;
;	depending on the pointer type according to SDCCsymt.h
;
	jb	_B_7,codeptr$ ; >0x80 code ; 3
	jnb	_B_6,xdataptr$ ; <0x40 far ; 3
	mov	dph,r0 ; save r0 independant of regbank ; 2
	mov	r0,dpl ; use only low order address ; 2
	jb	_B_5,pdataptr$ ; >0x60 pdata ; 3
;
;	store into near/idata space
;
	mov	@r0,a ; 1
dataptrrestore$:
	mov	r0,dph ; restore r0 ; 2
	mov	dph,#0 ; restore dph ; 2
	ret	; 1
;
;	cannot store into code space, lock up
;
codeptr$:
	sjmp	. ; 2
;
;	store into external stack/pdata space
;
pdataptr$:
	movx	@r0,a ; 1
	sjmp	dataptrrestore$ ; 2
;
;	store into far space
;
xdataptr$:
	movx	@dptr,a ; 1
	ret	; 1
;===
;26	bytes
00101$:
;	_gptrput.c:195: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function '_gptrputWord'
;------------------------------------------------------------
;w                         Allocated with name '__gptrputWord_PARM_2'
;gptr                      Allocated to registers 
;------------------------------------------------------------
;	_gptrput.c:202: _gptrputWord (int *gptr, int w) __naked
;	-----------------------------------------
;	 function _gptrputWord
;	-----------------------------------------
__gptrputWord:
;	naked function: no prologue.
;	_gptrput.c:256: __endasm;
;
;	depending on the pointer type acc. to SDCCsymt.h
;
	jb	_B_7,codeptr_w$ ; >0x80 code
	jnb	_B_6,xdataptr_w$ ; <0x40 far
	mov	dph,r0 ; save r0 independant of regbank
	mov	r0,dpl ; use only low order address
	jb	_B_5,pdataptr_w$ ; >0x60 pdata
;
;	store into near space
;
	mov	@r0,acc1
	inc	r0
	mov	@r0,a
dataptrrestore_w$:
	mov	dpl,r0
	mov	r0,dph ; restore r0
	mov	dph,#0 ; restore dph
	ret
;
;	cannot store into code space, lock up
;
codeptr_w$:
	sjmp	.
;
;	store into xstack space
;
pdataptr_w$:
	xch	a,acc1
	movx	@r0,a
	inc	r0
	xch	a,acc1
	movx	@r0, a
	sjmp	dataptrrestore_w$
;
;	store into far space
;
xdataptr_w$:
	xch	a,acc1
	movx	@dptr,a
	inc	dptr
	xch	a,acc1
	movx	@dptr,a
	ret
00101$:
;	_gptrput.c:257: }
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
