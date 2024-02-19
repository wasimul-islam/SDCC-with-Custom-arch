;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
	.globl _mbrtoc32
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;s                         Allocated with name '_mbrtoc32_PARM_2'
;n                         Allocated with name '_mbrtoc32_PARM_3'
;ps                        Allocated with name '_mbrtoc32_PARM_4'
;pc32                      Allocated with name '_mbrtoc32_pc32_65536_15'
;wc                        Allocated with name '_mbrtoc32_wc_65536_16'
;ret                       Allocated with name '_mbrtoc32_ret_65536_16'
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
;------------------------------------------------------------
;	../mbrtoc32.c: 34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc32:
	sta	_mbrtoc32_pc32_65536_15
	stx	(_mbrtoc32_pc32_65536_15 + 1)
;	../mbrtoc32.c: 40: if(!ps)
	lda	(_mbrtoc32_PARM_4 + 1)
	ora	_mbrtoc32_PARM_4
	bne	00102$
;	../mbrtoc32.c: 41: ps = &sps;
	lda	#_mbrtoc32_sps_65536_16
	sta	_mbrtoc32_PARM_4
	lda	#>_mbrtoc32_sps_65536_16
	sta	(_mbrtoc32_PARM_4 + 1)
00102$:
;	../mbrtoc32.c: 43: if(!pc32)
	lda	(_mbrtoc32_pc32_65536_15 + 1)
	ora	_mbrtoc32_pc32_65536_15
	bne	00104$
;	../mbrtoc32.c: 44: return(mbrtowc(0, s, n, ps));
	lda	_mbrtoc32_PARM_2
	sta	_mbrtowc_PARM_2
	lda	(_mbrtoc32_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc32_PARM_3
	sta	_mbrtowc_PARM_3
	lda	(_mbrtoc32_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc32_PARM_4
	sta	_mbrtowc_PARM_4
	lda	(_mbrtoc32_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	ldx	#0x00
	txa
	jmp	_mbrtowc
00104$:
;	../mbrtoc32.c: 46: ret = mbrtowc(&wc, s, n, ps);
	lda	_mbrtoc32_PARM_2
	sta	_mbrtowc_PARM_2
	lda	(_mbrtoc32_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc32_PARM_3
	sta	_mbrtowc_PARM_3
	lda	(_mbrtoc32_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc32_PARM_4
	sta	_mbrtowc_PARM_4
	lda	(_mbrtoc32_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	ldx	#>_mbrtoc32_wc_65536_16
	lda	#_mbrtoc32_wc_65536_16
	jsr	_mbrtowc
	sta	_mbrtoc32_ret_65536_16
	stx	(_mbrtoc32_ret_65536_16 + 1)
;	../mbrtoc32.c: 48: if(ret <= MB_LEN_MAX)
	lda	#0x04
	sec
	sbc	_mbrtoc32_ret_65536_16
	lda	#0x00
	sbc	(_mbrtoc32_ret_65536_16 + 1)
	bcc	00106$
;	../mbrtoc32.c: 49: *pc32 = wc;
	lda	_mbrtoc32_pc32_65536_15
	sta	*(__DPTR+0)
	lda	(_mbrtoc32_pc32_65536_15 + 1)
	sta	*(__DPTR+1)
	lda	_mbrtoc32_wc_65536_16
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_mbrtoc32_wc_65536_16 + 1)
	iny
	sta	[__DPTR],y
	lda	(_mbrtoc32_wc_65536_16 + 2)
	iny
	sta	[__DPTR],y
	lda	(_mbrtoc32_wc_65536_16 + 3)
	iny
	sta	[__DPTR],y
00106$:
;	../mbrtoc32.c: 51: return(ret);
	ldx	(_mbrtoc32_ret_65536_16 + 1)
	lda	_mbrtoc32_ret_65536_16
;	../mbrtoc32.c: 52: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
