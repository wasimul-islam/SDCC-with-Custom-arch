;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
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
	.globl _rand
	.globl _srand
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
	.area	OSEG    (OVR,DATA)
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
_s:
	.ds 4
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t                         Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	rand.c:40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
_rand:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	rand.c:42: register unsigned long t = s;
	mov	dptr,#_s
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
;	rand.c:44: t ^= t >> 10;
	mov	ar6,r3
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r7
	mov	r7,a
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r0,a
	mov	r1,#0x00
	mov	a,r2
	xrl	ar6,a
	mov	a,r3
	xrl	ar7,a
	mov	a,r4
	xrl	ar0,a
	mov	a,r5
	xrl	ar1,a
;	rand.c:45: t ^= t << 9;
	mov	a,r6
	add	a,acc
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r4,a
	mov	a,r0
	rlc	a
	mov	r5,a
	mov	r2,#0x00
	mov	a,r6
	xrl	ar2,a
	mov	a,r7
	xrl	ar3,a
	mov	a,r0
	xrl	ar4,a
	mov	a,r1
	xrl	ar5,a
;	rand.c:46: t ^= t >> 25;
	mov	a,r5
	clr	c
	rrc	a
	mov	r6,a
	clr  a
	mov  r7,a
	mov  r0,a
	mov  r1,a
	mov  a,r6
	xrl	ar2,a
	mov	a,r7
	xrl	ar3,a
	mov	a,r0
	xrl	ar4,a
	mov	a,r1
	xrl	ar5,a
;	rand.c:48: s = t;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_s
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
;	rand.c:50: return(t & RAND_MAX);
	mov	dpl,r2
	mov	a,#0x7f
	anl	a,r3
	mov	dph,a
00101$:
;	rand.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	rand.c:53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
	mov	dpl1,dpl
	mov	dph1,dph
;	rand.c:55: s = seed | 0x80000000; /* s shall not become 0 */
	mov	r2,dpl1
	mov	r3,dph1
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_s
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r5
	inc	dptr
	movx	@dptr,a
00101$:
;	rand.c:56: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS,CODE)
