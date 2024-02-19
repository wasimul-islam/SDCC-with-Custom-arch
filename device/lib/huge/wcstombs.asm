;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mmcs51 --model-huge
	
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
_wcstombs_sloc0_1_0:
	.ds 2
_wcstombs_sloc1_1_0:
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
;sloc0                     Allocated with name '_wcstombs_sloc0_1_0'
;sloc1                     Allocated with name '_wcstombs_sloc1_1_0'
;pwcs                      Allocated with name '_wcstombs_PARM_2'
;n                         Allocated with name '_wcstombs_PARM_3'
;s                         Allocated with name '_wcstombs_s_65536_39'
;m                         Allocated with name '_wcstombs_m_65536_40'
;buffer                    Allocated with name '_wcstombs_buffer_65536_40'
;b                         Allocated with name '_wcstombs_b_131072_41'
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
	mov	dptr,#_wcstombs_s_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:35: size_t m = 0;
	mov	dptr,#_wcstombs_m_65536_40
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	mov	dptr,#_wcstombs_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	mov	dptr,#_wcstombs_PARM_3
	movx	a,@dptr
	mov	_wcstombs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wcstombs_sloc0_1_0 + 1),a
	clr	c
	mov	a,#0x04
	subb	a,_wcstombs_sloc0_1_0
	clr	a
	subb	a,(_wcstombs_sloc0_1_0 + 1)
	jc	00108$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_wctomb_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_wcstombs_buffer_65536_40
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_wctomb
	mov	r1,#(_wctomb >> 8)
	mov	r2,#(_wctomb >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,_wcstombs_sloc0_1_0
	subb	a,r3
	mov	a,(_wcstombs_sloc0_1_0 + 1)
	subb	a,r4
	jnc	00129$
	ljmp	00109$
00129$:
00108$:
;	wcstombs.c:40: int b = wctomb(s, *pwcs);
	mov	dptr,#_wcstombs_s_65536_39
	movx	a,@dptr
	mov	_wcstombs_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wcstombs_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_wcstombs_sloc1_1_0 + 2),a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_wctomb_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_wcstombs_sloc1_1_0
	mov	dph,(_wcstombs_sloc1_1_0 + 1)
	mov	b,(_wcstombs_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_wctomb
	mov	r1,#(_wctomb >> 8)
	mov	r2,#(_wctomb >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	wcstombs.c:42: if(b == 1 && !*s)
	cjne	r3,#0x01,00102$
	cjne	r4,#0x00,00102$
	mov	dptr,#_wcstombs_s_65536_39
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00109$
;	wcstombs.c:43: break;
00102$:
;	wcstombs.c:44: if(b < 0)
	mov	a,r4
	jnb	acc.7,00105$
;	wcstombs.c:45: return(-1);
	mov	dptr,#0xffff
	sjmp	00110$
00105$:
;	wcstombs.c:47: n -= b;
	mov	dptr,#_wcstombs_PARM_3
	movx	a,@dptr
	mov	_wcstombs_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wcstombs_sloc1_1_0 + 1),a
	mov	_wcstombs_sloc0_1_0,r3
	mov	(_wcstombs_sloc0_1_0 + 1),r4
	mov	dptr,#_wcstombs_PARM_3
	mov	a,_wcstombs_sloc1_1_0
	clr	c
	subb	a,_wcstombs_sloc0_1_0
	movx	@dptr,a
	mov	a,(_wcstombs_sloc1_1_0 + 1)
	subb	a,(_wcstombs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:48: m += b;
	mov	dptr,#_wcstombs_m_65536_40
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_wcstombs_m_65536_40
	mov	a,_wcstombs_sloc0_1_0
	add	a,r1
	movx	@dptr,a
	mov	a,(_wcstombs_sloc0_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:49: s += b;
	mov	dptr,#_wcstombs_s_65536_39
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_wcstombs_s_65536_39
	mov	a,r3
	add	a,r0
	movx	@dptr,a
	mov	a,r4
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:50: pwcs++;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00107$
00109$:
;	wcstombs.c:53: return(m);
	mov	dptr,#_wcstombs_m_65536_40
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
00110$:
;	wcstombs.c:54: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
