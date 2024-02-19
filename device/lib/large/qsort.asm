;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mmcs51 --model-large
	
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
	.ds 2
_qsort_sloc1_1_0:
	.ds 3
_qsort_sloc2_1_0:
	.ds 3
_qsort_sloc3_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_swap_sloc0_1_0:
	.ds 2
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
_swap_PARM_2:
	.ds 3
_swap_PARM_3:
	.ds 2
_swap_dst_65536_39:
	.ds 3
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_base_65536_42:
	.ds 3
_qsort_i_131072_45:
	.ds 3
_qsort_j_262144_47:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src                       Allocated with name '_swap_PARM_2'
;n                         Allocated with name '_swap_PARM_3'
;dst                       Allocated with name '_swap_dst_65536_39'
;d                         Allocated with name '_swap_d_65536_40'
;s                         Allocated with name '_swap_s_65536_40'
;tmp                       Allocated with name '_swap_tmp_131072_41'
;sloc0                     Allocated with name '_swap_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_swap_dst_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	qsort.c:35: unsigned char *restrict d = dst;
	mov	dptr,#_swap_dst_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	qsort.c:36: unsigned char *restrict s = src;
	mov	dptr,#_swap_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	qsort.c:38: while(n--)
	mov	dptr,#_swap_PARM_3
	movx	a,@dptr
	mov	_swap_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_swap_sloc0_1_0 + 1),a
00101$:
	mov	r0,_swap_sloc0_1_0
	mov	r1,(_swap_sloc0_1_0 + 1)
	dec	_swap_sloc0_1_0
	mov	a,#0xff
	cjne	a,_swap_sloc0_1_0,00115$
	dec	(_swap_sloc0_1_0 + 1)
00115$:
	mov	a,r0
	orl	a,r1
	jz	00104$
;	qsort.c:40: unsigned char tmp = *d;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
;	qsort.c:41: *d = *s;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	qsort.c:42: *s = tmp;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
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
;sloc3                     Allocated with name '_qsort_sloc3_1_0'
;nmemb                     Allocated with name '_qsort_PARM_2'
;size                      Allocated with name '_qsort_PARM_3'
;compar                    Allocated with name '_qsort_PARM_4'
;base                      Allocated with name '_qsort_base_65536_42'
;b                         Allocated with name '_qsort_b_65536_44'
;i                         Allocated with name '_qsort_i_131072_45'
;j                         Allocated with name '_qsort_j_262144_47'
;------------------------------------------------------------
;	qsort.c:48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
_qsort:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_qsort_base_65536_42
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	qsort.c:50: unsigned char *b = base;
	mov	dptr,#_qsort_base_65536_42
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	qsort.c:52: if(nmemb <= 1)
	mov	dptr,#_qsort_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,#0x01
	subb	a,r0
	clr	a
	subb	a,r1
	jc	00102$
;	qsort.c:53: return;
	ret
00102$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	dptr,#_qsort_i_131072_45
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dptr,#_qsort_PARM_3
	movx	a,@dptr
	mov	_qsort_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_qsort_sloc0_1_0 + 1),a
	mov	dptr,#__mulint_PARM_2
	mov	a,_qsort_sloc0_1_0
	movx	@dptr,a
	mov	a,(_qsort_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
00110$:
	mov	dptr,#_qsort_i_131072_45
	movx	a,@dptr
	mov	_qsort_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_qsort_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_qsort_sloc1_1_0 + 2),a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_qsort_sloc1_1_0
	mov	dph,(_qsort_sloc1_1_0 + 1)
	mov	b,(_qsort_sloc1_1_0 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00139$
	ret
00139$:
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	dptr,#_qsort_j_262144_47
	mov	a,_qsort_sloc1_1_0
	movx	@dptr,a
	mov	a,(_qsort_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_qsort_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
00107$:
	mov	dptr,#_qsort_j_262144_47
	movx	a,@dptr
	mov	_qsort_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_qsort_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_qsort_sloc1_1_0 + 2),a
	push	_qsort_sloc1_1_0
	push	(_qsort_sloc1_1_0 + 1)
	push	(_qsort_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00140$
	ljmp	00111$
00140$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,_qsort_sloc1_1_0
	clr	c
	subb	a,_qsort_sloc0_1_0
	mov	_qsort_sloc2_1_0,a
	mov	a,(_qsort_sloc1_1_0 + 1)
	subb	a,(_qsort_sloc0_1_0 + 1)
	mov	(_qsort_sloc2_1_0 + 1),a
	mov	(_qsort_sloc2_1_0 + 2),(_qsort_sloc1_1_0 + 2)
	mov	_qsort_sloc3_1_0,_qsort_sloc2_1_0
	mov	(_qsort_sloc3_1_0 + 1),(_qsort_sloc2_1_0 + 1)
	mov	(_qsort_sloc3_1_0 + 2),(_qsort_sloc2_1_0 + 2)
	mov	r2,_qsort_sloc1_1_0
	mov	r3,(_qsort_sloc1_1_0 + 1)
	mov	r4,(_qsort_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	_qsort_sloc3_1_0
	push	(_qsort_sloc3_1_0 + 1)
	push	(_qsort_sloc3_1_0 + 2)
	lcall	00141$
	sjmp	00142$
00141$:
	mov	dptr,#_qsort_PARM_4
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00142$:
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnb	acc.7,00111$
;	qsort.c:58: swap(j, j - size, size);
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_qsort_sloc1_1_0
	mov	r1,(_qsort_sloc1_1_0 + 1)
	mov	r4,(_qsort_sloc1_1_0 + 2)
	mov	_qsort_sloc3_1_0,r0
	mov	(_qsort_sloc3_1_0 + 1),r1
	mov	(_qsort_sloc3_1_0 + 2),r4
	mov	r2,_qsort_sloc2_1_0
	mov	r3,(_qsort_sloc2_1_0 + 1)
	mov	r4,(_qsort_sloc2_1_0 + 2)
	mov	dptr,#_swap_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_swap_PARM_3
	mov	a,_qsort_sloc0_1_0
	movx	@dptr,a
	mov	a,(_qsort_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_qsort_sloc3_1_0
	mov	dph,(_qsort_sloc3_1_0 + 1)
	mov	b,(_qsort_sloc3_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_swap
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	dptr,#_qsort_j_262144_47
	mov	a,_qsort_sloc2_1_0
	movx	@dptr,a
	mov	a,(_qsort_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_qsort_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00107$
00111$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_qsort_i_131072_45
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_qsort_i_131072_45
	mov	a,_qsort_sloc0_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_qsort_sloc0_1_0 + 1)
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
;	qsort.c:60: }
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
