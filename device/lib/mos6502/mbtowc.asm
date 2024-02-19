;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mbtowc_sloc0_1_0:
	.ds 2
_mbtowc_sloc1_1_0:
	.ds 2
_mbtowc_sloc2_1_0:
	.ds 2
_mbtowc_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbtowc_PARM_2:
	.ds 2
_mbtowc_PARM_3:
	.ds 2
_mbtowc_pwc_65536_36:
	.ds 2
_mbtowc_codepoint_65536_37:
	.ds 4
_mbtowc_seqlen_65536_37:
	.ds 1
_mbtowc_first_byte_65536_37:
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbtowc_PARM_2'
;n                         Allocated with name '_mbtowc_PARM_3'
;pwc                       Allocated with name '_mbtowc_pwc_65536_36'
;codepoint                 Allocated with name '_mbtowc_codepoint_65536_37'
;seqlen                    Allocated with name '_mbtowc_seqlen_65536_37'
;i                         Allocated to registers 
;first_byte                Allocated with name '_mbtowc_first_byte_65536_37'
;sloc0                     Allocated with name '_mbtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbtowc_sloc3_1_0'
;------------------------------------------------------------
;	../mbtowc.c: 31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbtowc:
	sta	_mbtowc_pwc_65536_36
	stx	(_mbtowc_pwc_65536_36 + 1)
;	../mbtowc.c: 37: if(!s)
	lda	(_mbtowc_PARM_2 + 1)
	ora	_mbtowc_PARM_2
	bne	00102$
;	../mbtowc.c: 38: return(0);
	lda	#0x00
	tax
	rts
00102$:
;	../mbtowc.c: 40: seqlen = 1;
	ldx	#0x01
	stx	_mbtowc_seqlen_65536_37
;	../mbtowc.c: 41: first_byte = *s;
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc0_1_0
	lda	(_mbtowc_PARM_2 + 1)
	sta	*(_mbtowc_sloc0_1_0 + 1)
	ldy	#0x00
	lda	[*_mbtowc_sloc0_1_0],y
	sta	_mbtowc_first_byte_65536_37
;	../mbtowc.c: 43: if(first_byte & 0x80)
	lda	#0x80
	and	_mbtowc_first_byte_65536_37
	beq	00107$
;	../mbtowc.c: 45: while (first_byte & (0x80 >> seqlen))
	iny
00103$:
	tya
	tax
	lda	#0x80
	sta	*_mbtowc_sloc1_1_0
	lda	#0x00
	sta	*(_mbtowc_sloc1_1_0 + 1)
	cpx	#0x00
	beq	00190$
00189$:
	pha
	lda	*(_mbtowc_sloc1_1_0 + 1)
	cmp	#0x80
	pla
	ror	*(_mbtowc_sloc1_1_0 + 1)
	ror	*_mbtowc_sloc1_1_0
	dex
	bne	00189$
00190$:
	lda	_mbtowc_first_byte_65536_37
	ldx	#0x00
	and	*_mbtowc_sloc1_1_0
	bne	00191$
	lda	*(_mbtowc_sloc1_1_0 + 1)
	stx	*(__TEMP+0)
	and	*(__TEMP+0)
00191$:
	beq	00143$
;	../mbtowc.c: 46: seqlen++;
	iny
	jmp	00103$
00143$:
	sty	_mbtowc_seqlen_65536_37
;	../mbtowc.c: 47: first_byte &= (0xff >> (seqlen + 1));
	iny
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00194$
00193$:
	pha
	txa
	cmp	#0x80
	ror	a
	tax
	pla
	ror	a
	dey
	bne	00193$
00194$:
	and	_mbtowc_first_byte_65536_37
	sta	_mbtowc_first_byte_65536_37
00107$:
;	../mbtowc.c: 50: if(seqlen > 4 || n < seqlen)
	lda	_mbtowc_seqlen_65536_37
	cmp	#0x04
	beq	00195$
	bcs	00108$
