;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module gets
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
	.globl _gets
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_gets_s_65536_11:
	.ds 2
_gets_count_65536_12:
	.ds 2
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_65536_11'
;c                         Allocated to registers a 
;count                     Allocated with name '_gets_count_65536_12'
;------------------------------------------------------------
;../gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gets:
	sta	(_gets_s_65536_11 + 1)
	stx	_gets_s_65536_11
;../gets.c:35: unsigned int count = 0;
	clrh
	clrx
	sthx	_gets_count_65536_12
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	jsr	_getchar
;../gets.c:40: switch(c)
	cbeqa	#0x08,00101$
	cbeqa	#0x0a,00105$
	cbeqa	#0x0d,00105$
	bra	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	lda	_gets_count_65536_12
	ora	(_gets_count_65536_12 + 1)
	beq	00109$
;../gets.c:45: putchar ('\b');
	lda	#0x08
	clrx
	jsr	_putchar
;../gets.c:46: putchar (' ');
	lda	#0x20
	clrx
	jsr	_putchar
;../gets.c:47: putchar ('\b');
	lda	#0x08
	clrx
	jsr	_putchar
;../gets.c:48: --s;
	ldhx	_gets_s_65536_11
	aix	#-1
	sthx	_gets_s_65536_11
;../gets.c:49: --count;
	ldhx	_gets_count_65536_12
	aix	#-1
	sthx	_gets_count_65536_12
;../gets.c:51: break;
	bra	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	lda	#0x0d
	clrx
	jsr	_putchar
;../gets.c:56: putchar ('\n');
	lda	#0x0a
	clrx
	jsr	_putchar
;../gets.c:57: *s = 0;
	ldhx	_gets_s_65536_11
	clra
	sta	,x
;../gets.c:58: return s;
	ldx	_gets_s_65536_11
	lda	(_gets_s_65536_11 + 1)
	rts
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ldhx	_gets_s_65536_11
	sta	,x
	aix	#1
	sthx	_gets_s_65536_11
;../gets.c:62: ++count;
	ldhx	_gets_count_65536_12
	aix	#1
	sthx	_gets_count_65536_12
;../gets.c:63: putchar (c);
	clrx
	jsr	_putchar
;../gets.c:65: }
	bra	00109$
;../gets.c:67: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
