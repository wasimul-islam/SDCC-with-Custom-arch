;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _mullong
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_PARM_2
	.globl __mullong_PARM_1
	.globl __mullong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__mullong_sloc0_1_0:
	.ds 1
__mullong_sloc1_1_0:
	.ds 2
__mullong_sloc2_1_0:
	.ds 4
__mullong_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__mullong_PARM_1:
	.ds 4
__mullong_PARM_2:
	.ds 4
__mullong_t_65536_9:
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;a                         Allocated with name '__mullong_PARM_1'
;b                         Allocated with name '__mullong_PARM_2'
;t                         Allocated with name '__mullong_t_65536_9'
;sloc0                     Allocated with name '__mullong_sloc0_1_0'
;sloc1                     Allocated with name '__mullong_sloc1_1_0'
;sloc2                     Allocated with name '__mullong_sloc2_1_0'
;sloc3                     Allocated with name '__mullong_sloc3_1_0'
;------------------------------------------------------------
;../_mullong.c:743: _mullong (long a, long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__mullong:
;../_mullong.c:747: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	lda	(__mullong_PARM_1 + 0x0003)
	ldx	(__mullong_PARM_2 + 0x0001)
	mul
	stx	__mullong_t_65536_9
	sta	(__mullong_t_65536_9 + 1)
;../_mullong.c:748: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	lda	(__mullong_PARM_1 + 0x0003)
	ldx	(__mullong_PARM_2 + 0x0003)
	mul
	stx	(__mullong_t_65536_9 + 0x0002)
	sta	((__mullong_t_65536_9 + 0x0002) + 1)
;../_mullong.c:749: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	lda	__mullong_t_65536_9
	sta	*__mullong_sloc0_1_0
	lda	__mullong_PARM_1
	ldx	(__mullong_PARM_2 + 0x0003)
	mul
	add	*__mullong_sloc0_1_0
	sta	*__mullong_sloc0_1_0
	lda	*__mullong_sloc0_1_0
	sta	__mullong_t_65536_9
;../_mullong.c:750: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	lda	(__mullong_PARM_1 + 0x0001)
	ldx	(__mullong_PARM_2 + 0x0002)
	mul
	add	*__mullong_sloc0_1_0
	sta	__mullong_t_65536_9
;../_mullong.c:751: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	lda	__mullong_t_65536_9
	sta	*__mullong_sloc1_1_0
	lda	(__mullong_t_65536_9 + 1)
	sta	*(__mullong_sloc1_1_0 + 1)
	lda	(__mullong_PARM_1 + 0x0001)
	ldx	(__mullong_PARM_2 + 0x0003)
	mul
	add	*(__mullong_sloc1_1_0 + 1)
	psha
	txa
	adc	*__mullong_sloc1_1_0
	tax
	pula
	sta	*(__mullong_sloc1_1_0 + 1)
	stx	*__mullong_sloc1_1_0
	lda	*__mullong_sloc1_1_0
	sta	__mullong_t_65536_9
	lda	*(__mullong_sloc1_1_0 + 1)
	sta	(__mullong_t_65536_9 + 1)
;../_mullong.c:753: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	lda	(__mullong_PARM_1 + 0x0002)
	ldx	(__mullong_PARM_2 + 0x0002)
	mul
	add	*(__mullong_sloc1_1_0 + 1)
	psha
	txa
	adc	*__mullong_sloc1_1_0
	tax
	pula
	stx	__mullong_t_65536_9
	sta	(__mullong_t_65536_9 + 1)
;../_mullong.c:755: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	lda	(__mullong_PARM_1 + 0x0002)
	ldx	(__mullong_PARM_2 + 0x0001)
	mul
	sta	__mullong_PARM_1
;../_mullong.c:756: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	lda	(__mullong_PARM_1 + 0x0002)
	ldx	(__mullong_PARM_2 + 0x0003)
	mul
	stx	(__mullong_PARM_1 + 0x0001)
	sta	((__mullong_PARM_1 + 0x0001) + 1)
;../_mullong.c:758: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	lda	(__mullong_PARM_1 + 0x0003)
	ldx	__mullong_PARM_2
	mul
	sta	__mullong_PARM_2
;../_mullong.c:759: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	lda	(__mullong_PARM_1 + 0x0003)
	ldx	(__mullong_PARM_2 + 0x0002)
	mul
	stx	(__mullong_PARM_2 + 0x0001)
	sta	((__mullong_PARM_2 + 0x0001) + 1)
;../_mullong.c:761: bcast(b)->bi.b0 = 0;                                // B
	clra
	sta	(__mullong_PARM_2 + 0x0003)
;../_mullong.c:762: bcast(a)->bi.b0 = 0;                                // C
	sta	(__mullong_PARM_1 + 0x0003)
;../_mullong.c:763: t.l += a;
	lda	__mullong_t_65536_9
	sta	*__mullong_sloc2_1_0
	lda	(__mullong_t_65536_9 + 1)
	sta	*(__mullong_sloc2_1_0 + 1)
	lda	(__mullong_t_65536_9 + 2)
	sta	*(__mullong_sloc2_1_0 + 2)
	lda	(__mullong_t_65536_9 + 3)
	sta	*(__mullong_sloc2_1_0 + 3)
	ldhx	(__mullong_PARM_1 + 2)
	sthx	*(__mullong_sloc3_1_0 + 2)
	ldhx	__mullong_PARM_1
	sthx	*__mullong_sloc3_1_0
	lda	*(__mullong_sloc2_1_0 + 3)
	add	*(__mullong_sloc3_1_0 + 3)
	sta	*(__mullong_sloc3_1_0 + 3)
	lda	*(__mullong_sloc2_1_0 + 2)
	adc	*(__mullong_sloc3_1_0 + 2)
	sta	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc2_1_0 + 1)
	adc	*(__mullong_sloc3_1_0 + 1)
	sta	*(__mullong_sloc3_1_0 + 1)
	lda	*__mullong_sloc2_1_0
	adc	*__mullong_sloc3_1_0
	sta	*__mullong_sloc3_1_0
	lda	*__mullong_sloc3_1_0
	sta	__mullong_t_65536_9
	lda	*(__mullong_sloc3_1_0 + 1)
	sta	(__mullong_t_65536_9 + 1)
	lda	*(__mullong_sloc3_1_0 + 2)
	sta	(__mullong_t_65536_9 + 2)
	lda	*(__mullong_sloc3_1_0 + 3)
	sta	(__mullong_t_65536_9 + 3)
;../_mullong.c:765: return t.l + b;
	ldhx	(__mullong_PARM_2 + 2)
	sthx	*(__mullong_sloc2_1_0 + 2)
	ldhx	__mullong_PARM_2
	sthx	*__mullong_sloc2_1_0
	lda	*(__mullong_sloc3_1_0 + 3)
	add	*(__mullong_sloc2_1_0 + 3)
	sta	*(__mullong_sloc3_1_0 + 3)
	lda	*(__mullong_sloc3_1_0 + 2)
	adc	*(__mullong_sloc2_1_0 + 2)
	sta	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc3_1_0 + 1)
	adc	*(__mullong_sloc2_1_0 + 1)
	sta	*(__mullong_sloc3_1_0 + 1)
	lda	*__mullong_sloc3_1_0
	adc	*__mullong_sloc2_1_0
	sta	*__mullong_sloc3_1_0
	mov	*__mullong_sloc3_1_0,*___SDCC_hc08_ret3
	mov	*(__mullong_sloc3_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__mullong_sloc3_1_0 + 2)
	lda	*(__mullong_sloc3_1_0 + 3)
;../_mullong.c:766: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
