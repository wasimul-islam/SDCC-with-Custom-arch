;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module call_once
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _call_once
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
;Allocation info for local variables in function 'call_once'
;------------------------------------------------------------
;func                      Allocated to stack - sp +3
;flag                      Allocated to registers a x 
;------------------------------------------------------------
;	../call_once.c: 36: void call_once(_Bool *flag, void (*func)(void))
;	-----------------------------------------
;	 function call_once
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_call_once:
;	../call_once.c: 38: if (!*flag)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	cpy	#0x00
	bne	00103$
;	../call_once.c: 40: func();
	pha
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	txa
	pha
	tsx
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	sta	*(__TEMP+1)
	pla
	tax
	pla
	jsr	__sdcc_indirect_jsr
	pla
	tax
	pla
;	../call_once.c: 41: *flag = true;
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x01
	ldy	#0x00
	sta	[__DPTR],y
00103$:
;	../call_once.c: 43: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
