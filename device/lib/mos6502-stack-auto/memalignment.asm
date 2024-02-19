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
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../memalignment.c: 33: size_t memalignment(const void *p)
;	-----------------------------------------
;	 function memalignment
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_memalignment:
	pha
	pha
;	../memalignment.c: 35: intptr_t ip = (intptr_t)p;
;	../memalignment.c: 36: return(ip & -ip);
	pha
	eor	#0xff
	clc
	adc	#0x01
	stx	*(__TEMP+0)
	tsx
	sta	0x102,x
	ldx	*(__TEMP+0)
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tsx
	sta	0x103,x
	pla
	stx	*(__TEMP+0)
	and	0x102,x
	php
	ldx	*(__TEMP+0)
	plp
	sta	*(__TEMP+0)
	txa
	stx	*(__TEMP+1)
	tsx
	and	0x102,x
	php
	ldx	*(__TEMP+1)
	plp
	tax
;	../memalignment.c: 37: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
