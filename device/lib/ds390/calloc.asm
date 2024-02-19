;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module calloc
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
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
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
_calloc_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated to registers r2 r3 
;ptr                       Allocated to registers r7 r0 r1 
;msize                     Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	calloc.c:42: void HEAPSPACE *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dpl1,dpl
	mov	dph1,dph
;	calloc.c:49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	mov	r2,dpl1
	mov	r3,dph1
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_calloc_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mullong_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
;	calloc.c:54: if (msize > SIZE_MAX)
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0xff
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jnc  00102$
00115$:
;	calloc.c:55: return(0);
	mov  dptr,#0x0000
	sjmp 00105$
00102$:
;	calloc.c:57: if (ptr = malloc(msize))
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	r6,dpx
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	ar7,r4
	mov	ar0,r5
	mov	ar1,r6
	mov	a,r4
	orl	a,r5
	orl	a,r6
	jz  00104$
00116$:
;	calloc.c:58: memset(ptr, 0, msize);
;	genAssign: resultIsFar = FALSE
	mov	ar4,r7
	mov	ar5,r0
	mov	ar6,r1
	push	ar7
	push	ar0
	push	ar1
	mov	r7,#0x00
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_memset_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	_memset
	pop	ar1
	pop	ar0
	pop	ar7
;	calloc.c:60: return(ptr);
	pop	ar1
	pop	ar0
	pop	ar7
;	calloc.c:58: memset(ptr, 0, msize);
00104$:
;	calloc.c:60: return(ptr);
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
00105$:
;	calloc.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
