;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mmcs51 --model-medium
	
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
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ll_65536_1:
	.ds 8
__mullonglong_ret_65536_2:
	.ds 8
__mullonglong_i_65536_2:
	.ds 1
__mullonglong_j_65536_2:
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__mullonglong_sloc0_1_0'
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
	mov	r0,#__mullonglong_ll_65536_1
	pop	acc
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	_mullonglong.c:41: unsigned long long ret = 0ull;
	mov	r0,#__mullonglong_ret_65536_2
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	r0,#__mullonglong_i_65536_2
	movx	@r0,a
00106$:
;	_mullonglong.c:46: unsigned char l = ll >> (i * 8);
	mov	r0,#__mullonglong_i_65536_2
	movx	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r0,#__mullonglong_ll_65536_1
	movx	a,@r0
	mov	__mullonglong_sloc0_1_0,acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 1),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 2),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 3),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 4),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 5),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 6),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 7),acc
	movx	a,@r0
	rlc	a
	mov	ov,c
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,(__mullonglong_sloc0_1_0 + 7)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 7),a
	mov	a,(__mullonglong_sloc0_1_0 + 6)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 6),a
	mov	a,(__mullonglong_sloc0_1_0 + 5)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 5),a
	mov	a,(__mullonglong_sloc0_1_0 + 4)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 4),a
	mov	a,(__mullonglong_sloc0_1_0 + 3)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 3),a
	mov	a,(__mullonglong_sloc0_1_0 + 2)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 2),a
	mov	a,(__mullonglong_sloc0_1_0 + 1)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 1),a
	mov	a,__mullonglong_sloc0_1_0
	rrc	a
	mov	__mullonglong_sloc0_1_0,a
00129$:
	djnz	b,00128$
	mov	r2,__mullonglong_sloc0_1_0
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	r0,#__mullonglong_j_65536_2
	clr	a
	movx	@r0,a
;	_mullonglong.c:54: return(ret);
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
00104$:
	mov	r0,#__mullonglong_i_65536_2
	movx	a,@r0
	mov	r5,a
	mov	r6,#0x00
	mov	r0,#__mullonglong_j_65536_2
	movx	a,@r0
	mov	r3,a
	mov	r4,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00130$
	ljmp	00107$
00130$:
;	_mullonglong.c:49: unsigned char r = lr >> (j * 8);
	mov	r0,#__mullonglong_j_65536_2
	movx	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r0,#__mullonglong_PARM_2
	movx	a,@r0
	mov	__mullonglong_sloc0_1_0,acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 1),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 2),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 3),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 4),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 5),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 6),acc
	inc	r0
	movx	a,@r0
	mov	(__mullonglong_sloc0_1_0 + 7),acc
	movx	a,@r0
	rlc	a
	mov	ov,c
	sjmp	00132$
00131$:
	mov	c,ov
	mov	a,(__mullonglong_sloc0_1_0 + 7)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 7),a
	mov	a,(__mullonglong_sloc0_1_0 + 6)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 6),a
	mov	a,(__mullonglong_sloc0_1_0 + 5)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 5),a
	mov	a,(__mullonglong_sloc0_1_0 + 4)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 4),a
	mov	a,(__mullonglong_sloc0_1_0 + 3)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 3),a
	mov	a,(__mullonglong_sloc0_1_0 + 2)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 2),a
	mov	a,(__mullonglong_sloc0_1_0 + 1)
	rrc	a
	mov	(__mullonglong_sloc0_1_0 + 1),a
	mov	a,__mullonglong_sloc0_1_0
	rrc	a
	mov	__mullonglong_sloc0_1_0,a
00132$:
	djnz	b,00131$
	mov	r7,__mullonglong_sloc0_1_0
;	_mullonglong.c:50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	mov	b,r2
	mov	a,r7
	mul	ab
	mov	r7,a
	mov	r6,b
	mov	__mullonglong_sloc0_1_0,r7
	mov	(__mullonglong_sloc0_1_0 + 1),r6
	mov	(__mullonglong_sloc0_1_0 + 2),#0x00
	mov	(__mullonglong_sloc0_1_0 + 3),#0x00
	mov	(__mullonglong_sloc0_1_0 + 4),#0x00
	mov	(__mullonglong_sloc0_1_0 + 5),#0x00
	mov	(__mullonglong_sloc0_1_0 + 6),#0x00
	mov	(__mullonglong_sloc0_1_0 + 7),#0x00
	mov	r0,#__mullonglong_i_65536_2
	mov	r1,#__mullonglong_j_65536_2
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	sjmp	00134$
00133$:
	mov	a,__mullonglong_sloc0_1_0
	add	a,__mullonglong_sloc0_1_0
	mov	__mullonglong_sloc0_1_0,a
	mov	a,(__mullonglong_sloc0_1_0 + 1)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 1),a
	mov	a,(__mullonglong_sloc0_1_0 + 2)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 2),a
	mov	a,(__mullonglong_sloc0_1_0 + 3)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 3),a
	mov	a,(__mullonglong_sloc0_1_0 + 4)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 4),a
	mov	a,(__mullonglong_sloc0_1_0 + 5)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 5),a
	mov	a,(__mullonglong_sloc0_1_0 + 6)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 6),a
	mov	a,(__mullonglong_sloc0_1_0 + 7)
	rlc	a
	mov	(__mullonglong_sloc0_1_0 + 7),a
00134$:
	djnz	b,00133$
	mov	r0,#__mullonglong_ret_65536_2
	movx	a,@r0
	add	a,__mullonglong_sloc0_1_0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 3)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 4)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 5)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 6)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,(__mullonglong_sloc0_1_0 + 7)
	movx	@r0,a
;	_mullonglong.c:47: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	r0,#__mullonglong_j_65536_2
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	ljmp	00104$
00107$:
;	_mullonglong.c:44: for (i = 0; i < sizeof (long long); i++)
	mov	r0,#__mullonglong_i_65536_2
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	mov	r0,#__mullonglong_i_65536_2
	movx	a,@r0
	cjne	a,#0x08,00135$
00135$:
	jnc	00136$
	ljmp	00106$
00136$:
;	_mullonglong.c:54: return(ret);
	mov	r0,#__mullonglong_ret_65536_2
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
	push	acc
	inc	r0
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
	pop	acc
;	_mullonglong.c:55: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
