;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	.optsdcc -mmcs51 --model-large
	
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
	.area	OSEG    (OVR,DATA)
___ulonglong2fs_sloc0_1_0:
	.ds 8
___ulonglong2fs_sloc1_1_0:
	.ds 1
___ulonglong2fs_sloc2_1_0:
	.ds 8
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
___ulonglong2fs_a_65536_20:
	.ds 8
___ulonglong2fs_fl_65536_21:
	.ds 4
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
;a                         Allocated with name '___ulonglong2fs_a_65536_20'
;exp                       Allocated with name '___ulonglong2fs_exp_65536_21'
;fl                        Allocated with name '___ulonglong2fs_fl_65536_21'
;sloc0                     Allocated with name '___ulonglong2fs_sloc0_1_0'
;sloc1                     Allocated with name '___ulonglong2fs_sloc1_1_0'
;sloc2                     Allocated with name '___ulonglong2fs_sloc2_1_0'
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___ulonglong2fs_a_65536_20
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_ulonglong2fs.c:66: if (!a)
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	_ulonglong2fs.c:68: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	_ulonglong2fs.c:71: if (a == 0xffffffffffffffffull)
	cjne	r0,#0xff,00146$
	cjne	r1,#0xff,00146$
	cjne	r2,#0xff,00146$
	cjne	r3,#0xff,00146$
	cjne	r4,#0xff,00146$
	cjne	r5,#0xff,00146$
	cjne	r6,#0xff,00146$
	cjne	r7,#0xff,00146$
	sjmp	00147$
00146$:
	sjmp	00118$
00147$:
;	_ulonglong2fs.c:73: return 18446744073709551616.0f;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x5f
	ret
;	_ulonglong2fs.c:76: while (a < HIDDEN)
00118$:
	mov	___ulonglong2fs_sloc1_1_0,#0x96
00105$:
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	___ulonglong2fs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 7),a
	clr	c
	mov	a,(___ulonglong2fs_sloc0_1_0 + 2)
	subb	a,#0x80
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	subb	a,#0x00
	mov	a,(___ulonglong2fs_sloc0_1_0 + 4)
	subb	a,#0x00
	mov	a,(___ulonglong2fs_sloc0_1_0 + 5)
	subb	a,#0x00
	mov	a,(___ulonglong2fs_sloc0_1_0 + 6)
	subb	a,#0x00
	mov	a,(___ulonglong2fs_sloc0_1_0 + 7)
	subb	a,#0x00
	jnc	00121$
;	_ulonglong2fs.c:78: a <<= 1;
	mov	a,___ulonglong2fs_sloc0_1_0
	add	a,___ulonglong2fs_sloc0_1_0
	mov	r0,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 1)
	rlc	a
	mov	r1,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 2)
	rlc	a
	mov	r2,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	rlc	a
	mov	r3,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 4)
	rlc	a
	mov	r4,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 5)
	rlc	a
	mov	r5,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 6)
	rlc	a
	mov	r6,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 7)
	rlc	a
	mov	r7,a
	mov	dptr,#___ulonglong2fs_a_65536_20
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_ulonglong2fs.c:79: exp--;
	dec	___ulonglong2fs_sloc1_1_0
;	_ulonglong2fs.c:82: while (a & NORM)
	sjmp	00105$
00121$:
00110$:
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	___ulonglong2fs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc0_1_0 + 7),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	jnz	00149$
	ljmp	00112$
00149$:
;	_ulonglong2fs.c:85: if (a & 1)
	mov	a,___ulonglong2fs_sloc0_1_0
	jnb	acc.0,00109$
;	_ulonglong2fs.c:86: a += 2;
	mov	dptr,#___ulonglong2fs_a_65536_20
	mov	a,#0x02
	add	a,___ulonglong2fs_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
00109$:
;	_ulonglong2fs.c:87: a >>= 1;
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_ulonglong2fs.c:88: exp++;
	inc	___ulonglong2fs_sloc1_1_0
	ljmp	00110$
00112$:
;	_ulonglong2fs.c:91: a &= ~HIDDEN ;
	mov	dptr,#___ulonglong2fs_a_65536_20
	mov	a,___ulonglong2fs_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	anl	a,(___ulonglong2fs_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_ulonglong2fs.c:93: fl.l = PACK(0,(unsigned long)exp, a);
	mov	r4,___ulonglong2fs_sloc1_1_0
	mov	(___ulonglong2fs_sloc0_1_0 + 2),r4
	anl	a,#0x01
	mov	c,acc.0
	xch	a,(___ulonglong2fs_sloc0_1_0 + 2)
	rrc	a
	xch	a,(___ulonglong2fs_sloc0_1_0 + 2)
	rrc	a
	xch	a,(___ulonglong2fs_sloc0_1_0 + 2)
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	mov	___ulonglong2fs_sloc0_1_0,#0x00
	mov	(___ulonglong2fs_sloc0_1_0 + 1),#0x00
	mov	dptr,#___ulonglong2fs_a_65536_20
	movx	a,@dptr
	mov	___ulonglong2fs_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___ulonglong2fs_sloc2_1_0 + 7),a
	mov	r4,___ulonglong2fs_sloc0_1_0
	mov	r5,(___ulonglong2fs_sloc0_1_0 + 1)
	mov	r6,(___ulonglong2fs_sloc0_1_0 + 2)
	mov	r7,(___ulonglong2fs_sloc0_1_0 + 3)
	mov	r0,___ulonglong2fs_sloc2_1_0
	mov	r1,(___ulonglong2fs_sloc2_1_0 + 1)
	mov	r2,(___ulonglong2fs_sloc2_1_0 + 2)
	mov	r3,(___ulonglong2fs_sloc2_1_0 + 3)
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#___ulonglong2fs_fl_65536_21
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_ulonglong2fs.c:95: return (fl.f);
	mov	dptr,#___ulonglong2fs_fl_65536_21
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	_ulonglong2fs.c:96: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
