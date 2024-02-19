;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcrtomb
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
	.globl _wcrtomb_PARM_3
	.globl _wcrtomb_PARM_2
	.globl _wcrtomb
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
_wcrtomb_PARM_2:
	.ds 4
_wcrtomb_PARM_3:
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
;Allocation info for local variables in function 'wcrtomb'
;------------------------------------------------------------
;wc                        Allocated with name '_wcrtomb_PARM_2'
;ps                        Allocated with name '_wcrtomb_PARM_3'
;s                         Allocated to registers x h 
;ret                       Allocated to registers a x 
;------------------------------------------------------------
;../wcrtomb.c:34: size_t wcrtomb(char *restrict s, wchar_t wc, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function wcrtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcrtomb:
	pshx
	tax
	pulh
;../wcrtomb.c:40: ret = wctomb(s, wc);
	lda	_wcrtomb_PARM_2
	sta	_wctomb_PARM_2
	lda	(_wcrtomb_PARM_2 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	(_wcrtomb_PARM_2 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(_wcrtomb_PARM_2 + 3)
	sta	(_wctomb_PARM_2 + 3)
	txa
	pshh
	pulx
	jsr	_wctomb
;../wcrtomb.c:42: if(ret == (size_t)(-1))
	cmp	#0xff
	bne	00110$
	cpx	#0xff
	beq	00111$
00110$:
	rts
00111$:
;../wcrtomb.c:43: errno = EILSEQ;
	psha
	clra
	sta	_errno
	lda	#0x54
	sta	(_errno + 1)
	pula
;../wcrtomb.c:45: return(ret);
;../wcrtomb.c:46: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
