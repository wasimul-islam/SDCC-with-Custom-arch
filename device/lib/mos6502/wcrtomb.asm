;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcrtomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcrtomb_PARM_3
	.globl _wcrtomb_PARM_2
	.globl _wcrtomb
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcrtomb_PARM_2:
	.ds 4
_wcrtomb_PARM_3:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'wcrtomb'
;------------------------------------------------------------
;wc                        Allocated with name '_wcrtomb_PARM_2'
;ps                        Allocated with name '_wcrtomb_PARM_3'
;s                         Allocated to registers a x 
;ret                       Allocated to registers a x 
;------------------------------------------------------------
;	../wcrtomb.c: 34: size_t wcrtomb(char *restrict s, wchar_t wc, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function wcrtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcrtomb:
;	../wcrtomb.c: 40: ret = wctomb(s, wc);
	ldy	_wcrtomb_PARM_2
	sty	_wctomb_PARM_2
	ldy	(_wcrtomb_PARM_2 + 1)
	sty	(_wctomb_PARM_2 + 1)
	ldy	(_wcrtomb_PARM_2 + 2)
	sty	(_wctomb_PARM_2 + 2)
	ldy	(_wcrtomb_PARM_2 + 3)
	sty	(_wctomb_PARM_2 + 3)
	jsr	_wctomb
;	../wcrtomb.c: 42: if(ret == (size_t)(-1))
	cmp	#0xff
	bne	00102$
	cpx	#0xff
	beq	00111$
	rts
00111$:
;	../wcrtomb.c: 43: errno = EILSEQ;
	ldy	#0x54
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
00102$:
;	../wcrtomb.c: 45: return(ret);
;	../wcrtomb.c: 46: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
