;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong_PARM_2
	.globl __mullonglong
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
__mullonglong_sloc0_1_0:
	.ds 8
__mullonglong_sloc1_1_0:
	.ds 1
__mullonglong_sloc2_1_0:
	.ds 1
__mullonglong_sloc3_1_0:
	.ds 1
__mullonglong_sloc4_1_0:
	.ds 1
__mullonglong_sloc5_1_0:
	.ds 8
__mullonglong_sloc6_1_0:
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
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ll_65536_1:
	.ds 8
__mullonglong_ret_65536_2:
	.ds 8
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;lr                        Allocated with name '__mullonglong_PARM_2'
;ll                        Allocated with name '__mullonglong_ll_65536_1'
;ret                       Allocated with name '__mullonglong_ret_65536_2'
;i                         Allocated with name '__mullonglong_i_65536_2'
;j                         Allocated with name '__mullonglong_j_65536_2'
;l                         Allocated with name '__mullonglong_l_196608_4'
;r                         Allocated with name '__mullonglong_r_327680_6'
;sloc0                     Allocated with name '__mullonglong_sloc0_1_0'
;sloc1                     Allocated with name '__mullonglong_sloc1_1_0'
;sloc2                     Allocated with name '__mullonglong_sloc2_1_0'
;sloc3                     Allocated with name '__mullonglong_sloc3_1_0'
;sloc4                     Allocated with name '__mullonglong_sloc4_1_0'
;sloc5                     Allocated with name '__mullonglong_sloc5_1_0'
;sloc6                     Allocated with name '__mullonglong_sloc6_1_0'
;------------------------------------------------------------
;	_mullonglong.c:39: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
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
	mov	dptr,#__mullonglong_ll_65536_1
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
;	_mullonglong.c:41: unsigned long long ret = 0ull;
	mov	dptr,#__mullonglong_ret_65536_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	mov	__mullonglong_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc5_1_0 + 7),a
	mov	dptr,#__mullonglong_ll_65536_1
	movx	a,@dptr
	mov	__mullonglong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__mullonglong_sloc0_1_0 + 7),a
	mov	__mullonglong_sloc1_1_0,#0x00
00106$:
;	_mullonglong.c:46: unsigned char l = ll >> (i * 8);
	mov	a,__mullonglong_sloc1_1_0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r0,__mullonglong_sloc0_1_0
	mov	r1,(__mullonglong_sloc0_1_0 + 1)
	mov	r2,(__mullonglong_sloc0_1_0 + 2)
	mov	r3,(__mullonglong_sloc0_1_0 + 3)
	mov	r4,(__mullonglong_sloc0_1_0 + 4)
	mov	r5,(__mullonglong_sloc0_1_0 + 5)
	mov	r6,(__mullonglong_sloc0_1_0 + 6)
	mov	a,(__mullonglong_sloc0_1_0 + 7)
	mov	r7,a
	rlc	a
	mov	ov,c
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,r7
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
00129$:
	djnz	b,00128$
	mov	__mullonglong_sloc2_1_0,r0
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	__mullonglong_sloc3_1_0,__mullonglong_sloc1_1_0
	mov	__mullonglong_sloc4_1_0,#0x00
;	_mullonglong.c:54: return(ret);
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
00104$:
	mov	r6,__mullonglong_sloc3_1_0
	mov	r7,#0x00
	mov	r4,__mullonglong_sloc4_1_0
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00130$
	ljmp	00107$
00130$:
;	_mullonglong.c:49: unsigned char r = lr >> (j * 8);
	mov	a,__mullonglong_sloc4_1_0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r0,__mullonglong_sloc5_1_0
	mov	r1,(__mullonglong_sloc5_1_0 + 1)
	mov	r2,(__mullonglong_sloc5_1_0 + 2)
	mov	r3,(__mullonglong_sloc5_1_0 + 3)
	mov	r4,(__mullonglong_sloc5_1_0 + 4)
	mov	r5,(__mullonglong_sloc5_1_0 + 5)
	mov	r6,(__mullonglong_sloc5_1_0 + 6)
	mov	a,(__mullonglong_sloc5_1_0 + 7)
	mov	r7,a
	rlc	a
	mov	ov,c
	sjmp	00132$
00131$:
	mov	c,ov
	mov	a,r7
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
00132$:
	djnz	b,00131$
;	_mullonglong.c:50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	mov	b,__mullonglong_sloc2_1_0
	mov	a,r0
	mul	ab
	mov	r0,a
	mov	r7,b
	mov	__mullonglong_sloc6_1_0,r0
	mov	(__mullonglong_sloc6_1_0 + 1),r7
	clr	a
	mov	(__mullonglong_sloc6_1_0 + 2),a
	mov	(__mullonglong_sloc6_1_0 + 3),a
	mov	(__mullonglong_sloc6_1_0 + 4),a
	mov	(__mullonglong_sloc6_1_0 + 5),a
	mov	(__mullonglong_sloc6_1_0 + 6),a
	mov	(__mullonglong_sloc6_1_0 + 7),a
	mov	a,__mullonglong_sloc4_1_0
	add	a,__mullonglong_sloc3_1_0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	sjmp	00134$
00133$:
	mov	a,__mullonglong_sloc6_1_0
	add	a,__mullonglong_sloc6_1_0
	mov	__mullonglong_sloc6_1_0,a
	mov	a,(__mullonglong_sloc6_1_0 + 1)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 1),a
	mov	a,(__mullonglong_sloc6_1_0 + 2)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 2),a
	mov	a,(__mullonglong_sloc6_1_0 + 3)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 3),a
	mov	a,(__mullonglong_sloc6_1_0 + 4)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 4),a
	mov	a,(__mullonglong_sloc6_1_0 + 5)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 5),a
	mov	a,(__mullonglong_sloc6_1_0 + 6)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 6),a
	mov	a,(__mullonglong_sloc6_1_0 + 7)
	rlc	a
	mov	(__mullonglong_sloc6_1_0 + 7),a
00134$:
	djnz	b,00133$
	mov	dptr,#__mullonglong_ret_65536_2
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
	mov	dptr,#__mullonglong_ret_65536_2
	mov	a,__mullonglong_sloc6_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 1)
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 2)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 3)
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 4)
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 5)
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 6)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(__mullonglong_sloc6_1_0 + 7)
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	__mullonglong_sloc4_1_0
	ljmp	00104$
00107$:
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	a,__mullonglong_sloc3_1_0
	inc	a
	mov	__mullonglong_sloc1_1_0,a
	clr	c
	subb	a,#0x08
	jnc	00135$
	ljmp	00106$
00135$:
;	_mullonglong.c:54: return(ret);
	mov	dptr,#__mullonglong_ret_65536_2
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	_mullonglong.c:55: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
