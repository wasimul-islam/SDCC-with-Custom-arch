;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
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
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
	.globl _strtol
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
_strtol_PARM_2:
	.ds 4
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_56:
	.ds 4
_strtol_ptr_65536_57:
	.ds 4
_strtol_rptr_65536_57:
	.ds 4
_strtol_neg_65536_57:
	.ds 1
_strtol_sloc1_1_0:
	.ds 4
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;endptr                    Allocated with name '_strtol_PARM_2'
;base                      Allocated with name '_strtol_PARM_3'
;nptr                      Allocated with name '_strtol_nptr_65536_56'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated with name '_strtol_ptr_65536_57'
;rptr                      Allocated with name '_strtol_rptr_65536_57'
;u                         Allocated to registers r3 r4 r5 r6 
;neg                       Allocated with name '_strtol_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated with name '_strtol_sloc0_1_0'
;sloc1                     Allocated with name '_strtol_sloc1_1_0'
;------------------------------------------------------------
;	strtol.c:38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
_strtol:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_strtol_nptr_65536_56
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	strtol.c:45: while (isblank (*ptr))
	mov	dptr,#_strtol_nptr_65536_56
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00101$:
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r2,#0x20,00208$
	sjmp 00132$
00208$:
	cjne r2,#0x09,00158$
00210$:
00132$:
;	strtol.c:46: ptr++;
	inc	r6
	cjne	r6,#0x00,00211$
	inc	r7
	cjne	r7,#0x00,00211$
	inc	r0
00211$:
	sjmp 00101$
00158$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtol_ptr_65536_57
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	strtol.c:50: if (*ptr == '-')
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	cjne r2,#0x2d,00105$
00213$:
;	strtol.c:52: neg = true;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtol_neg_65536_57
	mov	a,#0x01
	movx	@dptr,a
;	strtol.c:53: ptr++;
	mov	dptr,#_strtol_ptr_65536_57
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	sjmp 00106$
00105$:
;	strtol.c:56: neg = false;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtol_neg_65536_57
	clr	a
	movx	@dptr,a
00106$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	dptr,#_strtol_neg_65536_57
	movx	a,@dptr
	jnz	00214$
	ljmp	00110$
00214$:
	mov	dptr,#_strtol_ptr_65536_57
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r3,a
	mov	ar4,r3
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00215$
	sjmp 00109$
00215$:
	cjne	r4,#0x09,00216$
	sjmp 00109$
00216$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cjne	r3,#0x2d,00217$
	sjmp 00109$
00217$:
	cjne r3,#0x2b,00110$
00219$:
00109$:
;	strtol.c:61: if (endptr)
	mov	dptr,#_strtol_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00108$
00220$:
;	strtol.c:62: *endptr = nptr;
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	mov     dps, #1
	mov     dptr, #_strtol_nptr_65536_56
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
00108$:
;	strtol.c:63: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00129$
00110$:
;	strtol.c:66: u = strtoul(ptr, &rptr, base);
	mov	dptr,#_strtoul_PARM_2
	mov	a,#_strtol_rptr_65536_57
	movx	@dptr,a
	inc	dptr
	mov	a,#(_strtol_rptr_65536_57 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_strtol_rptr_65536_57 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#_strtol_ptr_65536_57
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_strtoul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
;	genAssign: resultIsFar = TRUE
;	strtol.c:69: if (rptr == ptr)
	mov	dptr,#_strtol_rptr_65536_57
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_strtol_ptr_65536_57
	push	ar7
	push	ar0
	push	ar1
	push	ar2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	jz   00222$
00221$:
	sjmp 00117$
00222$:
;	strtol.c:71: if (endptr)
	mov	dptr,#_strtol_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00115$
00223$:
;	strtol.c:72: *endptr = nptr;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov     dps, #1
	mov     dptr, #_strtol_nptr_65536_56
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
00115$:
;	strtol.c:73: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00129$
00117$:
;	strtol.c:76: if (endptr)
	mov	dptr,#_strtol_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_strtol_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00119$
00224$:
;	strtol.c:77: *endptr = rptr;
	mov	dptr,#_strtol_sloc1_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r7
	mov	a,r0
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r1
	mov	a,r2
	lcall	__gptrputWord
00119$:
;	strtol.c:80: if (!neg && u > LONG_MAX)
	mov	dptr,#_strtol_neg_65536_57
	movx	a,@dptr
	jnz  00124$
00225$:
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	a,#0x7f
	subb	a,r6
	jnc  00124$
00226$:
;	strtol.c:82: errno = ERANGE;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtol.c:83: return (LONG_MAX);
	mov	dptr,#0xffffff
	mov	b,#0x7f
	sjmp 00129$
00124$:
;	strtol.c:85: else if (neg && u > -LONG_MIN)
	mov	dptr,#_strtol_neg_65536_57
	movx	a,@dptr
	jz  00125$
00227$:
	clr	c
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	mov	a,#0x80
	subb	a,r6
	jnc  00125$
00228$:
;	strtol.c:87: errno = ERANGE;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtol.c:88: return (LONG_MIN);
	mov  dptr,#0x0000
	mov	b,#0x80
	sjmp 00129$
00125$:
;	strtol.c:91: return (neg ? -u : u);
	mov	dptr,#_strtol_neg_65536_57
	movx	a,@dptr
	jz  00137$
00229$:
	clr	c
	clr	a
	subb	a,r3
	mov	r2,a
	clr	a
	subb	a,r4
	mov	r7,a
	clr	a
	subb	a,r5
	mov	r0,a
	clr	a
	subb	a,r6
	mov	r1,a
	sjmp 00138$
00137$:
;	genAssign: resultIsFar = FALSE
	mov	ar2,r3
	mov	ar7,r4
	mov	ar0,r5
	mov	ar1,r6
00138$:
	mov	dpl,r2
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
00129$:
;	strtol.c:92: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
