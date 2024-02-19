;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _slonglong2fs
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
	.globl ___slonglong2fs_PARM_1
	.globl ___slonglong2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___slonglong2fs_sloc0_1_0:
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
___slonglong2fs_PARM_1:
	.ds 8
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
;Allocation info for local variables in function '__slonglong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___slonglong2fs_sloc0_1_0'
;sll                       Allocated with name '___slonglong2fs_PARM_1'
;------------------------------------------------------------
;../_slonglong2fs.c:36: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED {
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___slonglong2fs:
;../_slonglong2fs.c:37: if (sll<0) 
	lda	___slonglong2fs_PARM_1
	sub	#0x00
	bge	00102$
;../_slonglong2fs.c:38: return -__ulonglong2fs(-sll);
	clra
	sub	(___slonglong2fs_PARM_1 + 7)
	sta	(___ulonglong2fs_PARM_1 + 7)
	clra
	sbc	(___slonglong2fs_PARM_1 + 6)
	sta	(___ulonglong2fs_PARM_1 + 6)
	clra
	sbc	(___slonglong2fs_PARM_1 + 5)
	sta	(___ulonglong2fs_PARM_1 + 5)
	clra
	sbc	(___slonglong2fs_PARM_1 + 4)
	sta	(___ulonglong2fs_PARM_1 + 4)
	clra
	sbc	(___slonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 3)
	clra
	sbc	(___slonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 2)
	clra
	sbc	(___slonglong2fs_PARM_1 + 1)
	sta	(___ulonglong2fs_PARM_1 + 1)
	clra
	sbc	___slonglong2fs_PARM_1
	sta	___ulonglong2fs_PARM_1
	jsr	___ulonglong2fs
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	stx	*(___slonglong2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___slonglong2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___slonglong2fs_sloc0_1_0
	lda	*___slonglong2fs_sloc0_1_0
	eor	#0x80
	sta	*___slonglong2fs_sloc0_1_0
	mov	*___slonglong2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___slonglong2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*(___slonglong2fs_sloc0_1_0 + 3)
	rts
00102$:
;../_slonglong2fs.c:40: return __ulonglong2fs(sll);
	ldhx	___slonglong2fs_PARM_1
	sthx	___ulonglong2fs_PARM_1
	ldhx	(___slonglong2fs_PARM_1 + 2)
	sthx	(___ulonglong2fs_PARM_1 + 2)
	ldhx	(___slonglong2fs_PARM_1 + 4)
	sthx	(___ulonglong2fs_PARM_1 + 4)
	ldhx	(___slonglong2fs_PARM_1 + 6)
	sthx	(___ulonglong2fs_PARM_1 + 6)
	jsr	___ulonglong2fs
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	stx	*(___slonglong2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___slonglong2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___slonglong2fs_sloc0_1_0
	mov	*___slonglong2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___slonglong2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*(___slonglong2fs_sloc0_1_0 + 3)
;../_slonglong2fs.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
