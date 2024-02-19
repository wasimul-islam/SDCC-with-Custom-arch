;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mds390 --model-flat24
	
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
	.globl _malloc
	.globl ___memcpy
	.globl _strlen
	.globl _strndup_PARM_2
	.globl _strndup
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
_strndup_PARM_2:
	.ds 2
_strndup_s_65536_62:
	.ds 4
_strndup_l_65536_63:
	.ds 2
_strndup_r_65537_64:
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
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;n                         Allocated with name '_strndup_PARM_2'
;s                         Allocated with name '_strndup_s_65536_62'
;l                         Allocated with name '_strndup_l_65536_63'
;r                         Allocated with name '_strndup_r_65537_64'
;------------------------------------------------------------
;	strndup.c:33: char *strndup (const char *s, size_t n)
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
_strndup:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_strndup_s_65536_62
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
;	strndup.c:35: size_t l = strlen (s);
	mov	dps, #1
	mov	dptr,#_strndup_s_65536_62
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
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strndup_l_65536_63
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	strndup.c:36: if (l > n)
	mov	dptr,#_strndup_PARM_2
	mov	dps, #1
	mov	dptr, #_strndup_l_65536_63
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	jnc  00102$
00115$:
;	strndup.c:37: l = n;
	mov	dptr,#_strndup_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_strndup_l_65536_63
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00102$:
;	strndup.c:38: char *r = malloc (l + 1);
	mov	dptr,#_strndup_l_65536_63
	movx	a,@dptr
	add	a,#0x01
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	lcall	_malloc
	mov	r0,dpl
	mov	r1,dph
	mov	r2,dpx
	mov	dptr,#_strndup_r_65537_64
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	strndup.c:39: if (r)
	mov	dptr,#_strndup_r_65537_64
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00116$
	ljmp	00104$
00116$:
;	strndup.c:41: memcpy (r, s, l);
	mov	dptr,#_strndup_r_65537_64
;	genAssign: resultIsFar = FALSE
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
	mov	dptr,#_strndup_s_65536_62
;	genAssign: resultIsFar = FALSE
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
	mov	dptr,#___memcpy_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_strndup_l_65536_63
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___memcpy_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
	lcall	___memcpy
;	strndup.c:42: r[l] = 0;
	mov	dptr,#_strndup_l_65536_63
	mov	dps, #1
	mov	dptr, #_strndup_r_65537_64
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	mov     dps, #1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00104$:
;	strndup.c:44: return (r);
	mov     dps, #1
	mov     dptr, #_strndup_r_65537_64
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
00105$:
;	strndup.c:45: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
