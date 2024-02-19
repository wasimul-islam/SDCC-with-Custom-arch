;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atomic_flag_clear
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
	.globl _atomic_flag_clear
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_atomic_flag_clear_object_65536_3:
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
;Allocation info for local variables in function 'atomic_flag_clear'
;------------------------------------------------------------
;object                    Allocated with name '_atomic_flag_clear_object_65536_3'
;------------------------------------------------------------
;../atomic_flag_clear.c:31: void atomic_flag_clear(volatile atomic_flag *object)
;	-----------------------------------------
;	 function atomic_flag_clear
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atomic_flag_clear:
	sta	(_atomic_flag_clear_object_65536_3 + 1)
	stx	_atomic_flag_clear_object_65536_3
;../atomic_flag_clear.c:36: object->flag = 1;
	lda	_atomic_flag_clear_object_65536_3
	ldx	(_atomic_flag_clear_object_65536_3 + 1)
	psha
	pulh
	lda	#0x01
	sta	,x
;../atomic_flag_clear.c:40: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
