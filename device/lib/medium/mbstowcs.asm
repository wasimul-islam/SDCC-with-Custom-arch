;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	.optsdcc -mmcs51 --model-medium
	
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
	.ds 2
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
_mbstowcs_PARM_2:
	.ds 3
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_m_65536_40:
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbstowcs_sloc0_1_0'
;sloc1                     Allocated with name '_mbstowcs_sloc1_1_0'
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mbstowcs.c:35: size_t m = 0;
	clr	a
	mov	_mbstowcs_sloc0_1_0,a
	mov	(_mbstowcs_sloc0_1_0 + 1),a
;	mbstowcs.c:36: while(n--)
	mov	r0,#_mbstowcs_m_65536_40
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_mbstowcs_PARM_3
	movx	a,@r0
	mov	_mbstowcs_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_mbstowcs_sloc1_1_0 + 1),a
00105$:
	mov	r3,_mbstowcs_sloc1_1_0
	mov	r4,(_mbstowcs_sloc1_1_0 + 1)
	dec	_mbstowcs_sloc1_1_0
	mov	a,#0xff
	cjne	a,_mbstowcs_sloc1_1_0,00126$
	dec	(_mbstowcs_sloc1_1_0 + 1)
00126$:
	mov	a,r3
	orl	a,r4
	jz	00107$
;	mbstowcs.c:38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,#_mbstowcs_PARM_2
	mov	r1,#_mbtowc_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_mbtowc
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	mbstowcs.c:39: if(!b)
	mov	a,r3
	orl	a,r4
	jz	00107$
;	mbstowcs.c:41: if(b < 0)
	mov	a,r4
	jnb	acc.7,00104$
;	mbstowcs.c:42: return(-1);
	mov	dptr,#0xffff
	ret
00104$:
;	mbstowcs.c:43: s += b;
	mov	r0,#_mbstowcs_PARM_2
	movx	a,@r0
	add	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
;	mbstowcs.c:44: m++;
	mov	r0,#_mbstowcs_m_65536_40
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	mov	r0,#_mbstowcs_m_65536_40
	movx	a,@r0
	mov	_mbstowcs_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_mbstowcs_sloc0_1_0 + 1),a
	sjmp	00105$
00107$:
;	mbstowcs.c:47: return(m);
	mov	dpl,_mbstowcs_sloc0_1_0
	mov	dph,(_mbstowcs_sloc0_1_0 + 1)
;	mbstowcs.c:48: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
