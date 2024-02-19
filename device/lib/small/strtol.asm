;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmcs51 --model-small
	
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
_strtol_PARM_2:
	.ds 3
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_59:
	.ds 3
_strtol_rptr_65536_60:
	.ds 3
_strtol_neg_65536_60:
	.ds 1
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
;endptr                    Allocated with name '_strtol_PARM_2'
;base                      Allocated with name '_strtol_PARM_3'
;nptr                      Allocated with name '_strtol_nptr_65536_59'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated to registers r0 r1 r7 
;rptr                      Allocated with name '_strtol_rptr_65536_60'
;u                         Allocated to registers r3 r4 r5 r6 
;neg                       Allocated with name '_strtol_neg_65536_60'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
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
	mov	_strtol_nptr_65536_59,dpl
	mov	(_strtol_nptr_65536_59 + 1),dph
	mov	(_strtol_nptr_65536_59 + 2),b
;	strtol.c:45: while (isblank (*ptr))
	mov	r2,_strtol_nptr_65536_59
	mov	r3,(_strtol_nptr_65536_59 + 1)
	mov	r4,(_strtol_nptr_65536_59 + 2)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r1,#0x20,00208$
	sjmp	00132$
00208$:
	cjne	r1,#0x09,00158$
00132$:
;	strtol.c:46: ptr++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00158$:
	mov	ar0,r2
	mov	ar1,r3
	mov	ar7,r4
;	strtol.c:50: if (*ptr == '-')
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x2d,00105$
;	strtol.c:52: neg = true;
;	strtol.c:53: ptr++;
	mov	a,#0x01
	mov	_strtol_neg_65536_60,a
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	sjmp	00106$
00105$:
;	strtol.c:56: neg = false;
	mov	_strtol_neg_65536_60,#0x00
00106$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	a,_strtol_neg_65536_60
	jz	00110$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	r5,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r5,#0x20,00215$
	sjmp	00109$
00215$:
	cjne	r5,#0x09,00216$
	sjmp	00109$
00216$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cjne	r6,#0x2d,00217$
	sjmp	00109$
00217$:
	cjne	r6,#0x2b,00110$
00109$:
;	strtol.c:61: if (endptr)
	mov	a,_strtol_PARM_2
	orl	a,(_strtol_PARM_2 + 1)
	jz	00108$
;	strtol.c:62: *endptr = nptr;
	mov	r4,_strtol_PARM_2
	mov	r5,(_strtol_PARM_2 + 1)
	mov	r6,(_strtol_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,_strtol_nptr_65536_59
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_nptr_65536_59 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_nptr_65536_59 + 2)
	lcall	__gptrput
00108$:
;	strtol.c:63: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00110$:
;	strtol.c:66: u = strtoul(ptr, &rptr, base);
	mov	_strtoul_PARM_2,#_strtol_rptr_65536_60
	mov	(_strtoul_PARM_2 + 1),#0x00
	mov	(_strtoul_PARM_2 + 2),#0x40
	mov	_strtoul_PARM_3,_strtol_PARM_3
	mov	(_strtoul_PARM_3 + 1),(_strtol_PARM_3 + 1)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar1
	push	ar0
	lcall	_strtoul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar0
	pop	ar1
	pop	ar7
;	strtol.c:69: if (rptr == ptr)
	push	_strtol_rptr_65536_60
	push	(_strtol_rptr_65536_60 + 1)
	push	(_strtol_rptr_65536_60 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00117$
;	strtol.c:71: if (endptr)
	mov	a,_strtol_PARM_2
	orl	a,(_strtol_PARM_2 + 1)
	jz	00115$
;	strtol.c:72: *endptr = nptr;
	mov	r1,_strtol_PARM_2
	mov	r2,(_strtol_PARM_2 + 1)
	mov	r7,(_strtol_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r7
	mov	a,_strtol_nptr_65536_59
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_nptr_65536_59 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_nptr_65536_59 + 2)
	lcall	__gptrput
00115$:
;	strtol.c:73: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00117$:
;	strtol.c:76: if (endptr)
	mov	a,_strtol_PARM_2
	orl	a,(_strtol_PARM_2 + 1)
	jz	00119$
;	strtol.c:77: *endptr = rptr;
	mov	r1,_strtol_PARM_2
	mov	r2,(_strtol_PARM_2 + 1)
	mov	r7,(_strtol_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r7
	mov	a,_strtol_rptr_65536_60
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_rptr_65536_60 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_rptr_65536_60 + 2)
	lcall	__gptrput
00119$:
;	strtol.c:80: if (!neg && u > LONG_MAX)
	mov	a,_strtol_neg_65536_60
	jnz	00124$
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	a,#0x7f
	subb	a,r6
	jnc	00124$
;	strtol.c:82: errno = ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	strtol.c:83: return (LONG_MAX);
	mov	dptr,#0xffff
	mov	b,#0xff
	mov	a,#0x7f
	ret
00124$:
;	strtol.c:85: else if (neg && u > -LONG_MIN)
	mov	a,_strtol_neg_65536_60
	jz	00125$
	clr	c
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	mov	a,#0x80
	subb	a,r6
	jnc	00125$
;	strtol.c:87: errno = ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	strtol.c:88: return (LONG_MIN);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x80
	ret
00125$:
;	strtol.c:91: return (neg ? -u : u);
	mov	a,_strtol_neg_65536_60
	jz	00137$
	clr	c
	clr	a
	subb	a,r3
	mov	r0,a
	clr	a
	subb	a,r4
	mov	r1,a
	clr	a
	subb	a,r5
	mov	r2,a
	clr	a
	subb	a,r6
	mov	r7,a
	sjmp	00138$
00137$:
	mov	ar0,r3
	mov	ar1,r4
	mov	ar2,r5
	mov	ar7,r6
00138$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r7
;	strtol.c:92: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
