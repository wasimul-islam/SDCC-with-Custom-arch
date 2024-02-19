;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mmcs51 --model-medium
	
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
_rand_t_65536_40:
	.ds 4
_rand_sloc0_1_0:
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
_s:
	.ds 4
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
	mov	r0,#_s
	mov	a,#0x01
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	inc	r0
	movx	@r0,a
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
;t                         Allocated with name '_rand_t_65536_40'
;sloc0                     Allocated with name '_rand_sloc0_1_0'
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
	mov	r0,#_s
	movx	a,@r0
	mov	_rand_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_rand_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_rand_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(_rand_sloc0_1_0 + 3),a
;	rand.c:44: t ^= t >> 10;
	mov	r2,(_rand_sloc0_1_0 + 1)
	mov	a,(_rand_sloc0_1_0 + 2)
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
	mov	a,(_rand_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	mov	a,(_rand_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	r7,#0x00
	mov	a,r2
	xrl	_rand_sloc0_1_0,a
	mov	a,r3
	xrl	(_rand_sloc0_1_0 + 1),a
	mov	a,r6
	xrl	(_rand_sloc0_1_0 + 2),a
	mov	a,r7
	xrl	(_rand_sloc0_1_0 + 3),a
;	rand.c:45: t ^= t << 9;
	mov	a,_rand_sloc0_1_0
	add	a,_rand_sloc0_1_0
	mov	r5,a
	mov	a,(_rand_sloc0_1_0 + 1)
	rlc	a
	mov	r6,a
	mov	a,(_rand_sloc0_1_0 + 2)
	rlc	a
	mov	r7,a
	clr	a
	xrl	a,_rand_sloc0_1_0
	mov	_rand_t_65536_40,a
	mov	a,r5
	xrl	a,(_rand_sloc0_1_0 + 1)
	mov	(_rand_t_65536_40 + 1),a
	mov	a,r6
	xrl	a,(_rand_sloc0_1_0 + 2)
	mov	(_rand_t_65536_40 + 2),a
	mov	a,r7
	xrl	a,(_rand_sloc0_1_0 + 3)
;	rand.c:46: t ^= t >> 25;
	mov	(_rand_t_65536_40 + 3),a
	clr	c
	rrc	a
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r6,a
	mov	r7,a
	mov	a,_rand_t_65536_40
	xrl	ar2,a
	mov	a,(_rand_t_65536_40 + 1)
	xrl	ar3,a
	mov	a,(_rand_t_65536_40 + 2)
	xrl	ar6,a
	mov	a,(_rand_t_65536_40 + 3)
	xrl	ar7,a
;	rand.c:48: s = t;
	mov	r0,#_s
	mov	a,r2
	movx	@r0,a
	mov	a,r3
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	rand.c:50: return(t & RAND_MAX);
	mov	dpl,r2
	mov	a,#0x7f
	anl	a,r3
	mov	dph,a
;	rand.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
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
	mov	r0,#_s
	mov	a,r6
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	orl	a,r4
	inc	r0
	movx	@r0,a
;	rand.c:56: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
