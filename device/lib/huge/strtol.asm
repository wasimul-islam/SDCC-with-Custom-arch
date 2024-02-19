;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmcs51 --model-huge
	
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
	.ds 3
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_strtol_PARM_2:
	.ds 3
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_59:
	.ds 3
_strtol_ptr_65536_60:
	.ds 3
_strtol_rptr_65536_60:
	.ds 3
_strtol_neg_65536_60:
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtol_sloc0_1_0'
;sloc1                     Allocated with name '_strtol_sloc1_1_0'
;endptr                    Allocated with name '_strtol_PARM_2'
;base                      Allocated with name '_strtol_PARM_3'
;nptr                      Allocated with name '_strtol_nptr_65536_59'
;__1310720007              Allocated with name '_strtol___1310720007_131072_60'
;__1310720004              Allocated with name '_strtol___1310720004_131072_60'
;ptr                       Allocated with name '_strtol_ptr_65536_60'
;rptr                      Allocated with name '_strtol_rptr_65536_60'
;u                         Allocated with name '_strtol_u_65536_60'
;neg                       Allocated with name '_strtol_neg_65536_60'
;__1310720005              Allocated with name '_strtol___1310720005_131072_66'
;c                         Allocated with name '_strtol_c_196608_67'
;__1310720008              Allocated with name '_strtol___1310720008_131072_69'
;c                         Allocated with name '_strtol_c_196608_70'
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
	mov	dptr,#_strtol_nptr_65536_59
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strtol.c:40: const char *ptr = nptr;
	mov	dptr,#_strtol_nptr_65536_59
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	strtol.c:45: while (isblank (*ptr))
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00208$
	sjmp	00132$
00208$:
	cjne	r4,#0x09,00158$
00132$:
;	strtol.c:46: ptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00158$:
	mov	dptr,#_strtol_ptr_65536_60
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strtol.c:50: if (*ptr == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2d,00105$
;	strtol.c:52: neg = true;
	mov	dptr,#_strtol_neg_65536_60
	mov	a,#0x01
	movx	@dptr,a
;	strtol.c:53: ptr++;
	mov	dptr,#_strtol_ptr_65536_60
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00105$:
;	strtol.c:56: neg = false;
	mov	dptr,#_strtol_neg_65536_60
	clr	a
	movx	@dptr,a
00106$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	dptr,#_strtol_neg_65536_60
	movx	a,@dptr
	jz	00110$
	mov	dptr,#_strtol_ptr_65536_60
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r5,#0x20,00215$
	sjmp	00109$
00215$:
	cjne	r5,#0x09,00216$
	sjmp	00109$
00216$:
;	strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	dptr,#_strtol_ptr_65536_60
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2d,00217$
	sjmp	00109$
00217$:
	cjne	r7,#0x2b,00110$
00109$:
;	strtol.c:61: if (endptr)
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00108$
;	strtol.c:62: *endptr = nptr;
	mov	dptr,#_strtol_nptr_65536_59
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00108$:
;	strtol.c:63: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	__sdcc_banked_ret
00110$:
;	strtol.c:66: u = strtoul(ptr, &rptr, base);
	mov	dptr,#_strtol_ptr_65536_60
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtol_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_strtoul_PARM_2
	mov	a,#_strtol_rptr_65536_60
	movx	@dptr,a
	mov	a,#(_strtol_rptr_65536_60 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtoul_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_strtoul
	mov	r1,#(_strtoul >> 8)
	mov	r2,#(_strtoul >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	strtol.c:69: if (rptr == ptr)
	mov	dptr,#_strtol_rptr_65536_60
	movx	a,@dptr
	mov	_strtol_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strtol_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtol_sloc0_1_0 + 2),a
	mov	dptr,#_strtol_ptr_65536_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	_strtol_sloc0_1_0
	push	(_strtol_sloc0_1_0 + 1)
	push	(_strtol_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00117$
;	strtol.c:71: if (endptr)
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	_strtol_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strtol_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtol_sloc1_1_0 + 2),a
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00115$
;	strtol.c:72: *endptr = nptr;
	mov	dptr,#_strtol_nptr_65536_59
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,_strtol_sloc1_1_0
	mov	dph,(_strtol_sloc1_1_0 + 1)
	mov	b,(_strtol_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00115$:
;	strtol.c:73: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	__sdcc_banked_ret
00117$:
;	strtol.c:76: if (endptr)
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtol_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00119$
;	strtol.c:77: *endptr = rptr;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,_strtol_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtol_sloc0_1_0 + 2)
	lcall	__gptrput
00119$:
;	strtol.c:80: if (!neg && u > LONG_MAX)
	mov	dptr,#_strtol_neg_65536_60
	movx	a,@dptr
	jnz	00124$
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x7f
	subb	a,r7
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
	mov	dptr,#_strtol_neg_65536_60
	movx	a,@dptr
	jz	00125$
	clr	c
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#0x80
	subb	a,r7
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
	mov	dptr,#_strtol_neg_65536_60
	movx	a,@dptr
	jz	00137$
	clr	c
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	sjmp	00138$
00137$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00138$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
00129$:
;	strtol.c:92: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
