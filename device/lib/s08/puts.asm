;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module puts
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _puts
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_puts_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'puts'
;------------------------------------------------------------
;sloc0                     Allocated with name '_puts_sloc0_1_0'
;s                         Allocated to registers 
;------------------------------------------------------------
;../puts.c:31: int puts (const char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_puts:
	sta	*(_puts_sloc0_1_0 + 1)
	stx	*_puts_sloc0_1_0
;../puts.c:33: while (*s)
00103$:
	ldhx	*_puts_sloc0_1_0
	lda	,x
	tsta
	beq	00105$
;../puts.c:34: if (putchar(*s++) == EOF)
	ldhx	*_puts_sloc0_1_0
	aix	#1
	sthx	*_puts_sloc0_1_0
	clrx
	jsr	_putchar
	cmp	#0xff
	bne	00124$
	cpx	#0xff
	beq	00125$
00124$:
	bra	00103$
00125$:
;../puts.c:35: return EOF;
	lda	#0xff
	tax
	rts
00105$:
;../puts.c:36: return putchar('\n');
	lda	#0x0a
	clrx
;../puts.c:37: }
	jmp	_putchar
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
