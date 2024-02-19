;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlslonglong
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
	.globl __rlslonglong_PARM_2
	.globl __rlslonglong_PARM_1
	.globl __rlslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__rlslonglong_sloc0_1_0:
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
__rlslonglong_PARM_1:
	.ds 8
__rlslonglong_PARM_2:
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
;Allocation info for local variables in function '_rlslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__rlslonglong_sloc0_1_0'
;l                         Allocated with name '__rlslonglong_PARM_1'
;s                         Allocated with name '__rlslonglong_PARM_2'
;------------------------------------------------------------
;../_rlslonglong.c:39: long long _rlslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rlslonglong:
;../_rlslonglong.c:41: return((unsigned long long)(l) << s);
	lda	(__rlslonglong_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	(__rlslonglong_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__rlslonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__rlslonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__rlslonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__rlslonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__rlslonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	__rlslonglong_PARM_1
	sta	__rlulonglong_PARM_1
	lda	__rlslonglong_PARM_2
	sta	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*(__rlslonglong_sloc0_1_0 + 7)
	stx	*(__rlslonglong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__rlslonglong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__rlslonglong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__rlslonglong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__rlslonglong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__rlslonglong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__rlslonglong_sloc0_1_0
	mov	*__rlslonglong_sloc0_1_0,*___SDCC_hc08_ret7
	mov	*(__rlslonglong_sloc0_1_0 + 1),*___SDCC_hc08_ret6
	mov	*(__rlslonglong_sloc0_1_0 + 2),*___SDCC_hc08_ret5
	mov	*(__rlslonglong_sloc0_1_0 + 3),*___SDCC_hc08_ret4
	mov	*(__rlslonglong_sloc0_1_0 + 4),*___SDCC_hc08_ret3
	mov	*(__rlslonglong_sloc0_1_0 + 5),*___SDCC_hc08_ret2
	ldx	*(__rlslonglong_sloc0_1_0 + 6)
	lda	*(__rlslonglong_sloc0_1_0 + 7)
;../_rlslonglong.c:42: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
