;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mmcs51 --model-medium
	
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
_strndup_PARM_2:
	.ds 2
_strndup_s_65536_64:
	.ds 3
_strndup_r_65537_66:
	.ds 3
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
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;	strndup.c:33: char *strndup (const char *s, size_t n)
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
_strndup:
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
	mov	r0,#_strndup_s_65536_64
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	strndup.c:35: size_t l = strlen (s);
	mov	r0,#_strndup_s_65536_64
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
;	strndup.c:36: if (l > n)
	mov	r0,#_strndup_PARM_2
	clr	c
	movx	a,@r0
	subb	a,r3
	inc	r0
	movx	a,@r0
	subb	a,r4
	jnc	00102$
;	strndup.c:37: l = n;
	mov	r0,#_strndup_PARM_2
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00102$:
;	strndup.c:38: char *r = malloc (l + 1);
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	push	ar4
	push	ar3
	lcall	_malloc
	mov	r2,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	r0,#_strndup_r_65537_66
	mov	a,r2
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strndup.c:39: if (r)
	mov	r0,#_strndup_r_65537_66
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00104$
;	strndup.c:41: memcpy (r, s, l);
	mov	r0,#_strndup_r_65537_66
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_strndup_s_65536_64
	mov	r1,#___memcpy_PARM_2
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
	mov	r0,#___memcpy_PARM_3
	mov	a,r3
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	___memcpy
	pop	ar3
	pop	ar4
;	strndup.c:42: r[l] = 0;
	mov	r0,#_strndup_r_65537_66
	movx	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00104$:
;	strndup.c:44: return (r);
	mov	r0,#_strndup_r_65537_66
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
;	strndup.c:45: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
