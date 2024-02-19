;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _divslonglong
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
	.globl __divslonglong_PARM_2
	.globl __divslonglong_PARM_1
	.globl __divslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__divslonglong_sloc0_1_0:
	.ds 8
__divslonglong_sloc1_1_0:
	.ds 1
__divslonglong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
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
__divslonglong_PARM_1:
	.ds 8
__divslonglong_PARM_2:
	.ds 8
__divslonglong_numeratorneg_65536_2:
	.ds 1
__divslonglong_denominatorneg_65536_2:
	.ds 1
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__divslonglong_sloc1_1_0'
;sloc2                     Allocated with name '__divslonglong_sloc2_1_0'
;numerator                 Allocated with name '__divslonglong_PARM_1'
;denominator               Allocated with name '__divslonglong_PARM_2'
;numeratorneg              Allocated with name '__divslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated with name '__divslonglong_denominatorneg_65536_2'
;d                         Allocated with name '__divslonglong_d_65536_2'
;------------------------------------------------------------
;../_divslonglong.c:40: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divslonglong:
;../_divslonglong.c:42: bool numeratorneg = (numerator < 0);
	lda	__divslonglong_PARM_1
	sub	#0x00
	blt	00124$
	clra
	bra	00125$
00124$:
	lda	#0x01
00125$:
	sta	__divslonglong_numeratorneg_65536_2
;../_divslonglong.c:43: bool denominatorneg = (denominator < 0);
	lda	__divslonglong_PARM_2
	sub	#0x00
	blt	00126$
	clra
	bra	00127$
00126$:
	lda	#0x01
00127$:
	sta	__divslonglong_denominatorneg_65536_2
;../_divslonglong.c:46: if (numeratorneg)
	lda	__divslonglong_numeratorneg_65536_2
	beq	00102$
;../_divslonglong.c:47: numerator = -numerator;
	clra
	sub	(__divslonglong_PARM_1 + 7)
	sta	(__divslonglong_PARM_1 + 7)
	clra
	sbc	(__divslonglong_PARM_1 + 6)
	sta	(__divslonglong_PARM_1 + 6)
	clra
	sbc	(__divslonglong_PARM_1 + 5)
	sta	(__divslonglong_PARM_1 + 5)
	clra
	sbc	(__divslonglong_PARM_1 + 4)
	sta	(__divslonglong_PARM_1 + 4)
	clra
	sbc	(__divslonglong_PARM_1 + 3)
	sta	(__divslonglong_PARM_1 + 3)
	clra
	sbc	(__divslonglong_PARM_1 + 2)
	sta	(__divslonglong_PARM_1 + 2)
	clra
	sbc	(__divslonglong_PARM_1 + 1)
	sta	(__divslonglong_PARM_1 + 1)
	clra
	sbc	__divslonglong_PARM_1
	sta	__divslonglong_PARM_1
00102$:
;../_divslonglong.c:48: if (denominatorneg)
	lda	__divslonglong_denominatorneg_65536_2
	beq	00104$
;../_divslonglong.c:49: denominator = -denominator;
	clra
	sub	(__divslonglong_PARM_2 + 7)
	sta	(__divslonglong_PARM_2 + 7)
	clra
	sbc	(__divslonglong_PARM_2 + 6)
	sta	(__divslonglong_PARM_2 + 6)
	clra
	sbc	(__divslonglong_PARM_2 + 5)
	sta	(__divslonglong_PARM_2 + 5)
	clra
	sbc	(__divslonglong_PARM_2 + 4)
	sta	(__divslonglong_PARM_2 + 4)
	clra
	sbc	(__divslonglong_PARM_2 + 3)
	sta	(__divslonglong_PARM_2 + 3)
	clra
	sbc	(__divslonglong_PARM_2 + 2)
	sta	(__divslonglong_PARM_2 + 2)
	clra
	sbc	(__divslonglong_PARM_2 + 1)
	sta	(__divslonglong_PARM_2 + 1)
	clra
	sbc	__divslonglong_PARM_2
	sta	__divslonglong_PARM_2
