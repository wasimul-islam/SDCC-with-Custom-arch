;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcscmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcscmp_PARM_2
	.globl _wcscmp
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
_wcscmp_sloc0_1_0:
	.ds 4
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
_wcscmp_PARM_2:
	.ds 3
_wcscmp_s1_65536_9:
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2                        Allocated with name '_wcscmp_PARM_2'
;s1                        Allocated with name '_wcscmp_s1_65536_9'
;sloc0                     Allocated with name '_wcscmp_sloc0_1_0'
;------------------------------------------------------------
;	wcscmp.c:31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
_wcscmp:
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
	mov	dptr,#_wcscmp_s1_65536_9
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	wcscmp.c:33: while(*s1 == *s2 && *s1)
	mov	dptr,#_wcscmp_s1_65536_9
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_wcscmp_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00102$:
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_wcscmp_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_wcscmp_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_wcscmp_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_wcscmp_sloc0_1_0 + 3),a
	push	ar7
	push	ar5
	push	ar6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	cjne	a,_wcscmp_sloc0_1_0,00132$
	mov	a,r1
	cjne	a,(_wcscmp_sloc0_1_0 + 1),00132$
	mov	a,r6
	cjne	a,(_wcscmp_sloc0_1_0 + 2),00132$
	mov	a,r7
	cjne	a,(_wcscmp_sloc0_1_0 + 3),00132$
	sjmp	00133$
00132$:
	pop	ar6
	pop	ar5
	pop	ar7
	sjmp	00116$
00133$:
	pop	ar6
	pop	ar5
	pop	ar7
	mov	a,_wcscmp_sloc0_1_0
	orl	a,(_wcscmp_sloc0_1_0 + 1)
	orl	a,(_wcscmp_sloc0_1_0 + 2)
	orl	a,(_wcscmp_sloc0_1_0 + 3)
	jz	00116$
;	wcscmp.c:34: s1++, s2++;
	mov	a,#0x04
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_wcscmp_s1_65536_9
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r2,a
	ljmp	00102$
00116$:
	mov	dptr,#_wcscmp_s1_65536_9
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	wcscmp.c:36: if(*s1 < *s2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r5
	subb	a,r2
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jnc	00106$
;	wcscmp.c:37: return(-1);
	mov	dptr,#0xffff
	ret
00106$:
;	wcscmp.c:38: if(*s1 > *s2)
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r2
	subb	a,r5
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00108$
;	wcscmp.c:39: return(1);
	mov	dptr,#0x0001
	ret
00108$:
;	wcscmp.c:40: return(0);
	mov	dptr,#0x0000
;	wcscmp.c:41: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
