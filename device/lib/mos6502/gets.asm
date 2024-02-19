;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module gets
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
	.globl _putchar
	.globl _getchar
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
_gets_s_65536_11:
	.ds 2
_gets_count_65536_12:
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_65536_11'
;c                         Allocated to registers a 
;count                     Allocated with name '_gets_count_65536_12'
;------------------------------------------------------------
;	../gets.c: 32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gets:
	sta	_gets_s_65536_11
	stx	(_gets_s_65536_11 + 1)
;	../gets.c: 35: unsigned int count = 0;
	ldx	#0x00
	stx	_gets_count_65536_12
	stx	(_gets_count_65536_12 + 1)
;	../gets.c: 37: while (1)
00109$:
;	../gets.c: 39: c = getchar ();
	jsr	_getchar
;	../gets.c: 40: switch(c)
	cmp	#0x08
	beq	00101$
	cmp	#0x0a
	beq	00105$
	cmp	#0x0d
	beq	00105$
	jmp	00106$
;	../gets.c: 42: case '\b': /* backspace */
00101$:
;	../gets.c: 43: if (count)
	lda	(_gets_count_65536_12 + 1)
	ora	_gets_count_65536_12
	beq	00109$
;	../gets.c: 45: putchar ('\b');
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	../gets.c: 46: putchar (' ');
	ldx	#0x00
	lda	#0x20
	jsr	_putchar
;	../gets.c: 47: putchar ('\b');
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	../gets.c: 48: --s;
	sec
	lda	_gets_s_65536_11
	sbc	#0x01
	sta	_gets_s_65536_11
	bcs	00137$
	dec	(_gets_s_65536_11 + 1)
00137$:
;	../gets.c: 49: --count;
	sec
	lda	_gets_count_65536_12
	sbc	#0x01
	sta	_gets_count_65536_12
	bcs	00109$
	dec	(_gets_count_65536_12 + 1)
;	../gets.c: 51: break;
	jmp	00109$
;	../gets.c: 54: case '\r': /* CR or LF */
00105$:
;	../gets.c: 55: putchar ('\r');
	ldx	#0x00
	lda	#0x0d
	jsr	_putchar
;	../gets.c: 56: putchar ('\n');
	ldx	#0x00
	lda	#0x0a
	jsr	_putchar
;	../gets.c: 57: *s = 0;
	lda	_gets_s_65536_11
	sta	*(__DPTR+0)
	lda	(_gets_s_65536_11 + 1)
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../gets.c: 58: return s;
	ldx	(_gets_s_65536_11 + 1)
	lda	_gets_s_65536_11
	rts
;	../gets.c: 60: default:
00106$:
;	../gets.c: 61: *s++ = c;
	sta	*(__TEMP+0)
	lda	_gets_s_65536_11
	sta	*(__DPTR+0)
	lda	(_gets_s_65536_11 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(__TEMP+0)
	inc	_gets_s_65536_11
	bne	00139$
	inc	(_gets_s_65536_11 + 1)
00139$:
;	../gets.c: 62: ++count;
	inc	_gets_count_65536_12
	bne	00140$
	inc	(_gets_count_65536_12 + 1)
00140$:
;	../gets.c: 63: putchar (c);
	ldx	#0x00
	jsr	_putchar
;	../gets.c: 65: }
	jmp	00109$
;	../gets.c: 67: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
