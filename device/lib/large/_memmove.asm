;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
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
	.area	OSEG    (OVR,DATA)
_memmove_sloc0_1_0:
	.ds 3
_memmove_sloc1_1_0:
	.ds 3
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 3
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
_memmove_PARM_2:
	.ds 3
_memmove_PARM_3:
	.ds 2
_memmove_dst_65536_26:
	.ds 3
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;size                      Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_65536_26'
;c                         Allocated with name '_memmove_c_65536_27'
;d                         Allocated with name '_memmove_d_65537_28'
;s                         Allocated with name '_memmove_s_65537_28'
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;sloc3                     Allocated with name '_memmove_sloc3_1_0'
;------------------------------------------------------------
;	_memmove.c:35: void *memmove (void *dst, const void *src, size_t size)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
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
	mov	dptr,#_memmove_dst_65536_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_memmove.c:37: size_t c = size;
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	_memmove.c:38: if (c == 0 || dst == src)
	mov	r7,a
	orl	a,r6
	jz	00101$
	mov	dptr,#_memmove_dst_65536_26
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_memmove_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	push	ar0
	push	ar1
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00139$
	sjmp	00102$
00139$:
00101$:
;	_memmove.c:39: return dst;
	mov	dptr,#_memmove_dst_65536_26
	movx	a,@dptr
	mov	_memmove_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_sloc0_1_0 + 2),a
	mov	dpl,_memmove_sloc0_1_0
	mov	dph,(_memmove_sloc0_1_0 + 1)
	mov	b,(_memmove_sloc0_1_0 + 2)
	ret
00102$:
;	_memmove.c:41: char *d = dst;
	push	ar6
	push	ar7
;	_memmove.c:42: const char *s = src;
	mov	_memmove_sloc0_1_0,r0
	mov	(_memmove_sloc0_1_0 + 1),r1
	mov	(_memmove_sloc0_1_0 + 2),r2
;	_memmove.c:43: if (s < d) {
	mov	_memmove_sloc1_1_0,_memmove_sloc0_1_0
	mov	(_memmove_sloc1_1_0 + 1),(_memmove_sloc0_1_0 + 1)
	mov	(_memmove_sloc1_1_0 + 2),(_memmove_sloc0_1_0 + 2)
	mov	ar0,r3
	mov	ar1,r4
	mov	ar7,r5
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	jnc	00119$
;	_memmove.c:50: s += c;
	mov	a,r6
	add	a,_memmove_sloc0_1_0
	mov	_memmove_sloc3_1_0,a
	mov	a,r7
	addc	a,(_memmove_sloc0_1_0 + 1)
	mov	(_memmove_sloc3_1_0 + 1),a
	mov	(_memmove_sloc3_1_0 + 2),(_memmove_sloc0_1_0 + 2)
;	_memmove.c:51: d += c;
	mov	a,r6
	add	a,r3
	mov	_memmove_sloc1_1_0,a
	mov	a,r7
	addc	a,r4
	mov	(_memmove_sloc1_1_0 + 1),a
	mov	(_memmove_sloc1_1_0 + 2),r5
;	_memmove.c:52: do {
	mov	_memmove_sloc2_1_0,r6
	mov	(_memmove_sloc2_1_0 + 1),r7
00104$:
;	_memmove.c:53: *--d = *--s;
	dec	_memmove_sloc1_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc1_1_0,00141$
	dec	(_memmove_sloc1_1_0 + 1)
00141$:
	dec	_memmove_sloc3_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc3_1_0,00142$
	dec	(_memmove_sloc3_1_0 + 1)
00142$:
	mov	dpl,_memmove_sloc3_1_0
	mov	dph,(_memmove_sloc3_1_0 + 1)
	mov	b,(_memmove_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	__gptrput
;	_memmove.c:54: } while (--c);
	dec	_memmove_sloc2_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc2_1_0,00143$
	dec	(_memmove_sloc2_1_0 + 1)
00143$:
	mov	a,_memmove_sloc2_1_0
	orl	a,(_memmove_sloc2_1_0 + 1)
	jnz	00104$
;	_memmove.c:59: do {
	sjmp	00112$
00119$:
	mov	r0,_memmove_sloc0_1_0
	mov	r1,(_memmove_sloc0_1_0 + 1)
	mov	r2,(_memmove_sloc0_1_0 + 2)
	mov	_memmove_sloc3_1_0,r6
	mov	(_memmove_sloc3_1_0 + 1),r7
00107$:
;	_memmove.c:60: *d++ = *s++;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	_memmove.c:61: } while (--c);
	dec	_memmove_sloc3_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc3_1_0,00145$
	dec	(_memmove_sloc3_1_0 + 1)
00145$:
	mov	a,_memmove_sloc3_1_0
	orl	a,(_memmove_sloc3_1_0 + 1)
	jnz	00107$
00112$:
;	_memmove.c:65: return dst;
	mov	dptr,#_memmove_dst_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	_memmove.c:66: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
