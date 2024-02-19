;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	.optsdcc -mmcs51 --model-small
	
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
___ulonglong2fs_a_65536_20:
	.ds 8
___ulonglong2fs_fl_65536_21:
	.ds 4
___ulonglong2fs_sloc0_1_0:
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
;exp                       Allocated to registers r7 
;fl                        Allocated with name '___ulonglong2fs_fl_65536_21'
;sloc0                     Allocated with name '___ulonglong2fs_sloc0_1_0'
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
	mov	___ulonglong2fs_sloc0_1_0,dpl
	mov	(___ulonglong2fs_sloc0_1_0 + 1),dph
	mov	(___ulonglong2fs_sloc0_1_0 + 2),b
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	mov	(___ulonglong2fs_sloc0_1_0 + 4),r4
	mov	(___ulonglong2fs_sloc0_1_0 + 5),r5
	mov	(___ulonglong2fs_sloc0_1_0 + 6),r6
	mov	(___ulonglong2fs_sloc0_1_0 + 7),r7
;	_ulonglong2fs.c:66: if (!a)
	mov	a,___ulonglong2fs_sloc0_1_0
	orl	a,(___ulonglong2fs_sloc0_1_0 + 1)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 2)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 3)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 4)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 5)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 6)
	orl	a,(___ulonglong2fs_sloc0_1_0 + 7)
	jnz	00102$
;	_ulonglong2fs.c:68: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	_ulonglong2fs.c:71: if (a == 0xffffffffffffffffull)
	mov	a,#0xff
	cjne	a,___ulonglong2fs_sloc0_1_0,00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 1),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 2),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 3),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 4),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 5),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 6),00153$
	cjne	a,(___ulonglong2fs_sloc0_1_0 + 7),00153$
	sjmp	00154$
00153$:
	sjmp	00118$
00154$:
;	_ulonglong2fs.c:73: return 18446744073709551616.0f;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x5f
	ret
;	_ulonglong2fs.c:76: while (a < HIDDEN)
00118$:
	mov	r7,#0x96
00105$:
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
	mov	___ulonglong2fs_sloc0_1_0,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 1)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 1),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 2)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 2),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 4)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 4),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 5)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 5),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 6)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 6),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 7)
	rlc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 7),a
;	_ulonglong2fs.c:79: exp--;
	dec	r7
;	_ulonglong2fs.c:82: while (a & NORM)
	sjmp	00105$
00121$:
00110$:
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	jz	00112$
;	_ulonglong2fs.c:85: if (a & 1)
	mov	a,___ulonglong2fs_sloc0_1_0
	jnb	acc.0,00109$
;	_ulonglong2fs.c:86: a += 2;
	mov	a,#0x02
	add	a,___ulonglong2fs_sloc0_1_0
	mov	___ulonglong2fs_sloc0_1_0,a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 1)
	mov	(___ulonglong2fs_sloc0_1_0 + 1),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 2)
	mov	(___ulonglong2fs_sloc0_1_0 + 2),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 3)
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 4)
	mov	(___ulonglong2fs_sloc0_1_0 + 4),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 5)
	mov	(___ulonglong2fs_sloc0_1_0 + 5),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 6)
	mov	(___ulonglong2fs_sloc0_1_0 + 6),a
	clr	a
	addc	a,(___ulonglong2fs_sloc0_1_0 + 7)
	mov	(___ulonglong2fs_sloc0_1_0 + 7),a
00109$:
;	_ulonglong2fs.c:87: a >>= 1;
	mov	a,(___ulonglong2fs_sloc0_1_0 + 7)
	clr	c
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 7),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 6)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 6),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 5)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 5),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 4)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 4),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 3),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 2)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 2),a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 1)
	rrc	a
	mov	(___ulonglong2fs_sloc0_1_0 + 1),a
	mov	a,___ulonglong2fs_sloc0_1_0
	rrc	a
	mov	___ulonglong2fs_sloc0_1_0,a
;	_ulonglong2fs.c:88: exp++;
	inc	r7
	sjmp	00110$
00112$:
;	_ulonglong2fs.c:91: a &= ~HIDDEN ;
	mov	___ulonglong2fs_a_65536_20,___ulonglong2fs_sloc0_1_0
	mov	(___ulonglong2fs_a_65536_20 + 1),(___ulonglong2fs_sloc0_1_0 + 1)
	mov	a,#0x7f
	anl	a,(___ulonglong2fs_sloc0_1_0 + 2)
	mov	(___ulonglong2fs_a_65536_20 + 2),a
	mov	(___ulonglong2fs_a_65536_20 + 3),(___ulonglong2fs_sloc0_1_0 + 3)
	mov	(___ulonglong2fs_a_65536_20 + 4),#0x00
	mov	(___ulonglong2fs_a_65536_20 + 5),#0x00
	mov	(___ulonglong2fs_a_65536_20 + 6),#0x00
	mov	(___ulonglong2fs_a_65536_20 + 7),#0x00
;	_ulonglong2fs.c:93: fl.l = PACK(0,(unsigned long)exp, a);
	mov	r6,#0x00
	mov	ar5,r7
	mov	a,r6
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r4,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	___ulonglong2fs_sloc0_1_0,r7
	mov	(___ulonglong2fs_sloc0_1_0 + 1),r6
	mov	(___ulonglong2fs_sloc0_1_0 + 2),r5
	mov	(___ulonglong2fs_sloc0_1_0 + 3),r4
	mov	r2,___ulonglong2fs_a_65536_20
	mov	r3,(___ulonglong2fs_a_65536_20 + 1)
	mov	r6,(___ulonglong2fs_a_65536_20 + 2)
	mov	r7,(___ulonglong2fs_a_65536_20 + 3)
	mov	a,___ulonglong2fs_sloc0_1_0
	orl	ar2,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 1)
	orl	ar3,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 2)
	orl	ar6,a
	mov	a,(___ulonglong2fs_sloc0_1_0 + 3)
	orl	ar7,a
	mov	(___ulonglong2fs_fl_65536_21 + 0),r2
	mov	(___ulonglong2fs_fl_65536_21 + 1),r3
	mov	(___ulonglong2fs_fl_65536_21 + 2),r6
	mov	(___ulonglong2fs_fl_65536_21 + 3),r7
;	_ulonglong2fs.c:95: return (fl.f);
	mov	dpl,___ulonglong2fs_fl_65536_21
	mov	dph,(___ulonglong2fs_fl_65536_21 + 1)
	mov	b,(___ulonglong2fs_fl_65536_21 + 2)
	mov	a,(___ulonglong2fs_fl_65536_21 + 3)
;	_ulonglong2fs.c:96: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
