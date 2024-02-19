;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcslen
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
	.globl _wcslen
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcslen_n_65536_10:
	.ds 2
_wcslen_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function 'wcslen'
;------------------------------------------------------------
;s                         Allocated to registers 
;n                         Allocated with name '_wcslen_n_65536_10'
;sloc0                     Allocated with name '_wcslen_sloc0_1_0'
;------------------------------------------------------------
;../wcslen.c:31: size_t wcslen(const wchar_t *s)
;	-----------------------------------------
;	 function wcslen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcslen:
	pshx
	tax
	pulh
;../wcslen.c:34: while (*s)
	mov	#0x00,*_wcslen_n_65536_10
	mov	#0x00,*(_wcslen_n_65536_10 + 1)
00101$:
	lda	,x
	sta	*_wcslen_sloc0_1_0
	lda	1,x
	sta	*(_wcslen_sloc0_1_0 + 1)
	lda	2,x
	sta	*(_wcslen_sloc0_1_0 + 2)
	lda	3,x
	sta	*(_wcslen_sloc0_1_0 + 3)
	lda	*_wcslen_sloc0_1_0
	ora	*(_wcslen_sloc0_1_0 + 1)
	ora	*(_wcslen_sloc0_1_0 + 2)
	ora	*(_wcslen_sloc0_1_0 + 3)
	beq	00103$
;../wcslen.c:36: n++;
	pshx
	pshh
	ldhx	*_wcslen_n_65536_10
	aix	#1
	sthx	*_wcslen_n_65536_10
	pulh
	pulx
;../wcslen.c:37: s++;
	aix	#4
	bra	00101$
00103$:
;../wcslen.c:40: return n;
	ldx	*_wcslen_n_65536_10
	lda	*(_wcslen_n_65536_10 + 1)
;../wcslen.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
