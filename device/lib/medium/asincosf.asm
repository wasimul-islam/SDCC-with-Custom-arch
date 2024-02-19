;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
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
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
	.ds 4
_asincosf_sloc2_1_0:
	.ds 4
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
_asincosf_PARM_2:
	.ds 1
_asincosf_x_65536_25:
	.ds 4
_asincosf_g_65536_26:
	.ds 4
_asincosf_quartPI_65536_26:
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;sloc1                     Allocated with name '_asincosf_sloc1_1_0'
;sloc2                     Allocated with name '_asincosf_sloc2_1_0'
;------------------------------------------------------------
;	asincosf.c:47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#_asincosf_x_65536_25
	mov	a,r7
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	asincosf.c:51: bool quartPI = isacos;
	mov	r0,#_asincosf_PARM_2
	mov	r1,#_asincosf_quartPI_65536_26
	movx	a,@r0
	movx	@r1,a
;	asincosf.c:56: y = fabsf(x);
	mov	r0,#_asincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_fabsf
	mov	_asincosf_sloc2_1_0,dpl
	mov	(_asincosf_sloc2_1_0 + 1),dph
	mov	(_asincosf_sloc2_1_0 + 2),b
	mov	(_asincosf_sloc2_1_0 + 3),a
;	asincosf.c:57: if (y < EPS)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jz	00107$
;	asincosf.c:59: r = y;
	mov	_asincosf_sloc0_1_0,_asincosf_sloc2_1_0
	mov	(_asincosf_sloc0_1_0 + 1),(_asincosf_sloc2_1_0 + 1)
	mov	(_asincosf_sloc0_1_0 + 2),(_asincosf_sloc2_1_0 + 2)
	mov	(_asincosf_sloc0_1_0 + 3),(_asincosf_sloc2_1_0 + 3)
	ljmp	00108$
00107$:
;	asincosf.c:63: if (y > 0.5)
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3f
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jnz	00150$
	ljmp	00104$
00150$:
;	asincosf.c:65: quartPI = !isacos;
	mov	r0,#_asincosf_quartPI_65536_26
	movx	a,@r0
	cjne	a,#0x01,00151$
00151$:
	clr	a
	rlc	a
	movx	@r0,a
;	asincosf.c:66: if (y > 1.0)
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jz	00102$
;	asincosf.c:68: errno = EDOM;
	mov	r0,#_errno
	mov	a,#0x21
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	asincosf.c:69: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	asincosf.c:71: g = (0.5 - y) + 0.5;
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fssub
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:72: g = ldexpf(g, -1);
	mov	r0,#_ldexpf_PARM_2
	mov	a,#0xff
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	_ldexpf
	mov	r0,#_asincosf_g_65536_26
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
;	asincosf.c:73: y = sqrtf(g);
	mov	r0,#_asincosf_g_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_sqrtf
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
;	asincosf.c:74: y = -(y + y);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fsadd
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_asincosf_sloc2_1_0,_asincosf_sloc1_1_0
	mov	(_asincosf_sloc2_1_0 + 1),(_asincosf_sloc1_1_0 + 1)
	mov	(_asincosf_sloc2_1_0 + 2),(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	cpl	acc.7
	mov	(_asincosf_sloc2_1_0 + 3),a
	sjmp	00105$
00104$:
;	asincosf.c:78: g = y * y;
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fsmul
	mov	r0,#_asincosf_g_65536_26
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	mov	r0,#_asincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x2065
	mov	b,#0x01
	mov	a,#0xbf
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x6b
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x6f
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_asincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0b
	push	acc
	mov	a,#0x8d
	push	acc
	mov	a,#0xb1
	push	acc
	mov	a,#0xc0
	push	acc
	mov	r0,#_asincosf_g_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_asincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xf0
	push	acc
	mov	a,#0x50
	push	acc
	mov	a,#0xb3
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fsadd
	mov	_asincosf_sloc0_1_0,dpl
	mov	(_asincosf_sloc0_1_0 + 1),dph
	mov	(_asincosf_sloc0_1_0 + 2),b
	mov	(_asincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	asincosf.c:82: i = quartPI;
	mov	r0,#_asincosf_quartPI_65536_26
	movx	a,@r0
	mov	r3,a
;	asincosf.c:83: if (isacos)
	mov	r0,#_asincosf_PARM_2
	movx	a,@r0
	jnz	00153$
	ljmp	00115$
00153$:
;	asincosf.c:85: if (x < 0.0)
	push	ar3
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_asincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	a,r7
	jz	00110$
;	asincosf.c:86: r = (b[i] + r) + b[i];
	mov	a,r3
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_b_65536_26
	mov	dpl,a
	mov	a,#(_asincosf_b_65536_26 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc2_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 3),a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00110$:
;	asincosf.c:88: r = (a[i] - r) + a[i];
	mov	a,r3
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_a_65536_26
	mov	dpl,a
	mov	a,#(_asincosf_a_65536_26 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc2_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 3),a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fssub
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00115$:
;	asincosf.c:92: r = (a[i] + r) + a[i];
	mov	a,r3
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_a_65536_26
	mov	dpl,a
	mov	a,#(_asincosf_a_65536_26 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc2_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc2_1_0 + 3),a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,_asincosf_sloc2_1_0
	mov	dph,(_asincosf_sloc2_1_0 + 1)
	mov	b,(_asincosf_sloc2_1_0 + 2)
	mov	a,(_asincosf_sloc2_1_0 + 3)
	lcall	___fsadd
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc2_1_0
	push	(_asincosf_sloc2_1_0 + 1)
	push	(_asincosf_sloc2_1_0 + 2)
	push	(_asincosf_sloc2_1_0 + 3)
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:93: if (x < 0.0)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_asincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00116$
;	asincosf.c:94: r = -r;
	mov	a,r7
	cpl	acc.7
	mov	r7,a
00116$:
;	asincosf.c:96: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	asincosf.c:97: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_asincosf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
_asincosf_b_65536_26:
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
