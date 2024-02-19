;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
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
_srand_seed_65536_41:
	.ds 2
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	rand.c:40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
_rand:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	rand.c:42: register unsigned long t = s;
	mov	dptr,#_s
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	rand.c:44: t ^= t >> 10;
	mov	ar0,r5
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r1
	mov	r1,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r2,a
	mov	r3,#0x00
	mov	a,r4
	xrl	ar0,a
	mov	a,r5
	xrl	ar1,a
	mov	a,r6
	xrl	ar2,a
	mov	a,r7
	xrl	ar3,a
;	rand.c:45: t ^= t << 9;
	mov	a,r0
	add	a,r0
	mov	r5,a
	mov	a,r1
	rlc	a
	mov	r6,a
	mov	a,r2
	rlc	a
	mov	r7,a
	mov	r4,#0x00
	mov	a,r0
	xrl	ar4,a
	mov	a,r1
	xrl	ar5,a
	mov	a,r2
	xrl	ar6,a
	mov	a,r3
	xrl	ar7,a
;	rand.c:46: t ^= t >> 25;
	mov	a,r7
	clr	c
	rrc	a
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	xrl	ar4,a
	mov	a,r1
	xrl	ar5,a
	mov	a,r2
	xrl	ar6,a
	mov	a,r3
	xrl	ar7,a
;	rand.c:48: s = t;
	mov	dptr,#_s
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	rand.c:50: return(t & RAND_MAX);
	anl	ar5,#0x7f
	mov	dpl,r4
	mov	dph,r5
;	rand.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated with name '_srand_seed_65536_41'
;------------------------------------------------------------
;	rand.c:53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_srand_seed_65536_41
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	rand.c:55: s = seed | 0x80000000; /* s shall not become 0 */
	mov	dptr,#_srand_seed_65536_41
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#_s
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r4
	inc	dptr
	movx	@dptr,a
;	rand.c:56: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS,CODE)
