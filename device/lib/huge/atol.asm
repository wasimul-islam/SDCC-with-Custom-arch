;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atol
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
_atol_sloc1_1_0:
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
_atol_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_atol_nptr_65536_59:
	.ds 3
_atol_ret_65536_60:
	.ds 4
_atol_neg_65536_60:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;nptr                      Allocated with name '_atol_nptr_65536_59'
;__1310720007              Allocated with name '_atol___1310720007_131072_60'
;__1310720004              Allocated with name '_atol___1310720004_131072_60'
;ret                       Allocated with name '_atol_ret_65536_60'
;neg                       Allocated with name '_atol_neg_65536_60'
;__1310720005              Allocated with name '_atol___1310720005_131072_61'
;c                         Allocated with name '_atol_c_196608_62'
;__1310720008              Allocated with name '_atol___1310720008_131072_64'
;c                         Allocated with name '_atol_c_196608_65'
;------------------------------------------------------------
;	atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
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
	mov	dptr,#_atol_nptr_65536_59
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atol.c:36: long int ret = 0;
	mov	dptr,#_atol_ret_65536_60
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	atol.c:39: while (isblank (*nptr))
	mov	dptr,#_atol_nptr_65536_59
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00154$
	sjmp	00115$
00154$:
	cjne	r4,#0x09,00131$
00115$:
;	atol.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00157$
	inc	r6
00157$:
	mov	dptr,#_atol_nptr_65536_59
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00131$:
	mov	dptr,#_atol_nptr_65536_59
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_atol_neg_65536_60
	clr	a
	cjne	r4,#0x2d,00158$
	inc	a
00158$:
	movx	@dptr,a
;	atol.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r4,#0x2d,00160$
	sjmp	00104$
00160$:
	cjne	r4,#0x2b,00129$
00104$:
;	atol.c:45: nptr++;
	mov	dptr,#_atol_nptr_65536_59
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atol.c:47: while (isdigit (*nptr))
00129$:
	mov	dptr,#_atol_nptr_65536_59
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00163$
00163$:
	mov	_atol_sloc0_1_0,c
	jnc	00164$
	ljmp	00132$
00164$:
	mov	a,r4
	add	a,#0xff - 0x39
	mov	_atol_sloc0_1_0,c
	jnc	00165$
	ljmp	00132$
00165$:
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	dptr,#_atol_ret_65536_60
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
	mov	dptr,#__mullong_PARM_2
	mov	a,r1
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
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_atol_sloc1_1_0,dpl
	mov	(_atol_sloc1_1_0 + 1),dph
	mov	(_atol_sloc1_1_0 + 2),b
	mov	(_atol_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_atol_nptr_65536_59
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	r4,#0x00
	mov	a,r0
	add	a,#0xd0
	mov	r0,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	dptr,#_atol_ret_65536_60
	mov	a,r0
	add	a,_atol_sloc1_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a,(_atol_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_atol_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_atol_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	ljmp	00107$
00132$:
	mov	dptr,#_atol_nptr_65536_59
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	mov	dptr,#_atol_neg_65536_60
	movx	a,@dptr
	jz	00120$
	mov	dptr,#_atol_ret_65536_60
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
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00121$
00120$:
	mov	dptr,#_atol_ret_65536_60
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
00121$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	atol.c:51: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
