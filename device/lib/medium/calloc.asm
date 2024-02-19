;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module calloc
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
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
_calloc_sloc0_1_0:
	.ds 2
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
_calloc_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calloc_sloc0_1_0'
;------------------------------------------------------------
;	calloc.c:42: void HEAPSPACE *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	calloc.c:49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	mov	r5,#0x00
	mov	r4,#0x00
	mov	r0,#_calloc_PARM_2
	mov	r1,#__mullong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	clr	a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	calloc.c:54: if (msize > SIZE_MAX)
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
;	calloc.c:55: return(0);
	mov	dptr,#0x0000
	ret
00102$:
;	calloc.c:57: if (ptr = malloc(msize))
	mov	_calloc_sloc0_1_0,r4
	mov	(_calloc_sloc0_1_0 + 1),r5
	mov	dpl,_calloc_sloc0_1_0
	mov	dph,(_calloc_sloc0_1_0 + 1)
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	ar2,r6
	mov	ar3,r7
	mov	a,r6
	orl	a,r7
	jz	00104$
;	calloc.c:58: memset(ptr, 0, msize);
	mov	ar5,r2
	mov	ar6,r3
	mov	r7,#0x00
	mov	r0,#_memset_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#_memset_PARM_3
	mov	a,_calloc_sloc0_1_0
	movx	@r0,a
	mov	a,(_calloc_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar3
	push	ar2
	lcall	_memset
	pop	ar2
	pop	ar3
00104$:
;	calloc.c:60: return(ptr);
	mov	dpl,r2
	mov	dph,r3
;	calloc.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
