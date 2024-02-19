;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atol
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
	.globl _atol
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
_atol_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_atol_nptr_65536_56:
	.ds 4
_atol_neg_65536_57:
	.ds 1
_atol_sloc0_1_0:
	.ds 1
_atol_sloc2_1_0:
	.ds 4
_atol_sloc3_1_0:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;nptr                      Allocated with name '_atol_nptr_65536_56'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated to registers r6 r7 r0 r1 
;neg                       Allocated with name '_atol_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc2                     Allocated with name '_atol_sloc2_1_0'
;sloc3                     Allocated with name '_atol_sloc3_1_0'
;------------------------------------------------------------
;	atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
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
;	atol.c:36: long int ret = 0;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
;	atol.c:39: while (isblank (*nptr))
00101$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r6,a
	mov  dptr,#_atol_sloc0_1_0
	movx @dptr,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	mov	dptr,#_atol_sloc0_1_0
	movx	a,@dptr
	cjne	a,#0x20,00161$
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	sjmp 00115$
00161$:
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_atol_sloc0_1_0
	movx	a,@dptr
	cjne a,#0x09,00131$
00163$:
00115$:
;	atol.c:40: nptr++;
	inc	r2
	cjne	r2,#0x00,00164$
	inc	r3
	cjne	r3,#0x00,00164$
	inc	r4
00164$:
	sjmp 00101$
00131$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_atol_nptr_65536_56
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	clr     a
	cjne    r2,#0x2d,00165$
	inc     a
00165$:
00166$:
	mov	dptr,#_atol_neg_65536_57
	movx	@dptr,a
;	atol.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r2,#0x2d,00167$
	sjmp 00104$
00167$:
	cjne r2,#0x2b,00129$
00169$:
00104$:
;	atol.c:45: nptr++;
	mov	dptr,#_atol_nptr_65536_56
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	atol.c:47: while (isdigit (*nptr))
00129$:
	mov	dptr,#_atol_nptr_65536_56
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_atol_sloc2_1_0
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
00107$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_atol_sloc2_1_0
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
	mov	r6,a
	mov	ar2,r6
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r2,#0x30,00170$
00170$:
	mov	_atol_sloc1_1_0,c
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	jnb	_atol_sloc1_1_0,00171$
	ljmp	00109$
00171$:
	clr	c
	mov	a,#0x39
	subb	a,r2
	mov	_atol_sloc1_1_0,c
	jnb	_atol_sloc1_1_0,00172$
	ljmp	00109$
00172$:
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mullong_PARM_2
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
	mov	dptr,#0x00000a
	mov	b,#0x00
	lcall	__mullong
	mov     dps, #1
	mov     dptr, #_atol_sloc3_1_0
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
	mov	dptr,#_atol_sloc2_1_0
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
	mov	r2,a
	mov	dptr,#_atol_sloc2_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xd0
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov  r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	dptr,#_atol_sloc3_1_0
	movx	a,@dptr
	add	a,r2
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	mov	r1,a
	ljmp	00107$
00109$:
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	mov	dptr,#_atol_neg_65536_57
	movx	a,@dptr
	jz  00120$
00173$:
	clr	c
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	clr	a
	subb	a,r0
	mov	r4,a
	clr	a
	subb	a,r1
	mov	r5,a
	sjmp 00121$
00120$:
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
00121$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00112$:
;	atol.c:51: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
