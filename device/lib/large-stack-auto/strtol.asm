;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtoul
	.globl _strtol
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;endptr                    Allocated to stack - _bp -5
;base                      Allocated to stack - _bp -7
;nptr                      Allocated to stack - _bp +1
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated to stack - _bp +4
;rptr                      Allocated to stack - _bp +7
;u                         Allocated to stack - _bp +10
;neg                       Allocated to registers b0 
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +27
;sloc1                     Allocated to stack - _bp +28
;------------------------------------------------------------
;	strtol.c:38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
_strtol:
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
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
;	strtol.c:45: while (isblank (*ptr))
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
00101$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r7,#0x20,00208$
	sjmp	00132$
00208$:
	cjne	r7,#0x09,00158$
00132$:
;	strtol.c:46: ptr++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00211$
	inc	r0
	inc	@r0
00211$:
	sjmp	00101$
00158$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
;	strtol.c:50: if (*ptr == '-')
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2d,00105$
;	strtol.c:52: neg = true;
;	assignBit
	setb	b0
;	strtol.c:53: ptr++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	sjmp	00106$
00105$:
;	strtol.c:56: neg = false;
;	assignBit
	clr	b0
00106$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	jnb	b0,00110$
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	mov	r3,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r3,#0x20,00215$
	sjmp	00109$
00215$:
	cjne	r3,#0x09,00216$
	sjmp	00109$
00216$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cjne	r4,#0x2d,00217$
	sjmp	00109$
00217$:
	cjne	r4,#0x2b,00110$
00109$:
;	strtol.c:61: if (endptr)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
;	strtol.c:62: *endptr = nptr;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00108$:
;	strtol.c:63: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00129$
00110$:
;	strtol.c:66: u = strtoul(ptr, &rptr, base);
	mov	a,_bp
	add	a,#0x07
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_strtoul
	xch	a,r0
	mov	a,_bp
	add	a,#0x0a
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0a
;	strtol.c:69: if (rptr == ptr)
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00117$
;	strtol.c:71: if (endptr)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00115$
;	strtol.c:72: *endptr = nptr;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00115$:
;	strtol.c:73: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00129$
00117$:
;	strtol.c:76: if (endptr)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00119$
;	strtol.c:77: *endptr = rptr;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00119$:
;	strtol.c:80: if (!neg && u > LONG_MAX)
	jb	b0,00124$
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xff
	inc	r0
	subb	a,@r0
	mov	a,#0xff
	inc	r0
	subb	a,@r0
	mov	a,#0x7f
	inc	r0
	subb	a,@r0
	jnc	00124$
;	strtol.c:82: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtol.c:83: return (LONG_MAX);
	mov	dptr,#0xffff
	mov	b,#0xff
	mov	a,#0x7f
	sjmp	00129$
00124$:
;	strtol.c:85: else if (neg && u > -LONG_MIN)
	jnb	b0,00125$
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	mov	a,#0x80
	inc	r0
	subb	a,@r0
	jnc	00125$
;	strtol.c:87: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtol.c:88: return (LONG_MIN);
	mov	dptr,#0x0000
	mov	b,a
	mov	a,#0x80
	sjmp	00129$
00125$:
;	strtol.c:91: return (neg ? -u : u);
	jnb	b0,00137$
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r4,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r5,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	sjmp	00138$
00137$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00138$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00129$:
;	strtol.c:92: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
