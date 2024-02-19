;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isspace
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;------------------------------------------------------------
;	../isspace.c: 39: int isspace (int c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isspace:
;	../isspace.c: 42: if((c & 0xff00) != 0)
	sta	*(__TEMP+0)
	txa
	php
	lda	*(__TEMP+0)
	plp
	beq	00102$
;	../isspace.c: 43: return 0;
	lda	#0x00
	tax
	rts
00102$:
;	../isspace.c: 44: return ((unsigned char)c == ' ' || (unsigned char)c == '\t' || (unsigned char)c == '\n' || (unsigned char)c == '\v' || (unsigned char)c == '\f' || (unsigned char)c == '\r');
	cmp	#0x20
	beq	00106$
	cmp	#0x09
	beq	00106$
	cmp	#0x0a
	beq	00106$
	cmp	#0x0b
	beq	00106$
	cmp	#0x0c
	beq	00106$
	cmp	#0x0d
	beq	00106$
	lda	#0x00
	jmp	00107$
00106$:
	lda	#0x01
00107$:
	ldx	#0x00
;	../isspace.c: 48: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
