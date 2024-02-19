;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
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
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
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
_memmove_PARM_2:
	.ds 4
_memmove_PARM_3:
	.ds 2
_memmove_dst_65536_27:
	.ds 4
_memmove_c_65536_28:
	.ds 2
_memmove_sloc0_1_0:
	.ds 4
_memmove_sloc1_1_0:
	.ds 4
_memmove_sloc3_1_0:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;size                      Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_65536_27'
;c                         Allocated with name '_memmove_c_65536_28'
;d                         Allocated to registers 
;s                         Allocated to registers 
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
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_memmove_dst_65536_27
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
;	_memmove.c:37: size_t c = size;
	mov	dptr,#_memmove_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memmove_c_65536_28
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	_memmove.c:38: if (c == 0 || dst == src)
	mov	dptr,#_memmove_c_65536_28
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00101$
00142$:
	mov	dptr,#_memmove_PARM_2
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
	mov	dptr,#_memmove_dst_65536_27
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
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	jz   00144$
00143$:
	sjmp 00102$
00144$:
00101$:
;	_memmove.c:39: return dst;
	mov     dps, #1
	mov     dptr, #_memmove_dst_65536_27
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
	ljmp	00113$
00102$:
;	_memmove.c:41: char *d = dst;
	mov	dptr,#_memmove_dst_65536_27
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	_memmove.c:42: const char *s = src;
;	genAssign: resultIsFar = FALSE
	mov	dptr,#_memmove_sloc0_1_0
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_memmove.c:43: if (s < d) {
	mov	dptr,#_memmove_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memmove_sloc1_1_0
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
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	mov	dptr,#_memmove_sloc1_1_0
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
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	jc	00145$
	ljmp	00119$
00145$:
;	_memmove.c:50: s += c;
	mov	dptr,#_memmove_c_65536_28
	mov	dps, #1
	mov	dptr, #_memmove_sloc0_1_0
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	push	acc
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	push	acc
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	push	acc
	mov	dps,#0
	mov	dptr,#_memmove_sloc3_1_0
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
	pop	acc
	lcall	__decdptr
	movx	@dptr,a
;	_memmove.c:51: d += c;
	mov	dptr,#_memmove_c_65536_28
	mov	dps, #1
	mov	dptr, #_memmove_sloc1_1_0
	dec	dps
	movx	a,@dptr
	add	a,r2
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	inc	dps
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dps,#0
;	_memmove.c:52: do {
	mov	dptr,#_memmove_c_65536_28
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00104$:
;	_memmove.c:53: *--d = *--s;
	mov	dptr,#_memmove_sloc1_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dptr,#_memmove_sloc3_1_0
	movx	a,@dptr
	add	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dptr,#_memmove_sloc3_1_0
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
	mov	r6,a
	mov	dptr,#_memmove_sloc1_1_0
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
	mov	a,r6
	lcall	__gptrput
;	_memmove.c:54: } while (--c);
	dec	r2
	cjne	r2,#0xff,00146$
	dec	r3
00146$:
	mov	a,r2
	orl	a,r3
	jnz  00104$
00147$:
;	_memmove.c:59: do {
	sjmp 00112$
00119$:
	mov	dptr,#_memmove_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memmove_sloc1_1_0
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
;	genAssign: resultIsFar = FALSE
	mov	dptr,#_memmove_c_65536_28
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
00107$:
;	_memmove.c:60: *d++ = *s++;
	mov	dptr,#_memmove_sloc1_1_0
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
	mov	r6,a
	mov	dptr,#_memmove_sloc1_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	_memmove.c:61: } while (--c);
	dec	r7
	cjne	r7,#0xff,00148$
	dec	r0
00148$:
	mov	a,r7
	orl	a,r0
	jnz  00107$
00149$:
00112$:
;	_memmove.c:65: return dst;
	mov     dps, #1
	mov     dptr, #_memmove_dst_65536_27
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
00113$:
;	_memmove.c:66: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
