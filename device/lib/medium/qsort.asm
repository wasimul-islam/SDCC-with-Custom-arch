;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort
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
_qsort_sloc0_1_0:
	.ds 3
_qsort_sloc1_1_0:
	.ds 3
_qsort_sloc2_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_swap_sloc0_1_0:
	.ds 2
_swap_sloc1_1_0:
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
_swap_PARM_2:
	.ds 3
_swap_PARM_3:
	.ds 2
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_b_65536_44:
	.ds 3
_qsort_i_131072_45:
	.ds 3
_qsort_j_262144_47:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;sloc0                     Allocated with name '_swap_sloc0_1_0'
;sloc1                     Allocated with name '_swap_sloc1_1_0'
;------------------------------------------------------------
;	qsort.c:33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
_swap:
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
;	qsort.c:35: unsigned char *restrict d = dst;
;	qsort.c:36: unsigned char *restrict s = src;
	mov	r0,#_swap_PARM_2
	movx	a,@r0
	mov	_swap_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_swap_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_swap_sloc1_1_0 + 2),a
;	qsort.c:38: while(n--)
	mov	r0,#_swap_PARM_3
	movx	a,@r0
	mov	_swap_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_swap_sloc0_1_0 + 1),a
00101$:
	mov	r3,_swap_sloc0_1_0
	mov	r4,(_swap_sloc0_1_0 + 1)
	dec	_swap_sloc0_1_0
	mov	a,#0xff
	cjne	a,_swap_sloc0_1_0,00115$
	dec	(_swap_sloc0_1_0 + 1)
00115$:
	mov	a,r3
	orl	a,r4
	jz	00104$
;	qsort.c:40: unsigned char tmp = *d;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
;	qsort.c:41: *d = *s;
	mov	dpl,_swap_sloc1_1_0
	mov	dph,(_swap_sloc1_1_0 + 1)
	mov	b,(_swap_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	qsort.c:42: *s = tmp;
	mov	dpl,_swap_sloc1_1_0
	mov	dph,(_swap_sloc1_1_0 + 1)
	mov	b,(_swap_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	_swap_sloc1_1_0,dpl
	mov	(_swap_sloc1_1_0 + 1),dph
;	qsort.c:43: d++;
;	qsort.c:44: s++;
	sjmp	00101$
00104$:
;	qsort.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;sloc0                     Allocated with name '_qsort_sloc0_1_0'
;sloc1                     Allocated with name '_qsort_sloc1_1_0'
;sloc2                     Allocated with name '_qsort_sloc2_1_0'
;------------------------------------------------------------
;	qsort.c:48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
_qsort:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	qsort.c:50: unsigned char *b = base;
	mov	r0,#_qsort_b_65536_44
	mov	a,r5
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	qsort.c:52: if(nmemb <= 1)
	mov	r0,#_qsort_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x01
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	jc	00102$
;	qsort.c:53: return;
	ret
00102$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	r0,#_qsort_i_131072_45
	mov	a,r5
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#_qsort_PARM_3
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r0,#__mulint_PARM_2
	mov	a,r3
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	r0,#_qsort_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r2,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	r0,#_qsort_b_65536_44
	movx	a,@r0
	add	a,r2
	mov	_qsort_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	mov	(_qsort_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_qsort_sloc0_1_0 + 2),a
00110$:
	mov	r0,#_qsort_i_131072_45
	push	_qsort_sloc0_1_0
	push	(_qsort_sloc0_1_0 + 1)
	push	(_qsort_sloc0_1_0 + 2)
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00139$
	ret
00139$:
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	r0,#_qsort_i_131072_45
	mov	r1,#_qsort_j_262144_47
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
00107$:
	mov	r0,#_qsort_j_262144_47
	mov	r1,#_qsort_b_65536_44
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	movx	a,@r1
	mov	dpl,a
	inc	r1
	movx	a,@r1
	mov	dph,a
	inc	r1
	movx	a,@r1
	mov	b,a
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00140$
	ljmp	00111$
00140$:
	mov	r0,#_qsort_j_262144_47
	movx	a,@r0
	clr	c
	subb	a,r3
	mov	_qsort_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	subb	a,r4
	mov	(_qsort_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_qsort_sloc1_1_0 + 2),a
	push	ar3
	push	ar4
	mov	r3,_qsort_sloc1_1_0
	mov	r4,(_qsort_sloc1_1_0 + 1)
	mov	r5,(_qsort_sloc1_1_0 + 2)
	mov	r0,#_qsort_j_262144_47
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	lcall	00141$
	sjmp	00142$
00141$:
	mov	r0,#_qsort_PARM_4
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	ret
00142$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	mov	a,r7
	pop	ar4
	pop	ar3
	jnb	acc.7,00111$
;	qsort.c:58: swap(j, j - size, size);
	mov	r0,#_qsort_j_262144_47
	movx	a,@r0
	mov	_qsort_sloc2_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_qsort_sloc2_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_qsort_sloc2_1_0 + 2),a
	mov	r5,_qsort_sloc1_1_0
	mov	r6,(_qsort_sloc1_1_0 + 1)
	mov	r7,(_qsort_sloc1_1_0 + 2)
	mov	r0,#_swap_PARM_2
	mov	a,r5
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#_swap_PARM_3
	mov	a,r3
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	dpl,_qsort_sloc2_1_0
	mov	dph,(_qsort_sloc2_1_0 + 1)
	mov	b,(_qsort_sloc2_1_0 + 2)
	push	ar4
	push	ar3
	lcall	_swap
	pop	ar3
	pop	ar4
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	r0,#_qsort_j_262144_47
	mov	a,_qsort_sloc1_1_0
	movx	@r0,a
	mov	a,(_qsort_sloc1_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,(_qsort_sloc1_1_0 + 2)
	inc	r0
	movx	@r0,a
	ljmp	00107$
00111$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	r0,#_qsort_i_131072_45
	movx	a,@r0
	add	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
;	qsort.c:60: }
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
