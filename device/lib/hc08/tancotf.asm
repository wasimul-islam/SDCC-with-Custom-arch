;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mhc08
	
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
	.globl _tancotf
	.globl _fabsf
	.globl _tancotf_PARM_2
	.globl _tancotf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_tancotf_sloc0_1_0:
	.ds 4
_tancotf_sloc1_1_0:
	.ds 4
_tancotf_sloc2_1_0:
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
_tancotf_PARM_1:
	.ds 4
_tancotf_PARM_2:
	.ds 1
_tancotf_xnum_65536_26:
	.ds 4
_tancotf_xden_65536_26:
	.ds 4
_tancotf_n_65536_26:
	.ds 2
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
;sloc1                     Allocated with name '_tancotf_sloc1_1_0'
;sloc2                     Allocated with name '_tancotf_sloc2_1_0'
;x                         Allocated with name '_tancotf_PARM_1'
;iscotan                   Allocated with name '_tancotf_PARM_2'
;f                         Allocated with name '_tancotf_f_65536_26'
;g                         Allocated with name '_tancotf_g_65536_26'
;xn                        Allocated with name '_tancotf_xn_65536_26'
;xnum                      Allocated with name '_tancotf_xnum_65536_26'
;xden                      Allocated with name '_tancotf_xden_65536_26'
;n                         Allocated with name '_tancotf_n_65536_26'
;------------------------------------------------------------
;../tancotf.c:53: float tancotf(float x, bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tancotf:
;../tancotf.c:58: if (fabsf(x) > YMAX)
	lda	(_tancotf_PARM_1 + 3)
	psha
	lda	(_tancotf_PARM_1 + 2)
	psha
	lda	(_tancotf_PARM_1 + 1)
	psha
	lda	_tancotf_PARM_1
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_2 + 3)
	stx	(___fslt_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_2
	ais	#4
	ldhx	#___fslt_PARM_1
	lda	#0x45
	sta	,x
	lda	#0xc9
	sta	1,x
	lda	#0x08
	sta	2,x
	clra
	sta	3,x
	jsr	___fslt
	tsta
	beq	00102$
;../tancotf.c:60: errno = ERANGE;
	clra
	sta	_errno
	lda	#0x22
	sta	(_errno + 1)
;../tancotf.c:61: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../tancotf.c:65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	ldhx	#___fsmul_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x22
	sta	1,x
	lda	#0xf9
	sta	2,x
	lda	#0x83
	sta	3,x
	ldhx	#___fsmul_PARM_2
	lda	_tancotf_PARM_1
	sta	,x
	lda	(_tancotf_PARM_1 + 1)
	sta	1,x
	lda	(_tancotf_PARM_1 + 2)
	sta	2,x
	lda	(_tancotf_PARM_1 + 3)
	sta	3,x
	jsr	___fsmul
	sta	*(_tancotf_sloc0_1_0 + 3)
	stx	*(_tancotf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc0_1_0
	ldhx	#___fslt_PARM_1
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	ldhx	#___fslt_PARM_2
	lda	_tancotf_PARM_1
	sta	,x
	lda	(_tancotf_PARM_1 + 1)
	sta	1,x
	lda	(_tancotf_PARM_1 + 2)
	sta	2,x
	lda	(_tancotf_PARM_1 + 3)
	sta	3,x
	jsr	___fslt
	tsta
	beq	00117$
	ldhx	#0x3f00
	sthx	*_tancotf_sloc1_1_0
	clrh
	sthx	*(_tancotf_sloc1_1_0 + 2)
	bra	00118$
00117$:
	ldhx	#0xbf00
	sthx	*_tancotf_sloc1_1_0
	clrh
	sthx	*(_tancotf_sloc1_1_0 + 2)
00118$:
	ldhx	#___fsadd_PARM_1
	mov	*_tancotf_sloc0_1_0,x+
	mov	*(_tancotf_sloc0_1_0 + 1),x+
	mov	*(_tancotf_sloc0_1_0 + 2),x+
	mov	*(_tancotf_sloc0_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsadd
	sta	(___fs2sint_PARM_1 + 3)
	stx	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fs2sint_PARM_1
	jsr	___fs2sint
	sta	(_tancotf_n_65536_26 + 1)
	stx	_tancotf_n_65536_26
;../tancotf.c:66: xn=n;
	lda	(_tancotf_n_65536_26 + 1)
	ldx	_tancotf_n_65536_26
	jsr	___sint2fs
	sta	*(_tancotf_sloc1_1_0 + 3)
	stx	*(_tancotf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc1_1_0
;../tancotf.c:68: xnum=(int)x;
	ldhx	#___fs2sint_PARM_1
	lda	_tancotf_PARM_1
	sta	,x
	lda	(_tancotf_PARM_1 + 1)
	sta	1,x
	lda	(_tancotf_PARM_1 + 2)
	sta	2,x
	lda	(_tancotf_PARM_1 + 3)
	sta	3,x
	jsr	___fs2sint
	jsr	___sint2fs
	sta	*(_tancotf_sloc0_1_0 + 3)
	stx	*(_tancotf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc0_1_0
;../tancotf.c:69: xden=x-xnum;
	ldhx	#___fssub_PARM_1
	lda	_tancotf_PARM_1
	sta	,x
	lda	(_tancotf_PARM_1 + 1)
	sta	1,x
	lda	(_tancotf_PARM_1 + 2)
	sta	2,x
	lda	(_tancotf_PARM_1 + 3)
	sta	3,x
	ldhx	#___fssub_PARM_2
	mov	*_tancotf_sloc0_1_0,x+
	mov	*(_tancotf_sloc0_1_0 + 1),x+
	mov	*(_tancotf_sloc0_1_0 + 2),x+
	mov	*(_tancotf_sloc0_1_0 + 3),x+
;../tancotf.c:70: f=((xnum-xn*C1)+xden)-xn*C2;
	jsr	___fssub
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	ldhx	#___fsmul_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0xc9
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	ldhx	#___fssub_PARM_1
	mov	*_tancotf_sloc0_1_0,x+
	mov	*(_tancotf_sloc0_1_0 + 1),x+
	mov	*(_tancotf_sloc0_1_0 + 2),x+
	mov	*(_tancotf_sloc0_1_0 + 3),x+
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
	jsr	___fsadd
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	ldhx	#___fsmul_PARM_1
	lda	#0x39
	sta	,x
	lda	#0xfd
	sta	1,x
	lda	#0xaa
	sta	2,x
	lda	#0x22
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	ldhx	#___fssub_PARM_1
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
;../tancotf.c:72: if (fabsf(f) < EPS)
	jsr	___fssub
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	lda	*(_tancotf_sloc2_1_0 + 3)
	psha
	lda	*(_tancotf_sloc2_1_0 + 2)
	psha
	lda	*(_tancotf_sloc2_1_0 + 1)
	psha
	lda	*_tancotf_sloc2_1_0
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ais	#4
	ldhx	#___fslt_PARM_2
	lda	#0x39
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00104$
;../tancotf.c:74: xnum = f;
	ldhx	#_tancotf_xnum_65536_26
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
;../tancotf.c:75: xden = 1.0;
	ldhx	#_tancotf_xden_65536_26
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jmp	00105$
00104$:
;../tancotf.c:79: g = f*f;
	ldhx	#___fsmul_PARM_1
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
;../tancotf.c:80: xnum = P(f,g);
	jsr	___fsmul
	sta	*(_tancotf_sloc1_1_0 + 3)
	stx	*(_tancotf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc1_1_0
	ldhx	#___fsmul_PARM_1
	lda	#0xbd
	sta	,x
	lda	#0xc4
	sta	1,x
	lda	#0x33
	sta	2,x
	lda	#0xb8
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	mov	*_tancotf_sloc2_1_0,x+
	mov	*(_tancotf_sloc2_1_0 + 1),x+
	mov	*(_tancotf_sloc2_1_0 + 2),x+
	mov	*(_tancotf_sloc2_1_0 + 3),x+
	jsr	___fsadd
	sta	(_tancotf_xnum_65536_26 + 3)
	stx	(_tancotf_xnum_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_tancotf_xnum_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_tancotf_xnum_65536_26
;../tancotf.c:81: xden = Q(g);
	ldhx	#___fsmul_PARM_1
	lda	#0x3c
	sta	,x
	lda	#0x1f
	sta	1,x
	lda	#0x33
	sta	2,x
	lda	#0x75
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0xbe
	sta	,x
	lda	#0xdb
	sta	1,x
	lda	#0xb7
	sta	2,x
	lda	#0xaf
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	#___fsmul_PARM_2
	mov	*_tancotf_sloc1_1_0,x+
	mov	*(_tancotf_sloc1_1_0 + 1),x+
	mov	*(_tancotf_sloc1_1_0 + 2),x+
	mov	*(_tancotf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fsadd
	sta	(_tancotf_xden_65536_26 + 3)
	stx	(_tancotf_xden_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_tancotf_xden_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_tancotf_xden_65536_26
00105$:
;../tancotf.c:84: if(n&1)
	lda	(_tancotf_n_65536_26 + 1)
	bit	#0x01
	bne	00153$
	jmp	00113$
00153$:
;../tancotf.c:87: if(iscotan) return (-xnum/xden);
	lda	_tancotf_PARM_2
	beq	00107$
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_tancotf_xnum_65536_26
	eor	#0x80
	sta	___fsdiv_PARM_1
	ldhx	#___fsdiv_PARM_2
	lda	_tancotf_xden_65536_26
	sta	,x
	lda	(_tancotf_xden_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xden_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xden_65536_26 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	mov	*_tancotf_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(_tancotf_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_tancotf_sloc2_1_0 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	rts
00107$:
;../tancotf.c:88: else return (-xden/xnum);
	lda	(_tancotf_xden_65536_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_tancotf_xden_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xden_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_tancotf_xden_65536_26
	eor	#0x80
	sta	___fsdiv_PARM_1
	ldhx	#___fsdiv_PARM_2
	lda	_tancotf_xnum_65536_26
	sta	,x
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	mov	*_tancotf_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(_tancotf_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_tancotf_sloc2_1_0 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	rts
00113$:
;../tancotf.c:92: if(iscotan) return (xden/xnum);
	lda	_tancotf_PARM_2
	beq	00110$
	ldhx	#___fsdiv_PARM_1
	lda	_tancotf_xden_65536_26
	sta	,x
	lda	(_tancotf_xden_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xden_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xden_65536_26 + 3)
	sta	3,x
	ldhx	#___fsdiv_PARM_2
	lda	_tancotf_xnum_65536_26
	sta	,x
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	mov	*_tancotf_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(_tancotf_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_tancotf_sloc2_1_0 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	rts
00110$:
;../tancotf.c:93: else return (xnum/xden);
	ldhx	#___fsdiv_PARM_1
	lda	_tancotf_xnum_65536_26
	sta	,x
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	3,x
	ldhx	#___fsdiv_PARM_2
	lda	_tancotf_xden_65536_26
	sta	,x
	lda	(_tancotf_xden_65536_26 + 1)
	sta	1,x
	lda	(_tancotf_xden_65536_26 + 2)
	sta	2,x
	lda	(_tancotf_xden_65536_26 + 3)
	sta	3,x
	jsr	___fsdiv
	sta	*(_tancotf_sloc2_1_0 + 3)
	stx	*(_tancotf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_tancotf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_tancotf_sloc2_1_0
	mov	*_tancotf_sloc2_1_0,*___SDCC_hc08_ret3
	mov	*(_tancotf_sloc2_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_tancotf_sloc2_1_0 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
;../tancotf.c:95: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
