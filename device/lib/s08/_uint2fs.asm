;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _uint2fs
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
	.globl ___ulong2fs
	.globl ___uint2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___uint2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__uint2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uint2fs_sloc0_1_0'
;ui                        Allocated to registers a x 
;------------------------------------------------------------
;../_uint2fs.c:54: float __uint2fs (unsigned int ui) {
;	-----------------------------------------
;	 function __uint2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uint2fs:
;../_uint2fs.c:55: return __ulong2fs(ui);
	sta	(___ulong2fs_PARM_1 + 3)
	stx	(___ulong2fs_PARM_1 + 2)
	psha
	clra
	sta	(___ulong2fs_PARM_1 + 1)
	clra
	sta	___ulong2fs_PARM_1
	pula
	jsr	___ulong2fs
	sta	*(___uint2fs_sloc0_1_0 + 3)
	stx	*(___uint2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___uint2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___uint2fs_sloc0_1_0
	mov	*___uint2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___uint2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___uint2fs_sloc0_1_0 + 2)
	lda	*(___uint2fs_sloc0_1_0 + 3)
;../_uint2fs.c:56: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
