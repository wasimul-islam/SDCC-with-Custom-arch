;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c32rtomb
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
	.globl _wctomb
	.globl _c32rtomb_PARM_3
	.globl _c32rtomb_PARM_2
	.globl _c32rtomb
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
_c32rtomb_PARM_2:
	.ds 4
_c32rtomb_PARM_3:
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
;Allocation info for local variables in function 'c32rtomb'
;------------------------------------------------------------
;c32                       Allocated with name '_c32rtomb_PARM_2'
;ps                        Allocated with name '_c32rtomb_PARM_3'
;s                         Allocated to registers x h 
;------------------------------------------------------------
;../c32rtomb.c:33: size_t c32rtomb(char *restrict s, char32_t c32, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c32rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c32rtomb:
	pshx
	tax
	pulh
;../c32rtomb.c:36: return(wctomb(s, c32));
	lda	_c32rtomb_PARM_2
	sta	_wctomb_PARM_2
	lda	(_c32rtomb_PARM_2 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	(_c32rtomb_PARM_2 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(_c32rtomb_PARM_2 + 3)
	sta	(_wctomb_PARM_2 + 3)
	txa
	pshh
	pulx
;../c32rtomb.c:37: }
	jmp	_wctomb
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
