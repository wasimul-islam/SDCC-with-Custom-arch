;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module abs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs
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
;Allocation info for local variables in function 'abs'
;------------------------------------------------------------
;j                         Allocated to registers 
;------------------------------------------------------------
;	abs.c: 2: int abs(int j) __naked
;	-----------------------------------------
;	 function abs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_abs:
;	naked function: no prologue.
;	abs.c: 5: __asm__("cpx #0x00");
	cpx	#0x00
;	abs.c: 6: __asm__("bpl skip");
	bpl	skip
;	abs.c: 7: __asm__("___negax::");
	___negax::
;	abs.c: 8: __asm__("sec");
	sec
;	abs.c: 9: __asm__("eor #0xff");
	eor	#0xff
;	abs.c: 10: __asm__("adc #0x00");
	adc	#0x00
;	abs.c: 11: __asm__("pha");
	pha
;	abs.c: 12: __asm__("txa");
	txa
;	abs.c: 13: __asm__("eor #0xff");
	eor	#0xff
;	abs.c: 14: __asm__("adc #0x00");
	adc	#0x00
;	abs.c: 15: __asm__("tax");
	tax
;	abs.c: 16: __asm__("pla");
	pla
;	abs.c: 17: __asm__("skip:");
	skip:
;	abs.c: 18: __asm__("rts");
	rts
;	abs.c: 20: }
;	naked function: no epilogue.
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
