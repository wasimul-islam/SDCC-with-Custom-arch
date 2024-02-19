;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
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
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs
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
_mbstowcs_PARM_2:
	.ds 4
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_m_65536_37:
	.ds 2
_mbstowcs_sloc0_1_0:
	.ds 2
_mbstowcs_sloc1_1_0:
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;s                         Allocated with name '_mbstowcs_PARM_2'
;n                         Allocated with name '_mbstowcs_PARM_3'
;pwcs                      Allocated to registers 
;m                         Allocated with name '_mbstowcs_m_65536_37'
;b                         Allocated to registers r6 r7 
;sloc0                     Allocated with name '_mbstowcs_sloc0_1_0'
;sloc1                     Allocated with name '_mbstowcs_sloc1_1_0'
;------------------------------------------------------------
;	mbstowcs.c:33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
_mbstowcs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	mbstowcs.c:35: size_t m = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbstowcs_m_65536_37
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbstowcs.c:36: while(n--)
;	genAssign: resultIsFar = FALSE
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#_mbstowcs_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbstowcs_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00105$:
	mov	dptr,#_mbstowcs_sloc0_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbstowcs_sloc0_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	mov	a,r6
	orl	a,r7
	jnz	00126$
	ljmp	00107$
00126$:
;	mbstowcs.c:38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	push	ar0
	push	ar1
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbstowcs_sloc1_1_0
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
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_mbstowcs_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_mbstowcs_sloc1_1_0
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
	lcall	_mbtowc
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = FALSE
;	mbstowcs.c:39: if(!b)
	pop	ar1
	pop	ar0
	mov	a,r6
	orl	a,r7
	jnz	00127$
	ljmp	00107$
00127$:
;	mbstowcs.c:41: if(b < 0)
	mov	a,r7
	jnb  acc[7],00104$
00128$:
;	mbstowcs.c:42: return(-1);
	mov  dptr,#0xffff
	ljmp	00108$
00104$:
;	mbstowcs.c:43: s += b;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_mbstowcs_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbstowcs_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	dptr,#_mbstowcs_sloc1_1_0
	mov	dps, #1
	mov	dptr, #_mbstowcs_PARM_2
	dec	dps
	movx	a,@dptr
	add	a,r4
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r2
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	mbstowcs.c:44: m++;
	inc	r0
	cjne	r0,#0x00,00129$
	inc	r1
00129$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbstowcs_m_65536_37
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00105$
00107$:
;	mbstowcs.c:47: return(m);
	mov     dps, #1
	mov     dptr, #_mbstowcs_m_65536_37
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00108$:
;	mbstowcs.c:48: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
