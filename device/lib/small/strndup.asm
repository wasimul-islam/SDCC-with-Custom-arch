;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mmcs51 --model-small
	
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
_strndup_PARM_2:
	.ds 2
_strndup_s_65536_64:
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
;n                         Allocated with name '_strndup_PARM_2'
;s                         Allocated with name '_strndup_s_65536_64'
;l                         Allocated to registers r3 r4 
;r                         Allocated to registers r1 r0 r2 
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
;	strndup.c:35: size_t l = strlen (s);
	mov	_strndup_s_65536_64,dpl
	mov	(_strndup_s_65536_64 + 1),dph
	mov	(_strndup_s_65536_64 + 2),b
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
;	strndup.c:36: if (l > n)
	clr	c
	mov	a,_strndup_PARM_2
	subb	a,r3
	mov	a,(_strndup_PARM_2 + 1)
	subb	a,r4
	jnc	00102$
;	strndup.c:37: l = n;
	mov	r3,_strndup_PARM_2
	mov	r4,(_strndup_PARM_2 + 1)
00102$:
;	strndup.c:38: char *r = malloc (l + 1);
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	push	ar4
	push	ar3
	lcall	_malloc
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	mov	ar0,r2
	mov	r2,#0x00
;	strndup.c:39: if (r)
	mov	a,r1
	orl	a,r0
	jz	00104$
;	strndup.c:41: memcpy (r, s, l);
	mov	ar5,r1
	mov	ar6,r0
	mov	ar7,r2
	mov	___memcpy_PARM_2,_strndup_s_65536_64
	mov	(___memcpy_PARM_2 + 1),(_strndup_s_65536_64 + 1)
	mov	(___memcpy_PARM_2 + 2),(_strndup_s_65536_64 + 2)
	mov	___memcpy_PARM_3,r3
	mov	(___memcpy_PARM_3 + 1),r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___memcpy
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	strndup.c:42: r[l] = 0;
	mov	a,r3
	add	a,r1
	mov	r3,a
	mov	a,r4
	addc	a,r0
	mov	r4,a
	mov	ar7,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
00104$:
;	strndup.c:44: return (r);
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
;	strndup.c:45: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
