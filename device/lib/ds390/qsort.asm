;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
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
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort
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
_swap_PARM_2:
	.ds 4
_swap_PARM_3:
	.ds 2
_swap_sloc1_1_0:
	.ds 4
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 3
_qsort_b_65536_41:
	.ds 4
_qsort_i_131072_42:
	.ds 4
_qsort_j_262144_44:
	.ds 4
_qsort_sloc0_1_0:
	.ds 2
_qsort_sloc1_1_0:
	.ds 4
_qsort_sloc2_1_0:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src                       Allocated with name '_swap_PARM_2'
;n                         Allocated with name '_swap_PARM_3'
;dst                       Allocated to registers 
;d                         Allocated to registers 
;s                         Allocated to registers 
;tmp                       Allocated to registers 
;sloc0                     Allocated with name '_swap_sloc0_1_0'
;sloc1                     Allocated with name '_swap_sloc1_1_0'
;------------------------------------------------------------
;	qsort.c:33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
_swap:
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
;	qsort.c:35: unsigned char *restrict d = dst;
;	qsort.c:36: unsigned char *restrict s = src;
	mov	dptr,#_swap_PARM_2
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
	mov	dptr,#_swap_sloc1_1_0
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
;	qsort.c:38: while(n--)
	mov	dptr,#_swap_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00101$:
;	genAssign: resultIsFar = FALSE
	mov	ar6,r0
	mov	ar7,r1
	dec	r0
	cjne	r0,#0xff,00115$
	dec	r1
00115$:
	mov	a,r6
	orl	a,r7
	jz  00104$
00116$:
;	qsort.c:40: unsigned char tmp = *d;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
;	qsort.c:41: *d = *s;
	mov	dptr,#_swap_sloc1_1_0
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
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	qsort.c:42: *s = tmp;
	mov	dptr,#_swap_sloc1_1_0
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
;	qsort.c:43: d++;
;	qsort.c:44: s++;
	mov	dptr,#_swap_sloc1_1_0
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
	ljmp	00101$
00104$:
;	qsort.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;nmemb                     Allocated with name '_qsort_PARM_2'
;size                      Allocated with name '_qsort_PARM_3'
;compar                    Allocated with name '_qsort_PARM_4'
;base                      Allocated to registers r2 r3 r4 r5 
;b                         Allocated with name '_qsort_b_65536_41'
;i                         Allocated with name '_qsort_i_131072_42'
;j                         Allocated with name '_qsort_j_262144_44'
;sloc0                     Allocated with name '_qsort_sloc0_1_0'
;sloc1                     Allocated with name '_qsort_sloc1_1_0'
;sloc2                     Allocated with name '_qsort_sloc2_1_0'
;------------------------------------------------------------
;	qsort.c:48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
_qsort:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	qsort.c:50: unsigned char *b = base;
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	mov	dptr,#_qsort_b_65536_41
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
;	qsort.c:52: if(nmemb <= 1)
	mov	dptr,#_qsort_PARM_2
	clr	c
	mov	a,#0x01
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00102$
00138$:
;	qsort.c:53: return;
	ljmp	00112$
00102$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
;	genAssign: resultIsFar = FALSE
	mov	dptr,#_qsort_i_131072_42
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
	mov	dptr,#_qsort_b_65536_41
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
	mov	dptr,#_qsort_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_qsort_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_qsort_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_qsort_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_qsort_b_65536_41
	mov	dps, #1
	mov	dptr, #_qsort_sloc1_1_0
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
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
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
00110$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_qsort_i_131072_42
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
	mov	dptr,#_qsort_sloc1_1_0
	push	ar6
	push	ar7
	push	ar0
	push	ar1
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
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	jc	00139$
	ljmp	00112$
00139$:
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	dptr,#_qsort_i_131072_42
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_qsort_j_262144_44
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
00107$:
	mov	dptr,#_qsort_j_262144_44
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	jc	00140$
	ljmp	00111$
00140$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_qsort_sloc0_1_0
	mov	dps, #1
	mov	dptr, #_qsort_j_262144_44
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	mov	b,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	mov     dps, #1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	r5,a
	mov	dptr,#_qsort_sloc2_1_0
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
	mov	dptr,#_qsort_j_262144_44
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	mov	dptr,#_qsort_sloc2_1_0
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
	mov	a,#00141$
	push	acc
	mov	a,#(00141$ >> 8)
	push	acc
	mov	a,#(00141$ >> 16)
	push	acc
	mov	dptr,#_qsort_PARM_4
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
	ret
00141$:
	mov	r6,dpl
	mov	r7,dph
;	stack adjustment for parms
	pop	acc
	pop	acc
	pop	acc
	pop	acc
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r7
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	jb	acc[7],00142$
	ljmp	00111$
00142$:
;	qsort.c:58: swap(j, j - size, size);
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_qsort_j_262144_44
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
	mov	dptr,#_qsort_sloc2_1_0
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
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	mov	dptr,#_swap_PARM_2
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
	mov	dptr,#_qsort_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_swap_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_qsort_sloc2_1_0
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
	lcall	_swap
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_qsort_j_262144_44
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
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	ljmp	00107$
00111$:
;	qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	dptr,#_qsort_sloc0_1_0
	mov	dps, #1
	mov	dptr, #_qsort_i_131072_42
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	movx	@dptr,a
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	movx	a,@dptr
	mov     dps, #1
	movx	@dptr,a
	mov	dps,#0
	ljmp	00110$
00112$:
;	qsort.c:60: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
