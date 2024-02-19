;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isalnum
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
	.globl _isalnum
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
;Allocation info for local variables in function 'isalnum'
;------------------------------------------------------------
;c                         Allocated to stack - sp +2
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isalnum.c: 37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 3 bytes.
_isalnum:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	tsx
	lda	0x103,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x102,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_isalpha
	cmp	#0x00
	bne	00119$
	cpx	#0x00
00119$:
	bne	00105$
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	tsx
	lda	0x102,x
	cmp	#0x30
	bcc	00109$
	cmp	#0x39
	beq	00105$
	bcc	00105$
00109$:
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	lda	#0x00
	jmp	00106$
00105$:
	lda	#0x01
00106$:
	ldx	#0x00
;	../isalnum.c: 40: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
