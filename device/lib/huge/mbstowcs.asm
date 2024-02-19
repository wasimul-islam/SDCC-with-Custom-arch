;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs
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
_mbstowcs_sloc0_1_0:
	.ds 2
_mbstowcs_sloc1_1_0:
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
_mbstowcs_PARM_2:
	.ds 3
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_pwcs_65536_39:
	.ds 3
_mbstowcs_m_65536_40:
	.ds 2
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbstowcs_sloc0_1_0'
;sloc1                     Allocated with name '_mbstowcs_sloc1_1_0'
;s                         Allocated with name '_mbstowcs_PARM_2'
;n                         Allocated with name '_mbstowcs_PARM_3'
;pwcs                      Allocated with name '_mbstowcs_pwcs_65536_39'
;m                         Allocated with name '_mbstowcs_m_65536_40'
;b                         Allocated with name '_mbstowcs_b_131072_41'
;------------------------------------------------------------
;	mbstowcs.c:33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
_mbstowcs:
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
	mov	dptr,#_mbstowcs_pwcs_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbstowcs.c:35: size_t m = 0;
	mov	dptr,#_mbstowcs_m_65536_40
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbstowcs.c:36: while(n--)
	mov	dptr,#_mbstowcs_pwcs_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_mbstowcs_sloc0_1_0,a
	mov	(_mbstowcs_sloc0_1_0 + 1),a
	mov	dptr,#_mbstowcs_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00105$:
	mov	ar0,r1
	mov	ar4,r2
	dec	r1
	cjne	r1,#0xff,00126$
	dec	r2
00126$:
	mov	a,r0
	orl	a,r4
	jnz	00127$
	ljmp	00107$
00127$:
;	mbstowcs.c:38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	push	ar1
	push	ar2
	mov	_mbstowcs_sloc1_1_0,r5
	mov	(_mbstowcs_sloc1_1_0 + 1),r6
	mov	(_mbstowcs_sloc1_1_0 + 2),r7
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_mbstowcs_pwcs_65536_39
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbstowcs_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbtowc_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_mbstowcs_sloc1_1_0
	mov	dph,(_mbstowcs_sloc1_1_0 + 1)
	mov	b,(_mbstowcs_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	mov	r0,#_mbtowc
	mov	r1,#(_mbtowc >> 8)
	mov	r2,#(_mbtowc >> 16)
	lcall	__sdcc_banked_call
	mov	_mbstowcs_sloc1_1_0,dpl
	mov	(_mbstowcs_sloc1_1_0 + 1),dph
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	mbstowcs.c:39: if(!b)
	pop	ar2
	pop	ar1
	mov	a,_mbstowcs_sloc1_1_0
	orl	a,(_mbstowcs_sloc1_1_0 + 1)
	jz	00107$
;	mbstowcs.c:41: if(b < 0)
	mov	a,(_mbstowcs_sloc1_1_0 + 1)
	jnb	acc.7,00104$
;	mbstowcs.c:42: return(-1);
	mov	dptr,#0xffff
	sjmp	00108$
00104$:
;	mbstowcs.c:43: s += b;
	mov	dptr,#_mbstowcs_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbstowcs_PARM_2
	mov	a,_mbstowcs_sloc1_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_mbstowcs_sloc1_1_0 + 1)
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	mbstowcs.c:44: m++;
	inc	_mbstowcs_sloc0_1_0
	clr	a
	cjne	a,_mbstowcs_sloc0_1_0,00130$
	inc	(_mbstowcs_sloc0_1_0 + 1)
00130$:
	mov	dptr,#_mbstowcs_m_65536_40
	mov	a,_mbstowcs_sloc0_1_0
	movx	@dptr,a
	mov	a,(_mbstowcs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	ljmp	00105$
00107$:
;	mbstowcs.c:47: return(m);
	mov	dptr,#_mbstowcs_m_65536_40
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
00108$:
;	mbstowcs.c:48: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
