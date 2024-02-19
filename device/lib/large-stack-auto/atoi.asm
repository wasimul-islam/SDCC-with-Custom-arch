;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;nptr                      Allocated to stack - _bp +1
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated to registers r3 r4 
;neg                       Allocated to registers b0 
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	atoi.c:36: int ret = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	atoi.c:39: while (isblank (*nptr))
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r2,#0x20,00161$
	sjmp	00115$
00161$:
	cjne	r2,#0x09,00131$
00115$:
;	atoi.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00131$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	atoi.c:42: neg = (*nptr == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2d,00165$
	setb	c
	sjmp	00166$
00165$:
	clr	c
00166$:
	mov	b0,c
;	atoi.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r7,#0x2d,00167$
	sjmp	00104$
00167$:
	cjne	r7,#0x2b,00129$
00104$:
;	atoi.c:45: nptr++;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00170$
	inc	r0
	inc	@r0
00170$:
;	atoi.c:47: while (isdigit (*nptr))
00129$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
00107$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r2,#0x30,00171$
00171$:
	mov	b1,c
	jc	00109$
	mov	a,r2
	add	a,#0xff - 0x39
	mov	b1,c
	jc	00109$
;	atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	push	bits
	push	ar3
	push	ar4
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r2,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	bits
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	ar3,r2
	mov	ar4,r7
	sjmp	00107$
00109$:
;	atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	jnb	b0,00120$
	clr	c
	clr	a
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00121$
00120$:
	mov	ar6,r3
	mov	ar7,r4
00121$:
	mov	dpl,r6
	mov	dph,r7
;	atoi.c:51: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
