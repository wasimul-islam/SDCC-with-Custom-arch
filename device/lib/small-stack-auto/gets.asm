;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module gets
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
	.globl _putchar
	.globl _getchar
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;c                         Allocated to registers r2 
;count                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
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
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	gets.c:35: unsigned int count = 0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	gets.c:37: while (1)
00109$:
;	gets.c:39: c = getchar ();
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r2,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:40: switch(c)
	cjne	r2,#0x08,00133$
	sjmp	00101$
00133$:
	cjne	r2,#0x0a,00134$
	sjmp	00105$
00134$:
;	gets.c:42: case '\b': /* backspace */
	cjne	r2,#0x0d,00106$
	sjmp	00105$
00101$:
;	gets.c:43: if (count)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00109$
;	gets.c:45: putchar ('\b');
	mov	dptr,#0x0008
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	gets.c:46: putchar (' ');
	mov	dptr,#0x0020
	lcall	_putchar
;	gets.c:47: putchar ('\b');
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:48: --s;
	dec	r5
	cjne	r5,#0xff,00137$
	dec	r6
00137$:
;	gets.c:49: --count;
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00138$
	inc	r0
	dec	@r0
00138$:
;	gets.c:51: break;
;	gets.c:54: case '\r': /* CR or LF */
	sjmp	00109$
00105$:
;	gets.c:55: putchar ('\r');
	mov	dptr,#0x000d
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	gets.c:56: putchar ('\n');
	mov	dptr,#0x000a
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:57: *s = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	gets.c:58: return s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	gets.c:60: default:
	sjmp	00111$
00106$:
;	gets.c:61: *s++ = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	gets.c:62: ++count;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00139$
	inc	r0
	inc	@r0
00139$:
;	gets.c:63: putchar (c);
	mov	r4,#0x00
	mov	dpl,r2
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:65: }
	ljmp	00109$
00111$:
;	gets.c:67: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
