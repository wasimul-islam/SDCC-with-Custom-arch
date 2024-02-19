;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _uchar2fs
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
	.globl ___ulong2fs
	.globl ___uchar2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___uchar2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__uchar2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uchar2fs_sloc0_1_0'
;uc                        Allocated to registers a 
;------------------------------------------------------------
;../_uchar2fs.c:55: float __uchar2fs (unsigned char uc) {
;	-----------------------------------------
;	 function __uchar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uchar2fs:
;../_uchar2fs.c:56: return __ulong2fs(uc);
	sta	(___ulong2fs_PARM_1 + 3)
	clrx
	stx	(___ulong2fs_PARM_1 + 2)
	stx	(___ulong2fs_PARM_1 + 1)
	stx	___ulong2fs_PARM_1
	jsr	___ulong2fs
	sta	*(___uchar2fs_sloc0_1_0 + 3)
	stx	*(___uchar2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___uchar2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___uchar2fs_sloc0_1_0
	mov	*___uchar2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___uchar2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___uchar2fs_sloc0_1_0 + 2)
	lda	*(___uchar2fs_sloc0_1_0 + 3)
;../_uchar2fs.c:57: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