00195$:
	lda	_mbtowc_seqlen_65536_37
	ldx	#0x00
	sta	*(__TEMP+0)
	lda	_mbtowc_PARM_3
	sec
	sbc	*(__TEMP+0)
	lda	(_mbtowc_PARM_3 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	bcs	00136$
00108$:
;	../mbtowc.c: 51: return(-1);
	lda	#0xff
	tax
	rts
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
00136$:
	ldx	#0x01
	stx	*_mbtowc_sloc1_1_0
00121$:
	lda	*_mbtowc_sloc1_1_0
	cmp	_mbtowc_seqlen_65536_37
	bcs	00113$
;	../mbtowc.c: 54: if((s[i] & 0xc0) != 0x80)
	lda	*_mbtowc_sloc0_1_0
	clc
	adc	*_mbtowc_sloc1_1_0
	sta	*_mbtowc_sloc2_1_0
	lda	*(_mbtowc_sloc0_1_0 + 1)
	adc	#0x00
	sta	*(_mbtowc_sloc2_1_0 + 1)
	ldy	#0x00
	lda	[*_mbtowc_sloc2_1_0],y
	ldx	#0x00
	and	#0xc0
	cmp	#0x80
	bne	00200$
	cpx	#0x00
	beq	00122$
00200$:
;	../mbtowc.c: 55: return(-1);
	lda	#0xff
	tax
	rts
00122$:
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
	inc	*_mbtowc_sloc1_1_0
	jmp	00121$
00113$:
;	../mbtowc.c: 57: codepoint = first_byte;
	lda	_mbtowc_first_byte_65536_37
	sta	_mbtowc_codepoint_65536_37
	ldx	#0x00
	stx	(_mbtowc_codepoint_65536_37 + 1)
	stx	(_mbtowc_codepoint_65536_37 + 2)
	stx	(_mbtowc_codepoint_65536_37 + 3)
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	lda	*_mbtowc_sloc0_1_0
	clc
	adc	#0x01
	sta	_mbtowc_PARM_2
	lda	*(_mbtowc_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_mbtowc_PARM_2 + 1)
	lda	_mbtowc_seqlen_65536_37
	sec
	sbc	#0x01
	sta	*_mbtowc_sloc2_1_0
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc1_1_0
	lda	(_mbtowc_PARM_2 + 1)
	sta	*(_mbtowc_sloc1_1_0 + 1)
00124$:
	lda	*_mbtowc_sloc2_1_0
	bne	00201$
	jmp	00114$
00201$:
;	../mbtowc.c: 61: codepoint <<= 6;
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	asl	_mbtowc_codepoint_65536_37
	rol	(_mbtowc_codepoint_65536_37 + 1)
	rol	(_mbtowc_codepoint_65536_37 + 2)
	rol	(_mbtowc_codepoint_65536_37 + 3)
	lda	(_mbtowc_codepoint_65536_37 + 3)
;	../mbtowc.c: 62: codepoint |= (*s & 0x3f);
	ldy	#0x00
	lda	[*_mbtowc_sloc1_1_0],y
	ldx	#0x00
	and	#0x3f
	sta	*_mbtowc_sloc3_1_0
	stx	*(_mbtowc_sloc3_1_0 + 1)
	txa
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_mbtowc_sloc3_1_0 + 2)
	sta	*(_mbtowc_sloc3_1_0 + 3)
	lda	_mbtowc_codepoint_65536_37
	ora	*_mbtowc_sloc3_1_0
	sta	_mbtowc_codepoint_65536_37
	lda	(_mbtowc_codepoint_65536_37 + 1)
	ora	*(_mbtowc_sloc3_1_0 + 1)
	sta	(_mbtowc_codepoint_65536_37 + 1)
	lda	(_mbtowc_codepoint_65536_37 + 2)
	ora	*(_mbtowc_sloc3_1_0 + 2)
	sta	(_mbtowc_codepoint_65536_37 + 2)
	lda	(_mbtowc_codepoint_65536_37 + 3)
	ora	*(_mbtowc_sloc3_1_0 + 3)
	sta	(_mbtowc_codepoint_65536_37 + 3)
;	../mbtowc.c: 63: s++;
	inc	*_mbtowc_sloc1_1_0
	bne	00202$
	inc	*(_mbtowc_sloc1_1_0 + 1)
00202$:
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	dec	*_mbtowc_sloc2_1_0
	jmp	00124$
00114$:
;	../mbtowc.c: 66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	lda	(_mbtowc_codepoint_65536_37 + 1)
	sec
	sbc	#0xd8
	lda	(_mbtowc_codepoint_65536_37 + 2)
	sbc	#0x00
	lda	(_mbtowc_codepoint_65536_37 + 3)
	sbc	#0x00
	bcc	00116$
	lda	#0xff
	sec
	sbc	_mbtowc_codepoint_65536_37
	lda	#0xdf
	sbc	(_mbtowc_codepoint_65536_37 + 1)
	lda	#0x00
	sbc	(_mbtowc_codepoint_65536_37 + 2)
	lda	#0x00
	sbc	(_mbtowc_codepoint_65536_37 + 3)
	bcc	00116$
;	../mbtowc.c: 67: return(-1);
	lda	#0xff
	tax
	rts
00116$:
;	../mbtowc.c: 69: if(pwc)
	lda	(_mbtowc_pwc_65536_36 + 1)
	ora	_mbtowc_pwc_65536_36
	beq	00119$
;	../mbtowc.c: 70: *pwc = codepoint;
	lda	_mbtowc_pwc_65536_36
	sta	*(__DPTR+0)
	lda	(_mbtowc_pwc_65536_36 + 1)
	sta	*(__DPTR+1)
	lda	_mbtowc_codepoint_65536_37
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_mbtowc_codepoint_65536_37 + 1)
	iny
	sta	[__DPTR],y
	lda	(_mbtowc_codepoint_65536_37 + 2)
	iny
	sta	[__DPTR],y
	lda	(_mbtowc_codepoint_65536_37 + 3)
	iny
	sta	[__DPTR],y
00119$:
;	../mbtowc.c: 71: return(codepoint ? seqlen : 0);
	lda	(_mbtowc_codepoint_65536_37 + 3)
	ora	(_mbtowc_codepoint_65536_37 + 2)
	ora	(_mbtowc_codepoint_65536_37 + 1)
	ora	_mbtowc_codepoint_65536_37
	beq	00128$
	lda	_mbtowc_seqlen_65536_37
	ldx	#0x00
	rts
00128$:
	lda	#0x00
	tax
;	../mbtowc.c: 72: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
