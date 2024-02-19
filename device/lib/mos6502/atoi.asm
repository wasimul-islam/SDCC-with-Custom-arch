;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atoi_sloc0_1_0:
	.ds 2
_atoi_sloc1_1_0:
	.ds 1
_atoi_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atoi_ret_65536_57:
	.ds 2
_atoi_neg_65536_57:
	.ds 1
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;sloc1                     Allocated with name '_atoi_sloc1_1_0'
;sloc2                     Allocated with name '_atoi_sloc2_1_0'
;nptr                      Allocated to registers a x 
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated with name '_atoi_ret_65536_57'
;neg                       Allocated with name '_atoi_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../atoi.c: 34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atoi:
	sta	*_atoi_sloc0_1_0
	stx	*(_atoi_sloc0_1_0 + 1)
;	../atoi.c: 36: int ret = 0;
	ldx	#0x00
	stx	_atoi_ret_65536_57
	stx	(_atoi_ret_65536_57 + 1)
;	../atoi.c: 39: while (isblank (*nptr))
00101$:
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00115$
	cmp	#0x09
	bne	00131$
00115$:
;	../atoi.c: 40: nptr++;
	inc	*_atoi_sloc0_1_0
	bne	00101$
	inc	*(_atoi_sloc0_1_0 + 1)
	jmp	00101$
00131$:
	lda	*_atoi_sloc0_1_0
	ldx	*(_atoi_sloc0_1_0 + 1)
;	../atoi.c: 42: neg = (*nptr == '-');
	sta	*(__TEMP+0)
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
	tay
	lda	*(__TEMP+0)
	cpy	#0x2d
	sta	*(__TEMP+0)
	beq	00165$
	lda	#0x00
	jmp	00164$
00165$:
	lda	#0x01
00164$:
	sta	_atoi_neg_65536_57
	lda	*(__TEMP+0)
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
	cpy	#0x2d
	beq	00104$
	cpy	#0x2b
	bne	00129$
00104$:
;	../atoi.c: 45: nptr++;
	clc
	adc	#0x01
	bcc	00168$
	inx
00168$:
;	../atoi.c: 47: while (isdigit (*nptr))
00129$:
	sta	*_atoi_sloc0_1_0
	stx	*(_atoi_sloc0_1_0 + 1)
00107$:
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcc	00109$
	cmp	#0x39
	beq	00170$
	bcs	00109$
00170$:
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	lda	_atoi_ret_65536_57
	sta	__mulint_PARM_2
	lda	(_atoi_ret_65536_57 + 1)
	sta	(__mulint_PARM_2 + 1)
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
	sta	*_atoi_sloc2_1_0
	stx	*(_atoi_sloc2_1_0 + 1)
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
	inc	*_atoi_sloc0_1_0
	bne	00172$
	inc	*(_atoi_sloc0_1_0 + 1)
00172$:
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00173$
	dex
00173$:
	clc
	adc	*_atoi_sloc2_1_0
	sta	_atoi_ret_65536_57
	txa
	adc	*(_atoi_sloc2_1_0 + 1)
	sta	(_atoi_ret_65536_57 + 1)
	jmp	00107$
00109$:
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	lda	_atoi_neg_65536_57
	beq	00120$
	lda	#0x00
	sec
	sbc	_atoi_ret_65536_57
	pha
	lda	#0x00
	sbc	(_atoi_ret_65536_57 + 1)
	tax
	pla
	rts
00120$:
	lda	_atoi_ret_65536_57
	ldx	(_atoi_ret_65536_57 + 1)
;	../atoi.c: 51: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
