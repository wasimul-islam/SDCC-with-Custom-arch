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
_puts_sloc0_1_0:
	.ds 2
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
;sloc0                     Allocated with name '_puts_sloc0_1_0'
;s                         Allocated to registers 
;------------------------------------------------------------
;	../puts.c: 31: int puts (const char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_puts:
	sta	*_puts_sloc0_1_0
	stx	*(_puts_sloc0_1_0 + 1)
;	../puts.c: 33: while (*s)
00103$:
	ldy	#0x00
	lda	[*_puts_sloc0_1_0],y
	beq	00105$
;	../puts.c: 34: if (putchar(*s++) == EOF)
	inc	*_puts_sloc0_1_0
	bne	00121$
	inc	*(_puts_sloc0_1_0 + 1)
00121$:
	ldx	#0x00
	jsr	_putchar
	cmp	#0xff
	bne	00103$
	cpx	#0xff
	bne	00103$
;	../puts.c: 35: return EOF;
	lda	#0xff
	tax
	rts
00105$:
;	../puts.c: 36: return putchar('\n');
	ldx	#0x00
	lda	#0x0a
;	../puts.c: 37: }
	jmp	_putchar
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
