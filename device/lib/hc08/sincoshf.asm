;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincoshf
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
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
	.globl _sincoshf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 4
_sincoshf_sloc2_1_0:
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
_sincoshf_PARM_1:
	.ds 4
_sincoshf_PARM_2:
	.ds 1
_sincoshf_y_65536_26:
	.ds 4
_sincoshf_w_65536_26:
	.ds 4
_sincoshf_z_65536_26:
	.ds 4
_sincoshf_sign_65536_26:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;sloc1                     Allocated with name '_sincoshf_sloc1_1_0'
;sloc2                     Allocated with name '_sincoshf_sloc2_1_0'
;x                         Allocated with name '_sincoshf_PARM_1'
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;y                         Allocated with name '_sincoshf_y_65536_26'
;w                         Allocated with name '_sincoshf_w_65536_26'
;z                         Allocated with name '_sincoshf_z_65536_26'
;sign                      Allocated with name '_sincoshf_sign_65536_26'
;------------------------------------------------------------
;../sincoshf.c:56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincoshf:
;../sincoshf.c:62: else { y=x;  sign=0; }
	ldhx	#_sincoshf_PARM_1
	mov	,x+,*_sincoshf_sloc0_1_0
	mov	,x+,*(_sincoshf_sloc0_1_0 + 1)
	mov	,x+,*(_sincoshf_sloc0_1_0 + 2)
	mov	,x+,*(_sincoshf_sloc0_1_0 + 3)
;../sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	ldhx	#___fslt_PARM_1
	lda	_sincoshf_PARM_1
	sta	,x
	lda	(_sincoshf_PARM_1 + 1)
	sta	1,x
	lda	(_sincoshf_PARM_1 + 2)
	sta	2,x
	lda	(_sincoshf_PARM_1 + 3)
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00102$
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_y_65536_26 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_65536_26 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_65536_26 + 1)
	lda	_sincoshf_PARM_1
	eor	#0x80
	sta	_sincoshf_y_65536_26
	lda	#0x01
	sta	_sincoshf_sign_65536_26
	bra	00103$
00102$:
;../sincoshf.c:62: else { y=x;  sign=0; }
	ldhx	#_sincoshf_y_65536_26
	mov	*_sincoshf_sloc0_1_0,x+
	mov	*(_sincoshf_sloc0_1_0 + 1),x+
	mov	*(_sincoshf_sloc0_1_0 + 2),x+
	mov	*(_sincoshf_sloc0_1_0 + 3),x+
	clra
	sta	_sincoshf_sign_65536_26
00103$:
;../sincoshf.c:64: if ((y>1.0) || iscosh)
	ldhx	#___fslt_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fslt_PARM_2
	lda	_sincoshf_y_65536_26
	sta	,x
	lda	(_sincoshf_y_65536_26 + 1)
	sta	1,x
	lda	(_sincoshf_y_65536_26 + 2)
	sta	2,x
	lda	(_sincoshf_y_65536_26 + 3)
	sta	3,x
	jsr	___fslt
	tsta
	bne	00117$
	lda	_sincoshf_PARM_2
	bne	00160$
	jmp	00118$
00160$:
00117$:
;../sincoshf.c:66: if(y>YBAR)
	ldhx	#___fslt_PARM_1
	lda	#0x41
	sta	,x
	lda	#0x10
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fslt_PARM_2
	lda	_sincoshf_y_65536_26
	sta	,x
	lda	(_sincoshf_y_65536_26 + 1)
	sta	1,x
	lda	(_sincoshf_y_65536_26 + 2)
	sta	2,x
	lda	(_sincoshf_y_65536_26 + 3)
	sta	3,x
	jsr	___fslt
	tsta
	bne	00161$
	jmp	00110$
00161$:
;../sincoshf.c:68: w=y-K1;
	ldhx	#___fssub_PARM_1
	lda	_sincoshf_y_65536_26
	sta	,x
	lda	(_sincoshf_y_65536_26 + 1)
	sta	1,x
	lda	(_sincoshf_y_65536_26 + 2)
	sta	2,x
	lda	(_sincoshf_y_65536_26 + 3)
	sta	3,x
	ldhx	#___fssub_PARM_2
	lda	#0x3f
	sta	,x
	lda	#0x31
	sta	1,x
	lda	#0x73
	sta	2,x
	clra
	sta	3,x
