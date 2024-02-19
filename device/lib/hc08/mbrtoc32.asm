;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
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
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
	.globl _mbrtoc32
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_mbrtoc32_sloc0_1_0:
	.ds 2
_mbrtoc32_sloc1_1_0:
	.ds 2
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
_mbrtoc32_PARM_2:
	.ds 2
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 2
_mbrtoc32_pc32_65536_15:
	.ds 2
_mbrtoc32_wc_65536_16:
	.ds 4
_mbrtoc32_ret_65536_16:
	.ds 2
_mbrtoc32_sps_65536_16:
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbrtoc32_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtoc32_sloc1_1_0'
;s                         Allocated with name '_mbrtoc32_PARM_2'
;n                         Allocated with name '_mbrtoc32_PARM_3'
;ps                        Allocated with name '_mbrtoc32_PARM_4'
;pc32                      Allocated with name '_mbrtoc32_pc32_65536_15'
;wc                        Allocated with name '_mbrtoc32_wc_65536_16'
;ret                       Allocated with name '_mbrtoc32_ret_65536_16'
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
;------------------------------------------------------------
;../mbrtoc32.c:34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc32:
	sta	(_mbrtoc32_pc32_65536_15 + 1)
	stx	_mbrtoc32_pc32_65536_15
;../mbrtoc32.c:40: if(!ps)
	lda	_mbrtoc32_PARM_4
	ora	(_mbrtoc32_PARM_4 + 1)
	bne	00102$
;../mbrtoc32.c:41: ps = &sps;
	lda	#_mbrtoc32_sps_65536_16
	sta	(_mbrtoc32_PARM_4 + 1)
	lda	#>_mbrtoc32_sps_65536_16
	sta	_mbrtoc32_PARM_4
00102$:
;../mbrtoc32.c:44: return(mbrtowc(0, s, n, ps));
	lda	_mbrtoc32_PARM_2
	psha
	pulh
	ldx	(_mbrtoc32_PARM_2 + 1)
	lda	_mbrtoc32_PARM_3
	sta	*_mbrtoc32_sloc0_1_0
	lda	(_mbrtoc32_PARM_3 + 1)
	sta	*(_mbrtoc32_sloc0_1_0 + 1)
	lda	_mbrtoc32_PARM_4
	sta	*_mbrtoc32_sloc1_1_0
	lda	(_mbrtoc32_PARM_4 + 1)
	sta	*(_mbrtoc32_sloc1_1_0 + 1)
;../mbrtoc32.c:43: if(!pc32)
	lda	_mbrtoc32_pc32_65536_15
	ora	(_mbrtoc32_pc32_65536_15 + 1)
	bne	00104$
;../mbrtoc32.c:44: return(mbrtowc(0, s, n, ps));
	pshh
	pula
	sta	_mbrtowc_PARM_2
	stx	(_mbrtowc_PARM_2 + 1)
	lda	*_mbrtoc32_sloc0_1_0
	sta	_mbrtowc_PARM_3
	lda	*(_mbrtoc32_sloc0_1_0 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	*_mbrtoc32_sloc1_1_0
	sta	_mbrtowc_PARM_4
	lda	*(_mbrtoc32_sloc1_1_0 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	clra
	tax
	jmp	_mbrtowc
00104$:
;../mbrtoc32.c:46: ret = mbrtowc(&wc, s, n, ps);
	pshh
	pula
	sta	_mbrtowc_PARM_2
	stx	(_mbrtowc_PARM_2 + 1)
	lda	*_mbrtoc32_sloc0_1_0
	sta	_mbrtowc_PARM_3
	lda	*(_mbrtoc32_sloc0_1_0 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	*_mbrtoc32_sloc1_1_0
	sta	_mbrtowc_PARM_4
	lda	*(_mbrtoc32_sloc1_1_0 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	lda	#_mbrtoc32_wc_65536_16
	ldx	#>_mbrtoc32_wc_65536_16
	jsr	_mbrtowc
	sta	(_mbrtoc32_ret_65536_16 + 1)
	stx	_mbrtoc32_ret_65536_16
;../mbrtoc32.c:48: if(ret <= MB_LEN_MAX)
	lda	#0x04
	sub	(_mbrtoc32_ret_65536_16 + 1)
	clra
	sbc	_mbrtoc32_ret_65536_16
	bcs	00106$
;../mbrtoc32.c:49: *pc32 = wc;
	lda	_mbrtoc32_pc32_65536_15
	psha
	pulh
	ldx	(_mbrtoc32_pc32_65536_15 + 1)
	lda	_mbrtoc32_wc_65536_16
	sta	,x
	lda	(_mbrtoc32_wc_65536_16 + 1)
	sta	1,x
	lda	(_mbrtoc32_wc_65536_16 + 2)
	sta	2,x
	lda	(_mbrtoc32_wc_65536_16 + 3)
	sta	3,x
00106$:
;../mbrtoc32.c:51: return(ret);
	ldx	_mbrtoc32_ret_65536_16
	lda	(_mbrtoc32_ret_65536_16 + 1)
;../mbrtoc32.c:52: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
