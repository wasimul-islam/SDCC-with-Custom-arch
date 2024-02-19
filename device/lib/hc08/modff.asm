;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module modff
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
	.globl _modff_PARM_2
	.globl _modff_PARM_1
	.globl _modff
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_modff_sloc0_1_0:
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
_modff_PARM_1:
	.ds 4
_modff_PARM_2:
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;sloc0                     Allocated with name '_modff_sloc0_1_0'
;x                         Allocated with name '_modff_PARM_1'
;y                         Allocated with name '_modff_PARM_2'
;------------------------------------------------------------
;../modff.c:33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_modff:
;../modff.c:35: *y=(long)x;
	lda	_modff_PARM_2
	psha
	pulh
	ldx	(_modff_PARM_2 + 1)
	lda	_modff_PARM_1
	sta	___fs2slong_PARM_1
	lda	(_modff_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	(_modff_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(_modff_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	pshx
	pshh
	jsr	___fs2slong
	sta	(___slong2fs_PARM_1 + 3)
	stx	(___slong2fs_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___slong2fs_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___slong2fs_PARM_1
	pulh
	pulx
	pshx
	pshh
	jsr	___slong2fs
	sta	*(_modff_sloc0_1_0 + 3)
	stx	*(_modff_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_modff_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_modff_sloc0_1_0
	pulh
	pulx
	lda	*_modff_sloc0_1_0
	sta	,x
	lda	*(_modff_sloc0_1_0 + 1)
	sta	1,x
	lda	*(_modff_sloc0_1_0 + 2)
	sta	2,x
	lda	*(_modff_sloc0_1_0 + 3)
	sta	3,x
;../modff.c:36: return (x-*y);
	ldhx	#___fssub_PARM_1
	lda	_modff_PARM_1
	sta	,x
	lda	(_modff_PARM_1 + 1)
	sta	1,x
	lda	(_modff_PARM_1 + 2)
	sta	2,x
	lda	(_modff_PARM_1 + 3)
	sta	3,x
	ldhx	#___fssub_PARM_2
	mov	*_modff_sloc0_1_0,x+
	mov	*(_modff_sloc0_1_0 + 1),x+
	mov	*(_modff_sloc0_1_0 + 2),x+
	mov	*(_modff_sloc0_1_0 + 3),x+
	jsr	___fssub
	sta	*(_modff_sloc0_1_0 + 3)
	stx	*(_modff_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_modff_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_modff_sloc0_1_0
	mov	*_modff_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(_modff_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_modff_sloc0_1_0 + 2)
	lda	*(_modff_sloc0_1_0 + 3)
;../modff.c:37: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
