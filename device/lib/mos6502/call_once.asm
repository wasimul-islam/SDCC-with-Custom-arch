;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module call_once
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _call_once_PARM_2
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
_call_once_PARM_2:
	.ds 2
_call_once_flag_65536_36:
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
;Allocation info for local variables in function 'call_once'
;------------------------------------------------------------
;func                      Allocated with name '_call_once_PARM_2'
;flag                      Allocated with name '_call_once_flag_65536_36'
;------------------------------------------------------------
;	../call_once.c: 36: void call_once(_Bool *flag, void (*func)(void))
;	-----------------------------------------
;	 function call_once
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_call_once:
;	../call_once.c: 38: if (!*flag)
	sta	_call_once_flag_65536_36
	stx	(_call_once_flag_65536_36 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00103$
;	../call_once.c: 40: func();
	lda	_call_once_PARM_2
	sta	*(__TEMP+0)
	lda	(_call_once_PARM_2 + 1)
	sta	*(__TEMP+1)
	jsr	__sdcc_indirect_jsr
;	../call_once.c: 41: *flag = true;
	lda	_call_once_flag_65536_36
	sta	*(__DPTR+0)
	lda	(_call_once_flag_65536_36 + 1)
	sta	*(__DPTR+1)
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
