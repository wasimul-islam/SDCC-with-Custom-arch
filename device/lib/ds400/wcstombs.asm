;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_wcstombs_PARM_2:
	.ds 4
_wcstombs_PARM_3:
	.ds 2
_wcstombs_s_65536_36:
	.ds 4
_wcstombs_m_65536_37:
	.ds 2
_wcstombs_buffer_65536_37:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;s                         Allocated with name '_wcstombs_s_65536_36'
;m                         Allocated with name '_wcstombs_m_65536_37'
;buffer                    Allocated with name '_wcstombs_buffer_65536_37'
;b                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	wcstombs.c:33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
_wcstombs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_wcstombs_s_65536_36
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	wcstombs.c:35: size_t m = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_wcstombs_m_65536_37
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	wcstombs.c:38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	mov	dptr,#_wcstombs_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	mov	dptr,#_wcstombs_PARM_3
	clr	c
	mov	a,#0x04
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00108$
00128$:
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_wctomb_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov dptr,#_wcstombs_buffer_65536_37
	mov	b,#0x00
	lcall	_wctomb
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_wcstombs_PARM_3
	clr	c
	movx	a,@dptr
	subb	a,r2
	inc	dptr
	movx	a,@dptr
	subb	a,r3
	jnc	00129$
	ljmp	00109$
00129$:
00108$:
;	wcstombs.c:40: int b = wctomb(s, *pwcs);
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_wctomb_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_wcstombs_s_65536_36
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_wctomb
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
;	wcstombs.c:42: if(b == 1 && !*s)
	cjne r2,#0x01,00102$
	cjne r3,#0x00,00102$
00131$:
	mov	dptr,#_wcstombs_s_65536_36
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov  r4,a
	jz  00109$
00132$:
;	wcstombs.c:43: break;
00102$:
;	wcstombs.c:44: if(b < 0)
	mov	a,r3
	jnb  acc[7],00105$
00133$:
;	wcstombs.c:45: return(-1);
	mov  dptr,#0xffff
	sjmp 00110$
00105$:
;	wcstombs.c:47: n -= b;
	mov	ar4,r2
	mov	ar5,r3
	mov	dptr,#_wcstombs_PARM_3
	clr	c
	movx	a,@dptr
	subb	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	subb	a,r5
	movx	@dptr,a
;	wcstombs.c:48: m += b;
	mov	dptr,#_wcstombs_m_65536_37
	movx	a,@dptr
	add	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	movx	@dptr,a
;	wcstombs.c:49: s += b;
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	dptr,#_wcstombs_s_65536_36
	movx	a,@dptr
	add	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	wcstombs.c:50: pwcs++;
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00107$
00109$:
;	wcstombs.c:53: return(m);
	mov     dps, #1
	mov     dptr, #_wcstombs_m_65536_37
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00110$:
;	wcstombs.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
