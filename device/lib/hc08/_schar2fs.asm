;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _schar2fs
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
	.globl ___slong2fs
	.globl ___schar2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___schar2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__schar2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___schar2fs_sloc0_1_0'
;sc                        Allocated to registers a 
;------------------------------------------------------------
;../_schar2fs.c:55: float __schar2fs (signed char sc) {
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___schar2fs:
;../_schar2fs.c:56: return __slong2fs(sc);
	sta	(___slong2fs_PARM_1 + 3)
	rola	
	clra	
	sbc	#0x00
	sta	(___slong2fs_PARM_1 + 2)
	sta	(___slong2fs_PARM_1 + 1)
	sta	___slong2fs_PARM_1
	jsr	___slong2fs
	sta	*(___schar2fs_sloc0_1_0 + 3)
	stx	*(___schar2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___schar2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___schar2fs_sloc0_1_0
	mov	*___schar2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___schar2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___schar2fs_sloc0_1_0 + 2)
	lda	*(___schar2fs_sloc0_1_0 + 3)
;../_schar2fs.c:57: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
