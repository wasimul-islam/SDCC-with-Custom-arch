;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module sincosf
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
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
	.globl _sincosf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
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
_sincosf_PARM_1:
	.ds 4
_sincosf_PARM_2:
	.ds 1
_sincosf_y_65536_26:
	.ds 4
_sincosf_f_65536_26:
	.ds 4
_sincosf_XN_65536_26:
	.ds 4
_sincosf_sign_65536_26:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated with name '_sincosf_sloc1_1_0'
;x                         Allocated with name '_sincosf_PARM_1'
;iscos                     Allocated with name '_sincosf_PARM_2'
;y                         Allocated with name '_sincosf_y_65536_26'
;f                         Allocated with name '_sincosf_f_65536_26'
;r                         Allocated with name '_sincosf_r_65536_26'
;g                         Allocated with name '_sincosf_g_65536_26'
;XN                        Allocated with name '_sincosf_XN_65536_26'
;N                         Allocated to registers a x 
;sign                      Allocated with name '_sincosf_sign_65536_26'
;------------------------------------------------------------
;../sincosf.c:50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincosf:
;../sincosf.c:56: if(iscos)
	lda	_sincosf_PARM_2
	beq	00105$
;../sincosf.c:58: y=fabsf(x)+HALF_PI;
	lda	(_sincosf_PARM_1 + 3)
	psha
	lda	(_sincosf_PARM_1 + 2)
	psha
	lda	(_sincosf_PARM_1 + 1)
	psha
	lda	_sincosf_PARM_1
	psha
	jsr	_fabsf
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ais	#4
	ldhx	#0x3fc9
	sthx	___fsadd_PARM_2
	ldhx	#0x0fdb
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(_sincosf_y_65536_26 + 3)
	stx	(_sincosf_y_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_y_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_y_65536_26
;../sincosf.c:59: sign=0;
	clra
	sta	_sincosf_sign_65536_26
	bra	00106$
00105$:
;../sincosf.c:63: if(x<0.0)
	ldhx	_sincosf_PARM_1
	sthx	___fslt_PARM_1
	ldhx	(_sincosf_PARM_1 + 2)
	sthx	(___fslt_PARM_1 + 2)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00102$
;../sincosf.c:64: { y=-x; sign=1; }
	lda	(_sincosf_PARM_1 + 3)
	sta	(_sincosf_y_65536_26 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_65536_26 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_65536_26 + 1)
	lda	_sincosf_PARM_1
	eor	#0x80
	sta	_sincosf_y_65536_26
	lda	#0x01
	sta	_sincosf_sign_65536_26
	bra	00106$
00102$:
;../sincosf.c:66: { y=x; sign=0; }
	ldhx	_sincosf_PARM_1
	sthx	_sincosf_y_65536_26
	ldhx	(_sincosf_PARM_1 + 2)
	sthx	(_sincosf_y_65536_26 + 2)
	clra
	sta	_sincosf_sign_65536_26
00106$:
;../sincosf.c:69: if(y>YMAX)
	ldhx	#0x4649
	sthx	___fslt_PARM_1
	ldhx	#0x0c00
	sthx	(___fslt_PARM_1 + 2)
	ldhx	_sincosf_y_65536_26
	sthx	___fslt_PARM_2
	ldhx	(_sincosf_y_65536_26 + 2)
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00108$
;../sincosf.c:71: errno=ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../sincosf.c:72: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00108$:
;../sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	ldhx	#0x3ea2
	sthx	___fsmul_PARM_1
	ldhx	#0xf983
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_y_65536_26
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_y_65536_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3f00
	sthx	___fsadd_PARM_2
	clrh
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fs2sint_PARM_1 + 3)
	stx	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fs2sint_PARM_1
	jsr	___fs2sint
;../sincosf.c:79: if(N&1) sign=!sign;
	psha
	bit	#0x01
	pula
	beq	00110$
	psha
	lda	_sincosf_sign_65536_26
	eor	#0x01
	sta	_sincosf_sign_65536_26
	pula
00110$:
;../sincosf.c:81: XN=N;
	jsr	___sint2fs
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	lda	*_sincosf_sloc0_1_0
	sta	_sincosf_XN_65536_26
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(_sincosf_XN_65536_26 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(_sincosf_XN_65536_26 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(_sincosf_XN_65536_26 + 3)
;../sincosf.c:83: if(iscos) XN-=0.5;
	lda	_sincosf_PARM_2
	beq	00112$
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	ldhx	#0x3f00
	sthx	___fssub_PARM_2
	clrh
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	(_sincosf_XN_65536_26 + 3)
	stx	(_sincosf_XN_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_XN_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_XN_65536_26
00112$:
;../sincosf.c:85: y=fabsf(x);
	lda	(_sincosf_PARM_1 + 3)
	psha
	lda	(_sincosf_PARM_1 + 2)
	psha
	lda	(_sincosf_PARM_1 + 1)
	psha
	lda	_sincosf_PARM_1
	psha
	jsr	_fabsf
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	ais	#4
;../sincosf.c:86: r=(int)y;
	lda	*_sincosf_sloc0_1_0
	sta	___fs2sint_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fs2sint_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	jsr	___sint2fs
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
;../sincosf.c:87: g=y-r;
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
;../sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	jsr	___fssub
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	ldhx	#0x4049
	sthx	___fsmul_PARM_1
	clrh
	clrx
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_XN_65536_26
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_XN_65536_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsadd_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
	ldhx	#0x3a7d
	sthx	___fsmul_PARM_1
	ldhx	#0xaa22
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_XN_65536_26
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_XN_65536_26 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
	lda	*_sincosf_sloc1_1_0
	sta	_sincosf_f_65536_26
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(_sincosf_f_65536_26 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(_sincosf_f_65536_26 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(_sincosf_f_65536_26 + 3)
;../sincosf.c:90: g=f*f;
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;../sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	jsr	___fsmul
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	ldhx	#0x337f
	sthx	___fslt_PARM_1
	ldhx	#0xfff3
	sthx	(___fslt_PARM_1 + 2)
	lda	*_sincosf_sloc0_1_0
	sta	___fslt_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	tsta
	bne	00160$
	jmp	00114$
00160$:
;../sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	ldhx	#0x362e
	sthx	___fsmul_PARM_1
	ldhx	#0x9c5b
	sthx	(___fsmul_PARM_1 + 2)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xb94f
	sthx	___fsadd_PARM_2
	ldhx	#0xb222
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3c08
	sthx	___fsadd_PARM_2
	ldhx	#0x873e
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xbe2a
	sthx	___fsadd_PARM_2
	ldhx	#0xaaa4
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;../sincosf.c:94: f+=f*r;
	jsr	___fsmul
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	(_sincosf_f_65536_26 + 3)
	stx	(_sincosf_f_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_f_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_f_65536_26
00114$:
;../sincosf.c:96: return (sign?-f:f);
	lda	_sincosf_sign_65536_26
	beq	00117$
	lda	(_sincosf_f_65536_26 + 3)
	sta	*(_sincosf_sloc1_1_0 + 3)
	lda	(_sincosf_f_65536_26 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_65536_26 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	_sincosf_f_65536_26
	eor	#0x80
	sta	*_sincosf_sloc1_1_0
	bra	00118$
00117$:
	ldhx	_sincosf_f_65536_26
	sthx	*_sincosf_sloc1_1_0
	ldhx	(_sincosf_f_65536_26 + 2)
	sthx	*(_sincosf_sloc1_1_0 + 2)
00118$:
	mov	*_sincosf_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(_sincosf_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_sincosf_sloc1_1_0 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
;../sincosf.c:97: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
