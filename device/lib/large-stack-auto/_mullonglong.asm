;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;lr                        Allocated to stack - _bp -10
;ll                        Allocated to stack - _bp +1
;ret                       Allocated to stack - _bp +17
;i                         Allocated to stack - _bp +25
;j                         Allocated to stack - _bp +26
;l                         Allocated to registers r2 
;r                         Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	_mullonglong.c:39: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
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
	push	dpl
	push	dph
	push	b
	push	acc
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0x12
	mov	sp,a
;	_mullonglong.c:41: unsigned long long ret = 0ull;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	@r0,#0x00
00106$:
;	_mullonglong.c:46: unsigned char l = ll >> (i * 8);
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,@r0
	rlc	a
	mov	ov,c
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	sjmp	00129$
00128$:
	mov	c,ov
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
00129$:
	djnz	b,00128$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar2,@r0
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x00
;	_mullonglong.c:54: return(ret);
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
00104$:
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00130$
	ljmp	00107$
00130$:
;	_mullonglong.c:49: unsigned char r = lr >> (j * 8);
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,@r0
	rlc	a
	mov	ov,c
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	dec	r1
	sjmp	00132$
00131$:
	mov	c,ov
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
	dec	r1
	mov	a,@r1
	rrc	a
	mov	@r1,a
00132$:
	djnz	b,00131$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar7,@r0
;	_mullonglong.c:50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	mov	b,r2
	mov	a,r7
	mul	ab
	mov	r7,a
	mov	r6,b
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	sjmp	00134$
00133$:
	mov	a,@r0
	add	a,@r0
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
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
	dec	r0
00134$:
	djnz	b,00133$
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	@r0
	ljmp	00104$
00107$:
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	cjne	@r0,#0x08,00135$
00135$:
	jnc	00136$
	ljmp	00106$
00136$:
;	_mullonglong.c:54: return(ret);
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	_mullonglong.c:55: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
