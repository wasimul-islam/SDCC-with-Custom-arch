;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_strtol_sloc0_1_0:
	.ds 1
_strtol_sloc1_1_0:
	.ds 3
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
_strtol_PARM_2:
	.ds 3
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_59:
	.ds 3
_strtol_rptr_65536_60:
	.ds 3
_strtol_u_65536_60:
	.ds 4
_strtol_neg_65536_60:
	.ds 1
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
;sloc0                     Allocated with name '_strtol_sloc0_1_0'
;sloc1                     Allocated with name '_strtol_sloc1_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_strtol_nptr_65536_59
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	strtol.c:45: while (isblank (*ptr))
	mov	r0,#_strtol_nptr_65536_59
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r3,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	mov	_strtol_sloc0_1_0,r7
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	mov	a,#0x20
	cjne	a,_strtol_sloc0_1_0,00208$
	sjmp	00132$
00208$:
	mov	a,#0x09
	cjne	a,_strtol_sloc0_1_0,00158$
00132$:
;	strtol.c:46: ptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00158$:
	mov	_strtol_sloc1_1_0,r5
	mov	(_strtol_sloc1_1_0 + 1),r6
	mov	(_strtol_sloc1_1_0 + 2),r3
;	strtol.c:50: if (*ptr == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2d,00105$
;	strtol.c:52: neg = true;
	mov	r0,#_strtol_neg_65536_60
	mov	a,#0x01
	movx	@r0,a
;	strtol.c:53: ptr++;
	add	a,r5
	mov	_strtol_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_strtol_sloc1_1_0 + 1),a
	mov	(_strtol_sloc1_1_0 + 2),r3
	sjmp	00106$
00105$:
;	strtol.c:56: neg = false;
	mov	r0,#_strtol_neg_65536_60
	clr	a
	movx	@r0,a
00106$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	r0,#_strtol_neg_65536_60
	movx	a,@r0
	jz	00110$
	mov	dpl,_strtol_sloc1_1_0
	mov	dph,(_strtol_sloc1_1_0 + 1)
	mov	b,(_strtol_sloc1_1_0 + 2)
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
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00108$
;	strtol.c:62: *endptr = nptr;
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_strtol_nptr_65536_59
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
00108$:
;	strtol.c:63: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00110$:
;	strtol.c:66: u = strtoul(ptr, &rptr, base);
	mov	r0,#_strtoul_PARM_2
	mov	a,#_strtol_rptr_65536_60
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	a,#0x60
	inc	r0
	movx	@r0,a
	mov	r0,#_strtol_PARM_3
	mov	r1,#_strtoul_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,_strtol_sloc1_1_0
	mov	dph,(_strtol_sloc1_1_0 + 1)
	mov	b,(_strtol_sloc1_1_0 + 2)
	lcall	_strtoul
	mov	r0,#_strtol_u_65536_60
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	strtol.c:69: if (rptr == ptr)
	mov	r0,#_strtol_rptr_65536_60
	push	_strtol_sloc1_1_0
	push	(_strtol_sloc1_1_0 + 1)
	push	(_strtol_sloc1_1_0 + 2)
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00117$
;	strtol.c:71: if (endptr)
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00115$
;	strtol.c:72: *endptr = nptr;
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	_strtol_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_strtol_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_strtol_sloc1_1_0 + 2),a
	mov	dpl,_strtol_sloc1_1_0
	mov	dph,(_strtol_sloc1_1_0 + 1)
	mov	b,(_strtol_sloc1_1_0 + 2)
	mov	r0,#_strtol_nptr_65536_59
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
00115$:
;	strtol.c:73: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00117$:
;	strtol.c:76: if (endptr)
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00119$
;	strtol.c:77: *endptr = rptr;
	mov	r0,#_strtol_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_strtol_rptr_65536_60
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
00119$:
;	strtol.c:80: if (!neg && u > LONG_MAX)
	mov	r0,#_strtol_neg_65536_60
	movx	a,@r0
	jnz	00124$
	mov	r0,#_strtol_u_65536_60
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0xff
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0xff
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0xff
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0x7f
	subb	a,b
	jnc	00124$
;	strtol.c:82: errno = ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strtol.c:83: return (LONG_MAX);
	mov	dptr,#0xffff
	mov	b,#0xff
	mov	a,#0x7f
	ret
00124$:
;	strtol.c:85: else if (neg && u > -LONG_MIN)
	mov	r0,#_strtol_neg_65536_60
	movx	a,@r0
	jz	00125$
	mov	r0,#_strtol_u_65536_60
	clr	c
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0x80
	subb	a,b
	jnc	00125$
;	strtol.c:87: errno = ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strtol.c:88: return (LONG_MIN);
	mov	dptr,#0x0000
	mov	b,a
	mov	a,#0x80
	ret
00125$:
;	strtol.c:91: return (neg ? -u : u);
	mov	r0,#_strtol_neg_65536_60
	movx	a,@r0
	jz	00137$
	mov	r0,#_strtol_u_65536_60
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r4,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r5,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r7,a
	sjmp	00138$
00137$:
	mov	r0,#_strtol_u_65536_60
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
00138$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	strtol.c:92: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
