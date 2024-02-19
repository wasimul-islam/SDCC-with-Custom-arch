;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memalignment
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memalignment
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memalignment_sloc0_1_0:
	.ds 2
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
;Allocation info for local variables in function 'memalignment'
;------------------------------------------------------------
;p                         Allocated to registers a x 
;ip                        Allocated to registers a x 
;sloc0                     Allocated with name '_memalignment_sloc0_1_0'
;------------------------------------------------------------
;	../memalignment.c: 33: size_t memalignment(const void *p)
;	-----------------------------------------
;	 function memalignment
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memalignment:
;	../memalignment.c: 35: intptr_t ip = (intptr_t)p;
;	../memalignment.c: 36: return(ip & -ip);
	pha
	eor	#0xff
	clc
	adc	#0x01
	sta	*_memalignment_sloc0_1_0
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	sta	*(_memalignment_sloc0_1_0 + 1)
	pla
	and	*_memalignment_sloc0_1_0
	sta	*(__TEMP+0)
	txa
	and	*(_memalignment_sloc0_1_0 + 1)
	tax
	lda	*(__TEMP+0)
;	../memalignment.c: 37: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
