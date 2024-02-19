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
_isalnum_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isalnum_c_65536_21:
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
;Allocation info for local variables in function 'isalnum'
;------------------------------------------------------------
;sloc0                     Allocated with name '_isalnum_sloc0_1_0'
;c                         Allocated with name '_isalnum_c_65536_21'
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../isalnum.c: 37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isalnum:
	sta	_isalnum_c_65536_21
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	stx	(_isalnum_c_65536_21 + 1)
	lda	_isalnum_c_65536_21
	jsr	_isalpha
	cmp	#0x00
	bne	00119$
	cpx	#0x00
00119$:
	bne	00105$
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	lda	_isalnum_c_65536_21
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
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
