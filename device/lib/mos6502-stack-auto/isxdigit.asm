;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isxdigit
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isxdigit.c: 34: int isxdigit (int c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_isxdigit:
	pha
;	../isxdigit.c: 37: if((c & 0xff00) != 0)
	sta	*(__TEMP+0)
	txa
	php
	lda	*(__TEMP+0)
	plp
	beq	00102$
;	../isxdigit.c: 38: return 0;
	lda	#0x00
	tax
	jmp	00103$
00102$:
;	../isxdigit.c: 39: return ((unsigned char)c >= '0' && (unsigned char)c <= '9' || (unsigned char)c >= 'a' && (unsigned char)c <= 'f' || (unsigned char)c >= 'A' && (unsigned char)c <= 'F');
	cmp	#0x30
	bcc	00113$
	cmp	#0x39
	beq	00106$
	bcc	00106$
00113$:
	cmp	#0x61
	bcc	00110$
	cmp	#0x66
	beq	00106$
	bcc	00106$
00110$:
	cmp	#0x41
	bcc	00105$
	cmp	#0x46
	beq	00106$
	bcc	00106$
00105$:
	lda	#0x00
	jmp	00107$
00106$:
	lda	#0x01
00107$:
	ldx	#0x00
00103$:
;	../isxdigit.c: 43: }
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
