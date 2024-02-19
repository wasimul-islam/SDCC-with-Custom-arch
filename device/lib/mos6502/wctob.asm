;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctob
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctob_PARM_1
	.globl _wctob
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
_wctob_PARM_1:
	.ds 4
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
;Allocation info for local variables in function 'wctob'
;------------------------------------------------------------
;c                         Allocated with name '_wctob_PARM_1'
;------------------------------------------------------------
;	../wctob.c: 35: int wctob(wint_t c)
;	-----------------------------------------
;	 function wctob
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wctob:
;	../wctob.c: 37: if(c & 0xffffff80)
	lda	#0x80
	and	_wctob_PARM_1
	bne	00109$
	lda	(_wctob_PARM_1 + 1)
	bne	00109$
	lda	(_wctob_PARM_1 + 2)
	bne	00109$
	lda	(_wctob_PARM_1 + 3)
00109$:
	beq	00102$
;	../wctob.c: 38: return WEOF;
	lda	#0xff
	tax
	rts
00102$:
;	../wctob.c: 39: return c;
	lda	_wctob_PARM_1
	ldx	(_wctob_PARM_1 + 1)
;	../wctob.c: 40: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
