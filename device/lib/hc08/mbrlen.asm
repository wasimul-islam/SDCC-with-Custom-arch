;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrlen
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
	.globl _mbrtowc
	.globl _mbrlen_PARM_3
	.globl _mbrlen_PARM_2
	.globl _mbrlen
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
_mbrlen_PARM_2:
	.ds 2
_mbrlen_PARM_3:
	.ds 2
_mbrlen_s_65536_9:
	.ds 2
_mbrlen_sps_65536_10:
	.ds 3
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
;Allocation info for local variables in function 'mbrlen'
;------------------------------------------------------------
;n                         Allocated with name '_mbrlen_PARM_2'
;ps                        Allocated with name '_mbrlen_PARM_3'
;s                         Allocated with name '_mbrlen_s_65536_9'
;sps                       Allocated with name '_mbrlen_sps_65536_10'
;------------------------------------------------------------
;../mbrlen.c:31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrlen:
	sta	(_mbrlen_s_65536_9 + 1)
	stx	_mbrlen_s_65536_9
;../mbrlen.c:35: return(mbrtowc(0, s, n, ps ? ps : &sps));
	lda	_mbrlen_PARM_3
	ora	(_mbrlen_PARM_3 + 1)
	beq	00103$
	lda	_mbrlen_PARM_3
	psha
	pulh
	ldx	(_mbrlen_PARM_3 + 1)
	bra	00104$
00103$:
	ldhx	#_mbrlen_sps_65536_10
00104$:
	lda	_mbrlen_s_65536_9
	sta	_mbrtowc_PARM_2
	lda	(_mbrlen_s_65536_9 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrlen_PARM_2
	sta	_mbrtowc_PARM_3
	lda	(_mbrlen_PARM_2 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	pshh
	pula
	sta	_mbrtowc_PARM_4
	stx	(_mbrtowc_PARM_4 + 1)
	clra
	tax
;../mbrlen.c:36: }
	jmp	_mbrtowc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
