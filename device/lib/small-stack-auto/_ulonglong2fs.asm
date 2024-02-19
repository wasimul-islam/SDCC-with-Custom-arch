;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulonglong2fs
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;a                         Allocated to stack - _bp +1
;exp                       Allocated to registers r7 
;fl                        Allocated to stack - _bp +21
;sloc0                     Allocated to stack - _bp +9
;sloc1                     Allocated to stack - _bp +17
;------------------------------------------------------------
;	_ulonglong2fs.c:61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
___ulonglong2fs:
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
	xch	a,r0
	mov	a,sp
	add	a,#0x18
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_ulonglong2fs.c:66: if (!a)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	_ulonglong2fs.c:68: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00113$
00102$:
;	_ulonglong2fs.c:71: if (a == 0xffffffffffffffffull)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	inc	r0
	cjne	@r0,#0xff,00153$
	sjmp	00154$
00153$:
	sjmp	00118$
00154$:
;	_ulonglong2fs.c:73: return 18446744073709551616.0f;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x5f
	ljmp	00113$
;	_ulonglong2fs.c:76: while (a < HIDDEN)
00118$:
	mov	r7,#0x96
00105$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	c
	inc	r0
	inc	r0
	mov	a,@r0
	subb	a,#0x80
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00121$
;	_ulonglong2fs.c:78: a <<= 1;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
;	_ulonglong2fs.c:79: exp--;
	dec	r7
;	_ulonglong2fs.c:82: while (a & NORM)
	sjmp	00105$
00121$:
00110$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	jz	00112$
;	_ulonglong2fs.c:85: if (a & 1)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	jnb	acc.0,00109$
;	_ulonglong2fs.c:86: a += 2;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00109$:
;	_ulonglong2fs.c:87: a >>= 1;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
;	_ulonglong2fs.c:88: exp++;
	inc	r7
	sjmp	00110$
00112$:
;	_ulonglong2fs.c:91: a &= ~HIDDEN ;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x7f
	inc	r0
	anl	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
;	_ulonglong2fs.c:93: fl.l = PACK(0,(unsigned long)exp, a);
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	r6,#0x00
	mov	ar5,r7
	mov	a,r6
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r4,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	_ulonglong2fs.c:95: return (fl.f);
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00113$:
;	_ulonglong2fs.c:96: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
