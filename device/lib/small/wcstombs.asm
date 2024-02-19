;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mmcs51 --model-small
	
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
;pwcs                      Allocated with name '_wcstombs_PARM_2'
;n                         Allocated with name '_wcstombs_PARM_3'
;s                         Allocated with name '_wcstombs_s_65536_39'
;m                         Allocated with name '_wcstombs_m_65536_40'
;buffer                    Allocated with name '_wcstombs_buffer_65536_40'
;b                         Allocated to registers r3 r4 
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
	mov	_wcstombs_s_65536_39,dpl
	mov	(_wcstombs_s_65536_39 + 1),dph
	mov	(_wcstombs_s_65536_39 + 2),b
;	wcstombs.c:35: size_t m = 0;
	clr	a
	mov	_wcstombs_m_65536_40,a
	mov	(_wcstombs_m_65536_40 + 1),a
;	wcstombs.c:38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	mov	r0,_wcstombs_PARM_2
	mov	r1,(_wcstombs_PARM_2 + 1)
	mov	r2,(_wcstombs_PARM_2 + 2)
00107$:
	clr	c
	mov	a,#0x04
	subb	a,_wcstombs_PARM_3
	clr	a
	subb	a,(_wcstombs_PARM_3 + 1)
	jc	00108$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_wctomb_PARM_2,a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 3),a
	mov	dptr,#_wcstombs_buffer_65536_40
	mov	b,#0x40
	push	ar2
	push	ar1
	push	ar0
	lcall	_wctomb
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar1
	pop	ar2
	clr	c
	mov	a,_wcstombs_PARM_3
	subb	a,r3
	mov	a,(_wcstombs_PARM_3 + 1)
	subb	a,r4
	jnc	00129$
	ljmp	00109$
00129$:
00108$:
;	wcstombs.c:40: int b = wctomb(s, *pwcs);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_wctomb_PARM_2,a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_wctomb_PARM_2 + 3),a
	mov	dpl,_wcstombs_s_65536_39
	mov	dph,(_wcstombs_s_65536_39 + 1)
	mov	b,(_wcstombs_s_65536_39 + 2)
	push	ar2
	push	ar1
	push	ar0
	lcall	_wctomb
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar1
	pop	ar2
;	wcstombs.c:42: if(b == 1 && !*s)
	cjne	r3,#0x01,00102$
	cjne	r4,#0x00,00102$
	mov	dpl,_wcstombs_s_65536_39
	mov	dph,(_wcstombs_s_65536_39 + 1)
	mov	b,(_wcstombs_s_65536_39 + 2)
	lcall	__gptrget
	jz	00109$
;	wcstombs.c:43: break;
00102$:
;	wcstombs.c:44: if(b < 0)
	mov	a,r4
	jnb	acc.7,00105$
;	wcstombs.c:45: return(-1);
	mov	dptr,#0xffff
	ret
00105$:
;	wcstombs.c:47: n -= b;
	mov	ar6,r3
	mov	ar7,r4
	mov	a,_wcstombs_PARM_3
	clr	c
	subb	a,r6
	mov	_wcstombs_PARM_3,a
	mov	a,(_wcstombs_PARM_3 + 1)
	subb	a,r7
	mov	(_wcstombs_PARM_3 + 1),a
;	wcstombs.c:48: m += b;
	mov	a,r6
	add	a,_wcstombs_m_65536_40
	mov	_wcstombs_m_65536_40,a
	mov	a,r7
	addc	a,(_wcstombs_m_65536_40 + 1)
	mov	(_wcstombs_m_65536_40 + 1),a
;	wcstombs.c:49: s += b;
	mov	a,r3
	add	a,_wcstombs_s_65536_39
	mov	_wcstombs_s_65536_39,a
	mov	a,r4
	addc	a,(_wcstombs_s_65536_39 + 1)
	mov	(_wcstombs_s_65536_39 + 1),a
;	wcstombs.c:50: pwcs++;
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	ljmp	00107$
00109$:
;	wcstombs.c:53: return(m);
	mov	dpl,_wcstombs_m_65536_40
	mov	dph,(_wcstombs_m_65536_40 + 1)
;	wcstombs.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
