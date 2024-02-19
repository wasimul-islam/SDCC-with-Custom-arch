;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mmcs51 --model-small
	
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
_qsort_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_swap_PARM_2:
	.ds 3
_swap_PARM_3:
	.ds 2
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
;dst                       Allocated to registers r5 r6 r7 
;d                         Allocated to registers 
;s                         Allocated to registers 
;tmp                       Allocated to registers r1 
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	qsort.c:35: unsigned char *restrict d = dst;
;	qsort.c:36: unsigned char *restrict s = src;
	mov	r2,_swap_PARM_2
	mov	r3,(_swap_PARM_2 + 1)
	mov	r4,(_swap_PARM_2 + 2)
;	qsort.c:38: while(n--)
	mov	_swap_sloc0_1_0,_swap_PARM_3
	mov	(_swap_sloc0_1_0 + 1),(_swap_PARM_3 + 1)
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
;nmemb                     Allocated with name '_qsort_PARM_2'
;size                      Allocated with name '_qsort_PARM_3'
;compar                    Allocated with name '_qsort_PARM_4'
;base                      Allocated to registers r5 r6 r7 
;b                         Allocated with name '_qsort_b_65536_44'
;i                         Allocated with name '_qsort_i_131072_45'
;j                         Allocated with name '_qsort_j_262144_47'
;sloc0                     Allocated with name '_qsort_sloc0_1_0'
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
	mov	_qsort_b_65536_44,r5
	mov	(_qsort_b_65536_44 + 1),r6
	mov	(_qsort_b_65536_44 + 2),r7
;	qsort.c:52: if(nmemb <= 1)
	clr	c
	mov	a,#0x01
	subb	a,_qsort_PARM_2
	clr	a
	subb	a,(_qsort_PARM_2 + 1)
	jc	00102$
;	qsort.c:53: return;
	ret
00102$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	_qsort_i_131072_45,r5
	mov	(_qsort_i_131072_45 + 1),r6
	mov	(_qsort_i_131072_45 + 2),r7
	mov	r0,_qsort_PARM_3
	mov	r1,(_qsort_PARM_3 + 1)
	mov	__mulint_PARM_2,r0
	mov	(__mulint_PARM_2 + 1),r1
	mov	dpl,_qsort_PARM_2
	mov	dph,(_qsort_PARM_2 + 1)
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar1
	mov	a,r3
	add	a,_qsort_b_65536_44
	mov	r3,a
	mov	a,r4
	addc	a,(_qsort_b_65536_44 + 1)
	mov	r2,a
	mov	r4,(_qsort_b_65536_44 + 2)
00110$:
	push	ar3
	push	ar2
	push	ar4
	mov	dpl,_qsort_i_131072_45
	mov	dph,(_qsort_i_131072_45 + 1)
	mov	b,(_qsort_i_131072_45 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00139$
	ret
00139$:
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	_qsort_j_262144_47,_qsort_i_131072_45
	mov	(_qsort_j_262144_47 + 1),(_qsort_i_131072_45 + 1)
	mov	(_qsort_j_262144_47 + 2),(_qsort_i_131072_45 + 2)
00107$:
	push	_qsort_j_262144_47
	push	(_qsort_j_262144_47 + 1)
	push	(_qsort_j_262144_47 + 2)
	mov	dpl,_qsort_b_65536_44
	mov	dph,(_qsort_b_65536_44 + 1)
	mov	b,(_qsort_b_65536_44 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00140$
	ljmp	00111$
00140$:
	push	ar3
	push	ar2
	push	ar4
	mov	a,_qsort_j_262144_47
	clr	c
	subb	a,r0
	mov	_qsort_sloc0_1_0,a
	mov	a,(_qsort_j_262144_47 + 1)
	subb	a,r1
	mov	(_qsort_sloc0_1_0 + 1),a
	mov	(_qsort_sloc0_1_0 + 2),(_qsort_j_262144_47 + 2)
	mov	r5,_qsort_sloc0_1_0
	mov	r6,(_qsort_sloc0_1_0 + 1)
	mov	r7,(_qsort_sloc0_1_0 + 2)
	mov	r2,_qsort_j_262144_47
	mov	r3,(_qsort_j_262144_47 + 1)
	mov	r4,(_qsort_j_262144_47 + 2)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar5
	push	ar6
	push	ar7
	lcall	00141$
	sjmp	00142$
00141$:
	push	_qsort_PARM_4
	push	(_qsort_PARM_4 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00142$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r7
	pop	ar4
	pop	ar2
	pop	ar3
	jnb	acc.7,00111$
;	qsort.c:58: swap(j, j - size, size);
	push	ar3
	push	ar2
	push	ar4
	mov	r5,_qsort_j_262144_47
	mov	r6,(_qsort_j_262144_47 + 1)
	mov	r7,(_qsort_j_262144_47 + 2)
	mov	r2,_qsort_sloc0_1_0
	mov	r3,(_qsort_sloc0_1_0 + 1)
	mov	r4,(_qsort_sloc0_1_0 + 2)
	mov	_swap_PARM_2,r2
	mov	(_swap_PARM_2 + 1),r3
	mov	(_swap_PARM_2 + 2),r4
	mov	_swap_PARM_3,r0
	mov	(_swap_PARM_3 + 1),r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_swap
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	_qsort_j_262144_47,_qsort_sloc0_1_0
	mov	(_qsort_j_262144_47 + 1),(_qsort_sloc0_1_0 + 1)
	mov	(_qsort_j_262144_47 + 2),(_qsort_sloc0_1_0 + 2)
	pop	ar4
	pop	ar2
	pop	ar3
	ljmp	00107$
00111$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	a,r0
	add	a,_qsort_i_131072_45
	mov	_qsort_i_131072_45,a
	mov	a,r1
	addc	a,(_qsort_i_131072_45 + 1)
	mov	(_qsort_i_131072_45 + 1),a
;	qsort.c:60: }
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
