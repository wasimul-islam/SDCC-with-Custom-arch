;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _modslong
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
	.globl __modslong_PARM_2
	.globl __modslong_PARM_1
	.globl __modslong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__modslong_sloc0_1_0:
	.ds 1
__modslong_sloc1_1_0:
	.ds 4
__modslong_sloc2_1_0:
	.ds 4
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
__modslong_PARM_1:
	.ds 4
__modslong_PARM_2:
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslong_sloc0_1_0'
;sloc1                     Allocated with name '__modslong_sloc1_1_0'
;sloc2                     Allocated with name '__modslong_sloc2_1_0'
;a                         Allocated with name '__modslong_PARM_1'
;b                         Allocated with name '__modslong_PARM_2'
;r                         Allocated with name '__modslong_r_65536_2'
;------------------------------------------------------------
;../_modslong.c:265: _modslong (long a, long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modslong:
;../_modslong.c:269: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	lda	__modslong_PARM_1
	sub	#0x00
	blt	00125$
	clra
	bra	00126$
00125$:
	lda	#0x01
00126$:
	sta	*__modslong_sloc0_1_0
	tst	*__modslong_sloc0_1_0
	beq	00106$
	clra
	sub	(__modslong_PARM_1 + 3)
	sta	*(__modslong_sloc1_1_0 + 3)
	clra
	sbc	(__modslong_PARM_1 + 2)
	sta	*(__modslong_sloc1_1_0 + 2)
	clra
	sbc	(__modslong_PARM_1 + 1)
	sta	*(__modslong_sloc1_1_0 + 1)
	clra
	sbc	__modslong_PARM_1
	sta	*__modslong_sloc1_1_0
	bra	00107$
00106$:
	ldhx	__modslong_PARM_1
	sthx	*__modslong_sloc1_1_0
	ldhx	(__modslong_PARM_1 + 2)
	sthx	*(__modslong_sloc1_1_0 + 2)
00107$:
	lda	__modslong_PARM_2
	sub	#0x00
	bge	00108$
	clra
	sub	(__modslong_PARM_2 + 3)
	sta	*(__modslong_sloc2_1_0 + 3)
	clra
	sbc	(__modslong_PARM_2 + 2)
	sta	*(__modslong_sloc2_1_0 + 2)
	clra
	sbc	(__modslong_PARM_2 + 1)
	sta	*(__modslong_sloc2_1_0 + 1)
	clra
	sbc	__modslong_PARM_2
	sta	*__modslong_sloc2_1_0
	bra	00109$
00108$:
	ldhx	__modslong_PARM_2
	sthx	*__modslong_sloc2_1_0
	ldhx	(__modslong_PARM_2 + 2)
	sthx	*(__modslong_sloc2_1_0 + 2)
00109$:
	lda	*(__modslong_sloc2_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	lda	*(__modslong_sloc2_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(__modslong_sloc2_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*__modslong_sloc2_1_0
	sta	__modulong_PARM_2
	lda	*__modslong_sloc1_1_0
	sta	__modulong_PARM_1
	lda	*(__modslong_sloc1_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(__modslong_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(__modslong_sloc1_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
;../_modslong.c:271: if (a < 0)
	jsr	__modulong
	sta	*(__modslong_sloc2_1_0 + 3)
	stx	*(__modslong_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(__modslong_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*__modslong_sloc2_1_0
	tst	*__modslong_sloc0_1_0
	beq	00102$
;../_modslong.c:272: return -r;
	clra
	sub	*(__modslong_sloc2_1_0 + 3)
	sta	*(__modslong_sloc1_1_0 + 3)
	clra
	sbc	*(__modslong_sloc2_1_0 + 2)
	sta	*(__modslong_sloc1_1_0 + 2)
	clra
	sbc	*(__modslong_sloc2_1_0 + 1)
	sta	*(__modslong_sloc1_1_0 + 1)
	clra
	sbc	*__modslong_sloc2_1_0
	sta	*__modslong_sloc1_1_0
	mov	*__modslong_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(__modslong_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__modslong_sloc1_1_0 + 2)
	lda	*(__modslong_sloc1_1_0 + 3)
	rts
00102$:
;../_modslong.c:274: return r;
	mov	*__modslong_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(__modslong_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__modslong_sloc2_1_0 + 2)
	lda	*(__modslong_sloc2_1_0 + 3)
;../_modslong.c:275: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
