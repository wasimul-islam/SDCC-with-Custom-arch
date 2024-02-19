;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module gptr_cmp
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
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
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
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	gptr_cmp.c:31: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	gptr_cmp.c:94: __endasm;
	.area	HOME (CODE)
;	compares two generic pointers.
;	if p1 < p2 return NZ and C
;	if p1 == p2 return Z and NC
;	if p1 > p2 return NZ and NC
;	if both are a NULL pointer (yes, we have several) also return Z and NC
___gptr_cmp::
	mov	a,sp
	add	a,#0xFA
	mov	dpl1,a
	mov	a,esp
	anl	a,#0x03
	addc	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps ;select dptr1
	movx	a,@dptr
	mov	ap,a
	inc	dptr
	movx	a,@dptr
	orl	ap,a
	inc	dptr
	movx	a,@dptr
	orl	a,ap
	clr	c
	jnz	00001$
	mov	a,dpl
	orl	a,dph
	orl	a,dpx
;	if both are NULL, return Z and NC
	jz	00002$
00001$:
	orl	dps,#0x80 ;decrement dptr1
	inc	dptr
	inc	dptr
	anl	dps,#0x7F ;increment dptr1
	movx	a,@dptr
	subb	a,dpl
	mov	ap,a
	inc	dptr
	movx	a,@dptr
	subb	a,dph
	orl	ap,a
	inc	dptr
	movx	a,@dptr
	subb	a,dpx
	orl	ap,a
	inc	dptr
	movx	a,@dptr
	subb	a,b
	orl	a,ap
;	p2 < p1, return NZ and C
;	p2 = p1, return Z and NC
;	p2 > p1, return NZ and NC
00002$:
	dec	dps ;select dptr0
	ret
00101$:
;	gptr_cmp.c:95: }
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
