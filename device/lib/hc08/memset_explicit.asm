;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memset_explicit
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
	.globl _memset_explcit
	.globl _memset
	.globl _memset_explcit_PARM_3
	.globl _memset_explcit_PARM_2
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
_memset_explcit_PARM_2:
	.ds 2
_memset_explcit_PARM_3:
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
;Allocation info for local variables in function 'memset_explcit'
;------------------------------------------------------------
;c                         Allocated with name '_memset_explcit_PARM_2'
;n                         Allocated with name '_memset_explcit_PARM_3'
;s                         Allocated to registers a x 
;------------------------------------------------------------
;../memset_explicit.c:32: void *memset_explcit (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset_explcit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memset_explcit:
;../memset_explicit.c:34: return(memset(s, c, n));
	psha
	lda	(_memset_explcit_PARM_2 + 1)
	sta	_memset_PARM_2
	lda	_memset_explcit_PARM_3
	sta	_memset_PARM_3
	lda	(_memset_explcit_PARM_3 + 1)
	sta	(_memset_PARM_3 + 1)
	pula
;../memset_explicit.c:35: }
	jmp	_memset
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
