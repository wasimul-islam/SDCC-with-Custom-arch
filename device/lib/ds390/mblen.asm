;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mblen
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
	.globl _mblen_PARM_2
	.globl _mblen
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
_mblen_PARM_2:
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n                         Allocated with name '_mblen_PARM_2'
;s                         Allocated to registers r2 r3 r4 r5 
;m                         Allocated to registers 
;c                         Allocated to registers r6 
;------------------------------------------------------------
;	mblen.c:31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
_mblen:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	mblen.c:36: if(!s)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jnz  00102$
00162$:
;	mblen.c:37: return(0);
	mov  dptr,#0x0000
	ljmp	00119$
00102$:
;	mblen.c:39: if(!n)
	mov	dptr,#_mblen_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00104$
00163$:
;	mblen.c:40: return(-1);
	mov  dptr,#0xffff
	ljmp	00119$
00104$:
;	mblen.c:42: c = *s;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
;	genAssign: resultIsFar = TRUE
;	mblen.c:44: if(!c)
	mov  r6,a
	jnz  00106$
00164$:
;	mblen.c:45: return(0);
	mov  dptr,#0x0000
	ljmp	00119$
00106$:
;	mblen.c:47: if(c <= 0x7f)
	clr	c
	mov	a,#0x7f
	subb	a,r6
	jc   00126$
00165$:
;	mblen.c:48: return(1);
	mov  dptr,#0x0001
;	mblen.c:50: while(c & 0x80)
	sjmp 00119$
00126$:
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x00
00109$:
	mov	a,r6
	jnb  acc[7],00111$
00166$:
;	mblen.c:52: c <<= 1;
	mov	ar0,r6
	mov	a,r0
	add	a,acc
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	ar6,r0
;	mblen.c:53: m++;
	inc	r7
	sjmp 00109$
00111$:
;	mblen.c:56: if(m > n)
	mov	ar6,r7
	mov	r0,#0x00
	mov	dptr,#_mblen_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,r6
	inc	dptr
	movx	a,@dptr
	subb	a,r0
	jnc  00129$
00167$:
;	mblen.c:57: return(-1);
	mov  dptr,#0xffff
;	mblen.c:60: while(--m)
	sjmp 00119$
00129$:
;	genAssign: resultIsFar = FALSE
;	genAssign: resultIsFar = FALSE
00116$:
	dec	r7
	mov	a,r7
	jz  00118$
00168$:
;	mblen.c:61: if((*++s & 0xc0) != 0x80)
	push	ar6
	push	ar0
	inc	r2
	cjne	r2,#0x00,00169$
	inc	r3
	cjne	r3,#0x00,00169$
	inc	r4
00169$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	mov	r6,#0x00
	anl	ar1,#0xc0
	mov	r6,#0x00
	cjne	r1,#0x80,00170$
	cjne	r6,#0x00,00170$
	pop	ar0
	pop	ar6
	sjmp 00116$
00170$:
	pop	ar0
	pop	ar6
;	mblen.c:62: return(-1);
	mov  dptr,#0xffff
	sjmp 00119$
00118$:
;	mblen.c:64: return(n);
	mov	dpl,r6
	mov	dph,r0
00119$:
;	mblen.c:65: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
