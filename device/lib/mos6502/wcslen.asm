;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcslen
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcslen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcslen_n_65536_10:
	.ds 2
_wcslen_sloc0_1_0:
	.ds 2
_wcslen_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;Allocation info for local variables in function 'wcslen'
;------------------------------------------------------------
;s                         Allocated to registers 
;n                         Allocated with name '_wcslen_n_65536_10'
;sloc0                     Allocated with name '_wcslen_sloc0_1_0'
;sloc1                     Allocated with name '_wcslen_sloc1_1_0'
;------------------------------------------------------------
;	../wcslen.c: 31: size_t wcslen(const wchar_t *s)
;	-----------------------------------------
;	 function wcslen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcslen:
	sta	*_wcslen_sloc0_1_0
	stx	*(_wcslen_sloc0_1_0 + 1)
;	../wcslen.c: 34: while (*s)
	ldx	#0x00
	stx	*_wcslen_n_65536_10
	stx	*(_wcslen_n_65536_10 + 1)
00101$:
	ldy	#0x00
	lda	[*_wcslen_sloc0_1_0],y
	sta	*_wcslen_sloc1_1_0
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 1)
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 2)
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 3)
	ora	*(_wcslen_sloc1_1_0 + 2)
	ora	*(_wcslen_sloc1_1_0 + 1)
	ora	*_wcslen_sloc1_1_0
	beq	00103$
;	../wcslen.c: 36: n++;
	inc	*_wcslen_n_65536_10
	bne	00116$
	inc	*(_wcslen_n_65536_10 + 1)
00116$:
;	../wcslen.c: 37: s++;
	lda	*_wcslen_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcslen_sloc0_1_0
	bcc	00101$
	inc	*(_wcslen_sloc0_1_0 + 1)
	jmp	00101$
00103$:
;	../wcslen.c: 40: return n;
	ldx	*(_wcslen_n_65536_10 + 1)
	lda	*_wcslen_n_65536_10
;	../wcslen.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
