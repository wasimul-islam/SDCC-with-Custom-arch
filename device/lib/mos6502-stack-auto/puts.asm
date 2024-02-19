;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module puts
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _puts
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
;Allocation info for local variables in function 'puts'
;------------------------------------------------------------
;s                         Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../puts.c: 31: int puts (const char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_puts:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../puts.c: 33: while (*s)
00103$:
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00105$
;	../puts.c: 34: if (putchar(*s++) == EOF)
	tay
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	tya
	ldx	#0x00
	jsr	_putchar
	cmp	#0xff
	bne	00103$
	cpx	#0xff
	bne	00103$
;	../puts.c: 35: return EOF;
	lda	#0xff
	tax
	jmp	00106$
00105$:
;	../puts.c: 36: return putchar('\n');
	ldx	#0x00
	lda	#0x0a
	jsr	_putchar
00106$:
;	../puts.c: 37: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
