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
;n                         Allocated to stack - sp +5
;ps                        Allocated to stack - sp +7
;s                         Allocated to stack - sp +1
;sps                       Allocated with name '_mbrlen_sps_65536_10'
;------------------------------------------------------------
;	../mbrlen.c: 31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_mbrlen:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../mbrlen.c: 35: return(mbrtowc(0, s, n, ps ? ps : &sps));
	tsx
	lda	0x107,x
	ora	0x108,x
	beq	00103$
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	tax
	lda	*(__TEMP+0)
	jmp	00104$
00103$:
	lda	#_mbrlen_sps_65536_10
	ldx	#>_mbrlen_sps_65536_10
00104$:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	ldx	#0x00
	txa
	jsr	_mbrtowc
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
;	../mbrlen.c: 36: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
