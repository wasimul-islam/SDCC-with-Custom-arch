;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mmcs51 --model-small
	
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
_s:
	.ds 4
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
;	rand.c:38: static uint32_t s = 0x80000001;
	mov	_s,#0x01
	clr	a
	mov	(_s + 1),a
	mov	(_s + 2),a
	mov	(_s + 3),#0x80
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
;t                         Allocated to stack - _bp +5
;sloc0                     Allocated to stack - _bp +1
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	rand.c:42: register unsigned long t = s;
	mov	r0,_bp
	inc	r0
	mov	@r0,_s
	inc	r0
	mov	@r0,(_s + 1)
	inc	r0
	mov	@r0,(_s + 2)
	inc	r0
	mov	@r0,(_s + 3)
;	rand.c:44: t ^= t >> 10;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	inc	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r2
	xrl	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	xrl	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	xrl	a,@r0
	mov	@r0,a
;	rand.c:45: t ^= t << 9;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,@r0
	mov	r5,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r6,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	r7,a
	mov	r4,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	xrl	ar4,a
	inc	r0
	mov	a,@r0
	xrl	ar5,a
	inc	r0
	mov	a,@r0
	xrl	ar6,a
	inc	r0
	mov	a,@r0
	xrl	ar7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	rand.c:46: t ^= t >> 25;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	xrl	ar2,a
	inc	r0
	mov	a,@r0
	xrl	ar3,a
	inc	r0
	mov	a,@r0
	xrl	ar6,a
	inc	r0
	mov	a,@r0
	xrl	ar7,a
;	rand.c:48: s = t;
	mov	_s,r2
	mov	(_s + 1),r3
	mov	(_s + 2),r6
	mov	(_s + 3),r7
;	rand.c:50: return(t & RAND_MAX);
	mov	dpl,r2
	mov	a,#0x7f
	anl	a,r3
	mov	dph,a
;	rand.c:51: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	rand.c:53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
	mov	r6,dpl
	mov	r7,dph
;	rand.c:55: s = seed | 0x80000000; /* s shall not become 0 */
	mov	r5,#0x00
	mov	r4,#0x00
	mov	_s,r6
	mov	(_s + 1),r7
	mov	(_s + 2),r5
	mov	a,#0x80
	orl	a,r4
	mov	(_s + 3),a
;	rand.c:56: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
