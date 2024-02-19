;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mblen
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mblen
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n                         Allocated to stack - _bp -4
;s                         Allocated to registers r5 r6 r7 
;m                         Allocated to registers r3 
;c                         Allocated to registers r4 
;------------------------------------------------------------
;	mblen.c:31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
_mblen:
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mblen.c:36: if(!s)
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	mblen.c:37: return(0);
	mov	dptr,#0x0000
	ljmp	00119$
00102$:
;	mblen.c:39: if(!n)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	mblen.c:40: return(-1);
	mov	dptr,#0xffff
	ljmp	00119$
00104$:
;	mblen.c:42: c = *s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	mblen.c:44: if(!c)
	mov	r4,a
	jnz	00106$
;	mblen.c:45: return(0);
	mov	dptr,#0x0000
	sjmp	00119$
00106$:
;	mblen.c:47: if(c <= 0x7f)
	mov	a,r4
	add	a,#0xff - 0x7f
	jc	00126$
;	mblen.c:48: return(1);
	mov	dptr,#0x0001
;	mblen.c:50: while(c & 0x80)
	sjmp	00119$
00126$:
	mov	r3,#0x00
00109$:
	mov	a,r4
	jnb	acc.7,00111$
;	mblen.c:52: c <<= 1;
	mov	ar2,r4
	mov	a,r2
	add	a,r2
	mov	r4,a
;	mblen.c:53: m++;
	inc	r3
	sjmp	00109$
00111$:
;	mblen.c:56: if(m > n)
	mov	ar2,r3
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00129$
;	mblen.c:57: return(-1);
	mov	dptr,#0xffff
;	mblen.c:60: while(--m)
	sjmp	00119$
00129$:
00116$:
	dec	r3
	mov	a,r3
	jz	00118$
;	mblen.c:61: if((*++s & 0xc0) != 0x80)
	push	ar2
	push	ar4
	inc	r5
	cjne	r5,#0x00,00169$
	inc	r6
00169$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0xc0
	mov	r2,#0x00
	cjne	r4,#0x80,00170$
	cjne	r2,#0x00,00170$
	pop	ar4
	pop	ar2
	sjmp	00116$
00170$:
	pop	ar4
	pop	ar2
;	mblen.c:62: return(-1);
	mov	dptr,#0xffff
	sjmp	00119$
00118$:
;	mblen.c:64: return(n);
	mov	dpl,r2
	mov	dph,r4
00119$:
;	mblen.c:65: }
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
