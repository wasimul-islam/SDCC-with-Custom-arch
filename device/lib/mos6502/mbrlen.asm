;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrlen
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrlen_PARM_3
	.globl _mbrlen_PARM_2
	.globl _mbrlen
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
_mbrlen_PARM_2:
	.ds 2
_mbrlen_PARM_3:
	.ds 2
_mbrlen_s_65536_9:
	.ds 2
_mbrlen_sps_65536_10:
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
;Allocation info for local variables in function 'mbrlen'
;------------------------------------------------------------
;n                         Allocated with name '_mbrlen_PARM_2'
;ps                        Allocated with name '_mbrlen_PARM_3'
;s                         Allocated with name '_mbrlen_s_65536_9'
;sps                       Allocated with name '_mbrlen_sps_65536_10'
;------------------------------------------------------------
;	../mbrlen.c: 31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrlen:
	sta	_mbrlen_s_65536_9
	stx	(_mbrlen_s_65536_9 + 1)
;	../mbrlen.c: 35: return(mbrtowc(0, s, n, ps ? ps : &sps));
	lda	(_mbrlen_PARM_3 + 1)
	ora	_mbrlen_PARM_3
	beq	00103$
	lda	_mbrlen_PARM_3
	ldx	(_mbrlen_PARM_3 + 1)
	jmp	00104$
00103$:
	lda	#_mbrlen_sps_65536_10
	ldx	#>_mbrlen_sps_65536_10
00104$:
	ldy	_mbrlen_s_65536_9
	sty	_mbrtowc_PARM_2
	ldy	(_mbrlen_s_65536_9 + 1)
	sty	(_mbrtowc_PARM_2 + 1)
	ldy	_mbrlen_PARM_2
	sty	_mbrtowc_PARM_3
	ldy	(_mbrlen_PARM_2 + 1)
	sty	(_mbrtowc_PARM_3 + 1)
	sta	_mbrtowc_PARM_4
	stx	(_mbrtowc_PARM_4 + 1)
	ldx	#0x00
	txa
;	../mbrlen.c: 36: }
	jmp	_mbrtowc
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
