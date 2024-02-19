;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbsinit
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbsinit
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
_mbsinit_ps_65536_9:
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
;Allocation info for local variables in function 'mbsinit'
;------------------------------------------------------------
;ps                        Allocated with name '_mbsinit_ps_65536_9'
;------------------------------------------------------------
;	../mbsinit.c: 31: int mbsinit(const mbstate_t *ps)
;	-----------------------------------------
;	 function mbsinit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbsinit:
	sta	_mbsinit_ps_65536_9
	stx	(_mbsinit_ps_65536_9 + 1)
;	../mbsinit.c: 33: return(!ps || !ps->c[0] && !ps->c[1] && !ps->c[2]);
	lda	(_mbsinit_ps_65536_9 + 1)
	ora	_mbsinit_ps_65536_9
	beq	00104$
	lda	_mbsinit_ps_65536_9
	sta	*(__DPTR+0)
	lda	(_mbsinit_ps_65536_9 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00103$
	lda	_mbsinit_ps_65536_9
	ldx	(_mbsinit_ps_65536_9 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	bne	00103$
	lda	_mbsinit_ps_65536_9
	ldx	(_mbsinit_ps_65536_9 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	beq	00104$
00103$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	../mbsinit.c: 34: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