;../sincoshf.c:69: if (w>WMAX)
	jsr	___fssub
	sta	*(_sincoshf_sloc1_1_0 + 3)
	stx	*(_sincoshf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc1_1_0
	ldhx	#___fslt_PARM_1
	lda	#0x42
	sta	,x
	lda	#0x33
	sta	1,x
	lda	#0xbd
	sta	2,x
	lda	#0xcf
	sta	3,x
	ldhx	#___fslt_PARM_2
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fslt
	tsta
	beq	00105$
;../sincoshf.c:71: errno=ERANGE;
	clra
	sta	_errno
	lda	#0x22
	sta	(_errno + 1)
;../sincoshf.c:72: z=HUGE_VALF;
	ldhx	#_sincoshf_z_65536_26
	lda	#0x7f
	sta	,x
	sta	1,x
	lda	#0xff
	sta	2,x
	sta	3,x
	jmp	00111$
00105$:
;../sincoshf.c:76: z=expf(w);
	lda	*(_sincoshf_sloc1_1_0 + 3)
	psha
	lda	*(_sincoshf_sloc1_1_0 + 2)
	psha
	lda	*(_sincoshf_sloc1_1_0 + 1)
	psha
	lda	*_sincoshf_sloc1_1_0
	psha
	jsr	_expf
	sta	*(_sincoshf_sloc1_1_0 + 3)
	stx	*(_sincoshf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc1_1_0
	ais	#4
;../sincoshf.c:77: z+=K3*z;
	ldhx	#___fsmul_PARM_1
	lda	#0x37
	sta	,x
	lda	#0x68
	sta	1,x
	lda	#0x08
	sta	2,x
	lda	#0x97
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fsadd
	sta	(_sincoshf_z_65536_26 + 3)
	stx	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_65536_26
	jmp	00111$
00110$:
;../sincoshf.c:82: z=expf(y);
	lda	(_sincoshf_y_65536_26 + 3)
	psha
	lda	(_sincoshf_y_65536_26 + 2)
	psha
	lda	(_sincoshf_y_65536_26 + 1)
	psha
	lda	_sincoshf_y_65536_26
	psha
	jsr	_expf
	sta	*(_sincoshf_sloc1_1_0 + 3)
	stx	*(_sincoshf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc1_1_0
	ais	#4
;../sincoshf.c:83: w=1.0/z;
	ldhx	#___fsdiv_PARM_1
	lda	#0x3f
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fsdiv_PARM_2
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fsdiv
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	ldhx	#_sincoshf_w_65536_26
	mov	*_sincoshf_sloc2_1_0,x+
	mov	*(_sincoshf_sloc2_1_0 + 1),x+
	mov	*(_sincoshf_sloc2_1_0 + 2),x+
	mov	*(_sincoshf_sloc2_1_0 + 3),x+
;../sincoshf.c:84: if(!iscosh) w=-w;
	lda	_sincoshf_PARM_2
	bne	00108$
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(_sincoshf_w_65536_26 + 3)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(_sincoshf_w_65536_26 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(_sincoshf_w_65536_26 + 1)
	lda	*_sincoshf_sloc2_1_0
	eor	#0x80
	sta	_sincoshf_w_65536_26
00108$:
;../sincoshf.c:85: z=(z+w)*0.5;
	ldhx	#___fsadd_PARM_1
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	lda	_sincoshf_w_65536_26
	sta	,x
	lda	(_sincoshf_w_65536_26 + 1)
	sta	1,x
	lda	(_sincoshf_w_65536_26 + 2)
	sta	2,x
	lda	(_sincoshf_w_65536_26 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	ldhx	#___fsmul_PARM_1
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	lda	#0x3f
	sta	,x
	jsr	___fsmul
	sta	(_sincoshf_z_65536_26 + 3)
	stx	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_65536_26
00111$:
;../sincoshf.c:87: if(sign) z=-z;
	lda	_sincoshf_sign_65536_26
	bne	00164$
	jmp	00119$
00164$:
	lda	_sincoshf_z_65536_26
	eor	#0x80
	sta	_sincoshf_z_65536_26
	jmp	00119$
00118$:
;../sincoshf.c:91: if (y<EPS)
	ldhx	#___fslt_PARM_1
	lda	_sincoshf_y_65536_26
	sta	,x
	lda	(_sincoshf_y_65536_26 + 1)
	sta	1,x
	lda	(_sincoshf_y_65536_26 + 2)
	sta	2,x
	lda	(_sincoshf_y_65536_26 + 3)
	sta	3,x
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
	beq	00115$
;../sincoshf.c:92: z=x;
	ldhx	#_sincoshf_z_65536_26
	mov	*_sincoshf_sloc0_1_0,x+
	mov	*(_sincoshf_sloc0_1_0 + 1),x+
	mov	*(_sincoshf_sloc0_1_0 + 2),x+
	mov	*(_sincoshf_sloc0_1_0 + 3),x+
	jmp	00119$
00115$:
;../sincoshf.c:95: z=x*x;
	ldhx	#___fsmul_PARM_1
	lda	_sincoshf_PARM_1
	sta	,x
	lda	(_sincoshf_PARM_1 + 1)
	sta	1,x
	lda	(_sincoshf_PARM_1 + 2)
	sta	2,x
	lda	(_sincoshf_PARM_1 + 3)
	sta	3,x
	ldhx	#___fsmul_PARM_2
	lda	_sincoshf_PARM_1
	sta	,x
	lda	(_sincoshf_PARM_1 + 1)
	sta	1,x
	lda	(_sincoshf_PARM_1 + 2)
	sta	2,x
	lda	(_sincoshf_PARM_1 + 3)
	sta	3,x
;../sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	jsr	___fsmul
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	ldhx	#___fsmul_PARM_1
	lda	_sincoshf_PARM_1
	sta	,x
	lda	(_sincoshf_PARM_1 + 1)
	sta	1,x
	lda	(_sincoshf_PARM_1 + 2)
	sta	2,x
	lda	(_sincoshf_PARM_1 + 3)
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_sincoshf_sloc2_1_0,x+
	mov	*(_sincoshf_sloc2_1_0 + 1),x+
	mov	*(_sincoshf_sloc2_1_0 + 2),x+
	mov	*(_sincoshf_sloc2_1_0 + 3),x+
	jsr	___fsmul
	sta	*(_sincoshf_sloc1_1_0 + 3)
	stx	*(_sincoshf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc1_1_0
	ldhx	#___fsmul_PARM_1
	lda	#0xbe
	sta	,x
	lda	#0x42
	sta	1,x
	lda	#0xe6
	sta	2,x
	lda	#0xea
	sta	3,x
	ldhx	#___fsmul_PARM_2
	mov	*_sincoshf_sloc2_1_0,x+
	mov	*(_sincoshf_sloc2_1_0 + 1),x+
	mov	*(_sincoshf_sloc2_1_0 + 2),x+
	mov	*(_sincoshf_sloc2_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0xc0
	sta	,x
	lda	#0xe4
	sta	1,x
	lda	#0x69
	sta	2,x
	lda	#0xf0
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	ldhx	#___fsmul_PARM_1
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fsmul
	sta	*(_sincoshf_sloc1_1_0 + 3)
	stx	*(_sincoshf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc1_1_0
	ldhx	#___fsadd_PARM_1
	mov	*_sincoshf_sloc2_1_0,x+
	mov	*(_sincoshf_sloc2_1_0 + 1),x+
	mov	*(_sincoshf_sloc2_1_0 + 2),x+
	mov	*(_sincoshf_sloc2_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	lda	#0xc2
	sta	,x
	lda	#0x2b
	sta	1,x
	lda	#0x4f
	sta	2,x
	lda	#0x93
	sta	3,x
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	ldhx	#___fsdiv_PARM_1
	mov	*_sincoshf_sloc1_1_0,x+
	mov	*(_sincoshf_sloc1_1_0 + 1),x+
	mov	*(_sincoshf_sloc1_1_0 + 2),x+
	mov	*(_sincoshf_sloc1_1_0 + 3),x+
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	lda	_sincoshf_PARM_1
	sta	,x
	lda	(_sincoshf_PARM_1 + 1)
	sta	1,x
	lda	(_sincoshf_PARM_1 + 2)
	sta	2,x
	lda	(_sincoshf_PARM_1 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(_sincoshf_z_65536_26 + 3)
	stx	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_65536_26
00119$:
;../sincoshf.c:99: return z;
	lda	_sincoshf_z_65536_26
	sta	*___SDCC_hc08_ret3
	lda	(_sincoshf_z_65536_26 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_sincoshf_z_65536_26 + 2)
	lda	(_sincoshf_z_65536_26 + 3)
;../sincoshf.c:100: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
