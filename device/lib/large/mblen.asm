;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mblen
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mblen_PARM_2
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
_mblen_PARM_2:
	.ds 2
_mblen_s_65536_39:
	.ds 3
_mblen_c_65536_40:
	.ds 1
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
;n                         Allocated with name '_mblen_PARM_2'
;s                         Allocated with name '_mblen_s_65536_39'
;m                         Allocated with name '_mblen_m_65536_40'
;c                         Allocated with name '_mblen_c_65536_40'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mblen_s_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mblen.c:36: if(!s)
	mov	dptr,#_mblen_s_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mblen_s_65536_39
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	mblen.c:37: return(0);
	mov	dptr,#0x0000
	ret
00102$:
;	mblen.c:39: if(!n)
	mov	dptr,#_mblen_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mblen_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
;	mblen.c:40: return(-1);
	mov	dptr,#0xffff
	ret
00104$:
;	mblen.c:42: c = *s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_mblen_c_65536_40
	movx	@dptr,a
;	mblen.c:44: if(!c)
	mov	a,r7
	jnz	00106$
;	mblen.c:45: return(0);
	mov	dptr,#0x0000
	ret
00106$:
;	mblen.c:47: if(c <= 0x7f)
	mov	a,r7
	add	a,#0xff - 0x7f
	jc	00126$
;	mblen.c:48: return(1);
	mov	dptr,#0x0001
;	mblen.c:50: while(c & 0x80)
	ret
00126$:
	mov	r7,#0x00
00109$:
	mov	dptr,#_mblen_c_65536_40
	movx	a,@dptr
	mov	r6,a
	jnb	acc.7,00111$
;	mblen.c:52: c <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	dptr,#_mblen_c_65536_40
	movx	@dptr,a
;	mblen.c:53: m++;
	inc	r7
	sjmp	00109$
00111$:
;	mblen.c:56: if(m > n)
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00129$
;	mblen.c:57: return(-1);
	mov	dptr,#0xffff
;	mblen.c:60: while(--m)
	ret
00129$:
	mov	dptr,#_mblen_s_65536_39
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00116$:
	dec	r7
	mov	a,r7
	jz	00118$
;	mblen.c:61: if((*++s & 0xc0) != 0x80)
	inc	r2
	cjne	r2,#0x00,00169$
	inc	r3
00169$:
	mov	dptr,#_mblen_s_65536_39
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	anl	ar0,#0xc0
	mov	r1,#0x00
	cjne	r0,#0x80,00170$
	cjne	r1,#0x00,00170$
	sjmp	00116$
00170$:
;	mblen.c:62: return(-1);
	mov	dptr,#0xffff
	ret
00118$:
;	mblen.c:64: return(n);
	mov	dpl,r5
	mov	dph,r6
;	mblen.c:65: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