00104$:
;../_divslonglong.c:51: d = (unsigned long long)numerator / (unsigned long long)denominator;
	ldhx	(__divslonglong_PARM_1 + 6)
	sthx	(__divulonglong_PARM_1 + 6)
	ldhx	(__divslonglong_PARM_1 + 4)
	sthx	(__divulonglong_PARM_1 + 4)
	ldhx	(__divslonglong_PARM_1 + 2)
	sthx	(__divulonglong_PARM_1 + 2)
	ldhx	__divslonglong_PARM_1
	sthx	__divulonglong_PARM_1
	ldhx	(__divslonglong_PARM_2 + 6)
	sthx	(__divulonglong_PARM_2 + 6)
	ldhx	(__divslonglong_PARM_2 + 4)
	sthx	(__divulonglong_PARM_2 + 4)
	ldhx	(__divslonglong_PARM_2 + 2)
	sthx	(__divulonglong_PARM_2 + 2)
	ldhx	__divslonglong_PARM_2
	sthx	__divulonglong_PARM_2
;../_divslonglong.c:53: return ((numeratorneg ^ denominatorneg) ? -d : d);
	jsr	__divulonglong
	sta	*(__divslonglong_sloc0_1_0 + 7)
	stx	*(__divslonglong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__divslonglong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__divslonglong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__divslonglong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__divslonglong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__divslonglong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__divslonglong_sloc0_1_0
	lda	__divslonglong_numeratorneg_65536_2
	eor	__divslonglong_denominatorneg_65536_2
	beq	00107$
	clra
	sub	*(__divslonglong_sloc0_1_0 + 7)
	sta	*(__divslonglong_sloc2_1_0 + 7)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 6)
	sta	*(__divslonglong_sloc2_1_0 + 6)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 5)
	sta	*(__divslonglong_sloc2_1_0 + 5)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 4)
	sta	*(__divslonglong_sloc2_1_0 + 4)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 3)
	sta	*(__divslonglong_sloc2_1_0 + 3)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 2)
	sta	*(__divslonglong_sloc2_1_0 + 2)
	clra
	sbc	*(__divslonglong_sloc0_1_0 + 1)
	sta	*(__divslonglong_sloc2_1_0 + 1)
	clra
	sbc	*__divslonglong_sloc0_1_0
	sta	*__divslonglong_sloc2_1_0
	bra	00108$
00107$:
	mov	*__divslonglong_sloc0_1_0,*__divslonglong_sloc2_1_0
	mov	*(__divslonglong_sloc0_1_0 + 1),*(__divslonglong_sloc2_1_0 + 1)
	mov	*(__divslonglong_sloc0_1_0 + 2),*(__divslonglong_sloc2_1_0 + 2)
	mov	*(__divslonglong_sloc0_1_0 + 3),*(__divslonglong_sloc2_1_0 + 3)
	mov	*(__divslonglong_sloc0_1_0 + 4),*(__divslonglong_sloc2_1_0 + 4)
	mov	*(__divslonglong_sloc0_1_0 + 5),*(__divslonglong_sloc2_1_0 + 5)
	mov	*(__divslonglong_sloc0_1_0 + 6),*(__divslonglong_sloc2_1_0 + 6)
	mov	*(__divslonglong_sloc0_1_0 + 7),*(__divslonglong_sloc2_1_0 + 7)
00108$:
	mov	*__divslonglong_sloc2_1_0,*___SDCC_hc08_ret7
	mov	*(__divslonglong_sloc2_1_0 + 1),*___SDCC_hc08_ret6
	mov	*(__divslonglong_sloc2_1_0 + 2),*___SDCC_hc08_ret5
	mov	*(__divslonglong_sloc2_1_0 + 3),*___SDCC_hc08_ret4
	mov	*(__divslonglong_sloc2_1_0 + 4),*___SDCC_hc08_ret3
	mov	*(__divslonglong_sloc2_1_0 + 5),*___SDCC_hc08_ret2
	ldx	*(__divslonglong_sloc2_1_0 + 6)
	lda	*(__divslonglong_sloc2_1_0 + 7)
;../_divslonglong.c:54: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
