;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcstombs_PARM_3
	.globl _wcstombs_PARM_2
	.globl _wcstombs
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
_wcstombs_PARM_2:
	.ds 3
_wcstombs_PARM_3:
	.ds 2
_wcstombs_s_65536_39:
	.ds 3
_wcstombs_m_65536_40:
	.ds 2
_wcstombs_buffer_65536_40:
	.ds 4
_wcstombs_b_131072_41:
	.ds 2
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;	wcstombs.c:33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
_wcstombs:
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
	mov	r0,#_wcstombs_s_65536_39
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	wcstombs.c:35: size_t m = 0;
	mov	r0,#_wcstombs_m_65536_40
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	wcstombs.c:38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	mov	r0,#_wcstombs_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00107$:
	mov	r0,#_wcstombs_PARM_3
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x04
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	jc	00108$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_wctomb_PARM_2
	lcall	__gptrget
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	mov	dptr,#_wcstombs_buffer_65536_40
	mov	b,#0x60
	push	ar4
	push	ar3
	push	ar2
	lcall	_wctomb
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,#_wcstombs_PARM_3
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00129$
	ljmp	00109$
00129$:
00108$:
;	wcstombs.c:40: int b = wctomb(s, *pwcs);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_wctomb_PARM_2
	lcall	__gptrget
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	mov	r0,#_wcstombs_s_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	push	ar4
	push	ar3
	push	ar2
	lcall	_wctomb
	mov	r0,#_wcstombs_b_131072_41
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	pop	ar2
	pop	ar3
	pop	ar4
;	wcstombs.c:42: if(b == 1 && !*s)
	mov	r0,#_wcstombs_b_131072_41
	movx	a,@r0
	cjne	a,#0x01,00130$
	inc	r0
	movx	a,@r0
	jz	00131$
00130$:
	sjmp	00102$
00131$:
	mov	r0,#_wcstombs_s_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	jz	00109$
;	wcstombs.c:43: break;
00102$:
;	wcstombs.c:44: if(b < 0)
	mov	r0,#(_wcstombs_b_131072_41 + 1)
	movx	a,@r0
	jnb	acc.7,00105$
;	wcstombs.c:45: return(-1);
	mov	dptr,#0xffff
	ret
00105$:
;	wcstombs.c:47: n -= b;
	mov	r0,#_wcstombs_b_131072_41
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_wcstombs_PARM_3
	movx	a,@r0
	clr	c
	subb	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
;	wcstombs.c:48: m += b;
	mov	r0,#_wcstombs_m_65536_40
	movx	a,@r0
	add	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
;	wcstombs.c:49: s += b;
	mov	r0,#_wcstombs_s_65536_39
	mov	r1,#_wcstombs_b_131072_41
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	movx	@r0,a
;	wcstombs.c:50: pwcs++;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	ljmp	00107$
00109$:
;	wcstombs.c:53: return(m);
	mov	r0,#_wcstombs_m_65536_40
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
;	wcstombs.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
