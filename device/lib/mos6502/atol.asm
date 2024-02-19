;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atol
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atol_sloc0_1_0:
	.ds 2
_atol_sloc1_1_0:
	.ds 1
_atol_sloc2_1_0:
	.ds 4
_atol_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atol_ret_65536_57:
	.ds 4
_atol_neg_65536_57:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;sloc2                     Allocated with name '_atol_sloc2_1_0'
;sloc3                     Allocated with name '_atol_sloc3_1_0'
;nptr                      Allocated to registers a x 
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated with name '_atol_ret_65536_57'
;neg                       Allocated with name '_atol_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../atol.c: 34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atol:
	sta	*_atol_sloc0_1_0
	stx	*(_atol_sloc0_1_0 + 1)
;	../atol.c: 36: long int ret = 0;
	ldx	#0x00
	stx	_atol_ret_65536_57
	stx	(_atol_ret_65536_57 + 1)
	stx	(_atol_ret_65536_57 + 2)
	stx	(_atol_ret_65536_57 + 3)
;	../atol.c: 39: while (isblank (*nptr))
00101$:
	ldy	#0x00
	lda	[*_atol_sloc0_1_0],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00115$
	cmp	#0x09
	bne	00131$
00115$:
;	../atol.c: 40: nptr++;
	inc	*_atol_sloc0_1_0
	bne	00101$
	inc	*(_atol_sloc0_1_0 + 1)
	jmp	00101$
00131$:
	lda	*_atol_sloc0_1_0
	ldx	*(_atol_sloc0_1_0 + 1)
;	../atol.c: 42: neg = (*nptr == '-');
	sta	*(__TEMP+0)
	ldy	#0x00
	lda	[*_atol_sloc0_1_0],y
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
	sta	_atol_neg_65536_57
	lda	*(__TEMP+0)
;	../atol.c: 44: if (*nptr == '-' || *nptr == '+')
	cpy	#0x2d
	beq	00104$
	cpy	#0x2b
	bne	00129$
00104$:
;	../atol.c: 45: nptr++;
	clc
	adc	#0x01
	bcc	00168$
	inx
00168$:
;	../atol.c: 47: while (isdigit (*nptr))
00129$:
	sta	*_atol_sloc0_1_0
	stx	*(_atol_sloc0_1_0 + 1)
00107$:
	ldy	#0x00
	lda	[*_atol_sloc0_1_0],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00169$
	jmp	00109$
00169$:
	cmp	#0x39
	beq	00170$
	bcs	00109$
00170$:
;	../atol.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	ldx	#0x0a
	stx	__mullong_PARM_1
	sty	(__mullong_PARM_1 + 1)
	sty	(__mullong_PARM_1 + 2)
	sty	(__mullong_PARM_1 + 3)
	lda	_atol_ret_65536_57
	sta	__mullong_PARM_2
	lda	(_atol_ret_65536_57 + 1)
	sta	(__mullong_PARM_2 + 1)
	lda	(_atol_ret_65536_57 + 2)
	sta	(__mullong_PARM_2 + 2)
	lda	(_atol_ret_65536_57 + 3)
	sta	(__mullong_PARM_2 + 3)
	jsr	__mullong
	sta	*_atol_sloc2_1_0
	stx	*(_atol_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atol_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atol_sloc2_1_0 + 3)
	ldy	#0x00
	lda	[*_atol_sloc0_1_0],y
	inc	*_atol_sloc0_1_0
	bne	00172$
	inc	*(_atol_sloc0_1_0 + 1)
00172$:
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00173$
	dex
00173$:
	sta	*_atol_sloc3_1_0
	stx	*(_atol_sloc3_1_0 + 1)
	txa
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_atol_sloc3_1_0 + 2)
	sta	*(_atol_sloc3_1_0 + 3)
	lda	*_atol_sloc2_1_0
	clc
	adc	*_atol_sloc3_1_0
	sta	_atol_ret_65536_57
	lda	*(_atol_sloc2_1_0 + 1)
	adc	*(_atol_sloc3_1_0 + 1)
	sta	(_atol_ret_65536_57 + 1)
	lda	*(_atol_sloc2_1_0 + 2)
	adc	*(_atol_sloc3_1_0 + 2)
	sta	(_atol_ret_65536_57 + 2)
	lda	*(_atol_sloc2_1_0 + 3)
	adc	*(_atol_sloc3_1_0 + 3)
	sta	(_atol_ret_65536_57 + 3)
	jmp	00107$
00109$:
;	../atol.c: 50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	lda	_atol_neg_65536_57
	beq	00120$
	lda	#0x00
	sec
	sbc	_atol_ret_65536_57
	sta	*_atol_sloc3_1_0
	lda	#0x00
	sbc	(_atol_ret_65536_57 + 1)
	sta	*(_atol_sloc3_1_0 + 1)
	lda	#0x00
	sbc	(_atol_ret_65536_57 + 2)
	sta	*(_atol_sloc3_1_0 + 2)
	lda	#0x00
	sbc	(_atol_ret_65536_57 + 3)
	sta	*(_atol_sloc3_1_0 + 3)
	jmp	00121$
00120$:
	lda	_atol_ret_65536_57
	sta	*_atol_sloc3_1_0
	lda	(_atol_ret_65536_57 + 1)
	sta	*(_atol_sloc3_1_0 + 1)
	lda	(_atol_ret_65536_57 + 2)
	sta	*(_atol_sloc3_1_0 + 2)
	lda	(_atol_ret_65536_57 + 3)
	sta	*(_atol_sloc3_1_0 + 3)
00121$:
	lda	*(_atol_sloc3_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_atol_sloc3_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_atol_sloc3_1_0 + 1)
	lda	*_atol_sloc3_1_0
;	../atol.c: 51: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
