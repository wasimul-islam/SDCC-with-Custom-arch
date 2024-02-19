;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module gets
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
	.globl _gets
	.globl _putchar
	.globl _getchar
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
_gets_s_65536_11:
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_65536_11'
;c                         Allocated to registers r0 
;count                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_gets_s_65536_11
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
;	gets.c:35: unsigned int count = 0;
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x00
	mov	r5,#0x00
;	gets.c:37: while (1)
00109$:
;	gets.c:39: c = getchar ();
	push	ar4
	push	ar5
	lcall	_getchar
	mov	r0,dpl
	mov	r1,dph
	pop	ar5
	pop	ar4
;	gets.c:40: switch(c)
	cjne	r0,#0x08,00133$
	sjmp 00101$
00133$:
	cjne	r0,#0x0a,00134$
	sjmp 00105$
00134$:
	cjne	r0,#0x0d,00135$
	sjmp 00105$
00135$:
	ljmp	00106$
;	gets.c:42: case '\b': /* backspace */
00101$:
;	gets.c:43: if (count)
	mov	a,r4
	orl	a,r5
	jz  00109$
00136$:
;	gets.c:45: putchar ('\b');
	push	ar4
	push	ar5
	mov  dptr,#0x0008
	lcall	_putchar
	pop	ar5
	pop	ar4
;	gets.c:46: putchar (' ');
	push	ar4
	push	ar5
	mov  dptr,#0x0020
	lcall	_putchar
	pop	ar5
	pop	ar4
;	gets.c:47: putchar ('\b');
	push	ar4
	push	ar5
	mov  dptr,#0x0008
	lcall	_putchar
	pop	ar5
	pop	ar4
;	gets.c:48: --s;
	mov	dptr,#_gets_s_65536_11
	movx	a,@dptr
	add	a,#0xff
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_gets_s_65536_11
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	gets.c:49: --count;
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
;	genAssign: resultIsFar = FALSE
	mov	ar4,r2
	mov	ar5,r3
;	gets.c:51: break;
	ljmp	00109$
;	gets.c:54: case '\r': /* CR or LF */
00105$:
;	gets.c:55: putchar ('\r');
	mov  dptr,#0x000d
	lcall	_putchar
;	gets.c:56: putchar ('\n');
	mov  dptr,#0x000a
	lcall	_putchar
;	gets.c:57: *s = 0;
	mov	dptr,#_gets_s_65536_11
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
	clr	a
	lcall	__gptrput
;	gets.c:58: return s;
	mov     dps, #1
	mov     dptr, #_gets_s_65536_11
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
;	gets.c:60: default:
	sjmp 00111$
00106$:
;	gets.c:61: *s++ = c;
	mov	dptr,#_gets_s_65536_11
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
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_gets_s_65536_11
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
;	gets.c:62: ++count;
	inc	r4
	cjne	r4,#0x00,00137$
	inc	r5
00137$:
;	gets.c:63: putchar (c);
	mov	dpl1,r0
	mov	dph1,#0x00
	push	ar4
	push	ar5
	mov	dpl,dpl1
	mov	dph,dph1
	lcall	_putchar
	pop	ar5
	pop	ar4
;	gets.c:65: }
	ljmp	00109$
00111$:
;	gets.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
