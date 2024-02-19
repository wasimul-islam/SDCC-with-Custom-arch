;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbrtowc_sloc0_1_0:
	.ds 2
_mbrtowc_sloc1_1_0:
	.ds 2
_mbrtowc_sloc2_1_0:
	.ds 2
_mbrtowc_sloc3_1_0:
	.ds 2
_mbrtowc_sloc4_1_0:
	.ds 2
_mbrtowc_sloc5_1_0:
	.ds 2
_mbrtowc_sloc6_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbrtowc_PARM_2:
	.ds 2
_mbrtowc_PARM_3:
	.ds 2
_mbrtowc_PARM_4:
	.ds 2
_mbrtowc_pwc_65536_9:
	.ds 2
_mbrtowc_first_byte_65536_10:
	.ds 1
_mbrtowc_mbseq_65536_10:
	.ds 4
_mbrtowc_codepoint_65536_10:
	.ds 4
_mbrtowc_i_65536_10:
	.ds 1
_mbrtowc_sps_65536_10:
	.ds 3
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbrtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbrtowc_sloc3_1_0'
;sloc4                     Allocated with name '_mbrtowc_sloc4_1_0'
;sloc5                     Allocated with name '_mbrtowc_sloc5_1_0'
;sloc6                     Allocated with name '_mbrtowc_sloc6_1_0'
;s                         Allocated with name '_mbrtowc_PARM_2'
;n                         Allocated with name '_mbrtowc_PARM_3'
;ps                        Allocated with name '_mbrtowc_PARM_4'
;pwc                       Allocated with name '_mbrtowc_pwc_65536_9'
;first_byte                Allocated with name '_mbrtowc_first_byte_65536_10'
;seqlen                    Allocated to registers 
;mbseq                     Allocated with name '_mbrtowc_mbseq_65536_10'
;codepoint                 Allocated with name '_mbrtowc_codepoint_65536_10'
;i                         Allocated with name '_mbrtowc_i_65536_10'
;j                         Allocated to registers 
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;------------------------------------------------------------
;	../mbrtowc.c: 32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtowc:
	sta	_mbrtowc_pwc_65536_9
	stx	(_mbrtowc_pwc_65536_9 + 1)
;	../mbrtowc.c: 41: if(!s)
	lda	(_mbrtowc_PARM_2 + 1)
	ora	_mbrtowc_PARM_2
	bne	00102$
;	../mbrtowc.c: 42: return(mbrtowc(0, "", 1, ps));
	lda	#___str_0
	sta	_mbrtowc_PARM_2
	lda	#>___str_0
	sta	(_mbrtowc_PARM_2 + 1)
	ldx	#0x01
	stx	_mbrtowc_PARM_3
	dex
	stx	(_mbrtowc_PARM_3 + 1)
	txa
	jmp	_mbrtowc
00102$:
;	../mbrtowc.c: 43: if(!n)
	lda	(_mbrtowc_PARM_3 + 1)
	ora	_mbrtowc_PARM_3
	bne	00280$
	jmp	00128$
00280$:
;	../mbrtowc.c: 45: if(!ps)
	lda	(_mbrtowc_PARM_4 + 1)
	ora	_mbrtowc_PARM_4
	bne	00106$
;	../mbrtowc.c: 47: ps = &sps;
	lda	#_mbrtowc_sps_65536_10
	sta	_mbrtowc_PARM_4
	lda	#>_mbrtowc_sps_65536_10
	sta	(_mbrtowc_PARM_4 + 1)
00106$:
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	lda	_mbrtowc_PARM_4
	sta	*_mbrtowc_sloc0_1_0
	lda	(_mbrtowc_PARM_4 + 1)
	sta	*(_mbrtowc_sloc0_1_0 + 1)
	ldx	#0x00
00131$:
	txa
	clc
	adc	*_mbrtowc_sloc0_1_0
	sta	*_mbrtowc_sloc1_1_0
	lda	#0x00
	adc	*(_mbrtowc_sloc0_1_0 + 1)
	sta	*(_mbrtowc_sloc1_1_0 + 1)
	ldy	#0x00
	lda	[*_mbrtowc_sloc1_1_0],y
	beq	00174$
	cpx	#0x03
	bcs	00174$
;	../mbrtowc.c: 51: mbseq[i] = ps->c[i];
	stx	*_mbrtowc_sloc1_1_0
	sty	*(_mbrtowc_sloc1_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	clc
	lda	*_mbrtowc_sloc1_1_0
	adc	#<(_mbrtowc_mbseq_65536_10+0)
	sta	*(__DPTR+0)
	lda	*(_mbrtowc_sloc1_1_0 + 1)
	adc	#>(_mbrtowc_mbseq_65536_10+0)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	inx
	jmp	00131$
00174$:
	stx	_mbrtowc_i_65536_10
;	../mbrtowc.c: 53: seqlen = 1;
	ldx	#0x01
	stx	*_mbrtowc_sloc1_1_0
;	../mbrtowc.c: 54: first_byte = ps->c[0] ? ps->c[0] : *s;
	lda	_mbrtowc_PARM_4
	sta	*(__DPTR+0)
	lda	(_mbrtowc_PARM_4 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00148$
	lda	_mbrtowc_PARM_2
	sta	*(__DPTR+0)
	lda	(_mbrtowc_PARM_2 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
00148$:
	sta	_mbrtowc_first_byte_65536_10
;	../mbrtowc.c: 56: if(first_byte & 0x80)
	lda	#0x80
	and	_mbrtowc_first_byte_65536_10
	beq	00112$
;	../mbrtowc.c: 58: while (first_byte & (0x80 >> seqlen))
	ldy	#0x01
00108$:
	tya
	tax
	lda	#0x80
	sta	*_mbrtowc_sloc0_1_0
	lda	#0x00
	sta	*(_mbrtowc_sloc0_1_0 + 1)
	cpx	#0x00
	beq	00287$
00286$:
	pha
	lda	*(_mbrtowc_sloc0_1_0 + 1)
	cmp	#0x80
	pla
	ror	*(_mbrtowc_sloc0_1_0 + 1)
	ror	*_mbrtowc_sloc0_1_0
	dex
	bne	00286$
00287$:
	lda	_mbrtowc_first_byte_65536_10
	ldx	#0x00
	and	*_mbrtowc_sloc0_1_0
	bne	00288$
	lda	*(_mbrtowc_sloc0_1_0 + 1)
	stx	*(__TEMP+0)
	and	*(__TEMP+0)
00288$:
	beq	00175$
;	../mbrtowc.c: 59: seqlen++;
	iny
	jmp	00108$
00175$:
	sty	*_mbrtowc_sloc1_1_0
;	../mbrtowc.c: 60: first_byte &= (0xff >> (seqlen + 1));
	iny
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00291$
00290$:
	pha
	txa
	cmp	#0x80
	ror	a
	tax
	pla
	ror	a
	dey
	bne	00290$
00291$:
	and	_mbrtowc_first_byte_65536_10
	sta	_mbrtowc_first_byte_65536_10
00112$:
;	../mbrtowc.c: 63: if(seqlen > 4)
	lda	*_mbrtowc_sloc1_1_0
	cmp	#0x04
	beq	00292$
	bcc	00292$
	jmp	00128$
00292$:
;	../mbrtowc.c: 66: if(i + n < seqlen) // Incomplete multibyte character
	lda	_mbrtowc_i_65536_10
	sta	*_mbrtowc_sloc0_1_0
	ldx	#0x00
	stx	*(_mbrtowc_sloc0_1_0 + 1)
	lda	*_mbrtowc_sloc0_1_0
	ldx	*(_mbrtowc_sloc0_1_0 + 1)
	clc
	adc	_mbrtowc_PARM_3
	pha
	txa
	adc	(_mbrtowc_PARM_3 + 1)
	tax
	pla
	ldy	*_mbrtowc_sloc1_1_0
	sty	*_mbrtowc_sloc2_1_0
	ldy	#0x00
	sty	*(_mbrtowc_sloc2_1_0 + 1)
	sec
	sbc	*_mbrtowc_sloc2_1_0
	txa
	sbc	*(_mbrtowc_sloc2_1_0 + 1)
	bcs	00164$
;	../mbrtowc.c: 70: return(-2);
	lda	_mbrtowc_PARM_4
	sta	*_mbrtowc_sloc2_1_0
	lda	(_mbrtowc_PARM_4 + 1)
	sta	*(_mbrtowc_sloc2_1_0 + 1)
	lda	_mbrtowc_PARM_2
	sta	*_mbrtowc_sloc3_1_0
	lda	(_mbrtowc_PARM_2 + 1)
	sta	*(_mbrtowc_sloc3_1_0 + 1)
	ldx	_mbrtowc_i_65536_10
	lda	_mbrtowc_PARM_3
	sta	*_mbrtowc_sloc4_1_0
	lda	(_mbrtowc_PARM_3 + 1)
	sta	*(_mbrtowc_sloc4_1_0 + 1)
00134$:
;	../mbrtowc.c: 68: for(;n-- ; i++)
	lda	*_mbrtowc_sloc4_1_0
	sta	*_mbrtowc_sloc5_1_0
	lda	*(_mbrtowc_sloc4_1_0 + 1)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	sec
	lda	*_mbrtowc_sloc4_1_0
	sbc	#0x01
	sta	*_mbrtowc_sloc4_1_0
	bcs	00295$
	dec	*(_mbrtowc_sloc4_1_0 + 1)
00295$:
	lda	*(_mbrtowc_sloc5_1_0 + 1)
	ora	*_mbrtowc_sloc5_1_0
	beq	00115$
;	../mbrtowc.c: 69: ps->c[i] = *s++;
	txa
	clc
	adc	*_mbrtowc_sloc2_1_0
	sta	*_mbrtowc_sloc5_1_0
	lda	#0x00
	adc	*(_mbrtowc_sloc2_1_0 + 1)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	ldy	#0x00
	lda	[*_mbrtowc_sloc3_1_0],y
	inc	*_mbrtowc_sloc3_1_0
	bne	00297$
	inc	*(_mbrtowc_sloc3_1_0 + 1)
00297$:
	sta	[*_mbrtowc_sloc5_1_0],y
;	../mbrtowc.c: 68: for(;n-- ; i++)
	inx
	jmp	00134$
00115$:
;	../mbrtowc.c: 70: return(-2);
	lda	#0xfe
	ldx	#0xff
	rts
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
00164$:
	lda	_mbrtowc_PARM_4
	sta	*_mbrtowc_sloc5_1_0
	lda	(_mbrtowc_PARM_4 + 1)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	ldx	#0x00
00137$:
	cpx	_mbrtowc_i_65536_10
	bcs	00118$
;	../mbrtowc.c: 74: ps->c[j] = 0;
	txa
	clc
	adc	*_mbrtowc_sloc5_1_0
	sta	*_mbrtowc_sloc4_1_0
	lda	#0x00
	adc	*(_mbrtowc_sloc5_1_0 + 1)
	sta	*(_mbrtowc_sloc4_1_0 + 1)
	lda	#0x00
	tay
	sta	[*_mbrtowc_sloc4_1_0],y
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
	inx
	jmp	00137$
00118$:
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	ldx	#0x01
	stx	_mbrtowc_PARM_3
	dex
	stx	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtowc_i_65536_10
	beq	00149$
	lda	*_mbrtowc_sloc0_1_0
	ldx	*(_mbrtowc_sloc0_1_0 + 1)
	jmp	00150$
00149$:
	lda	#0x01
	ldx	#0x00
00150$:
	sta	*_mbrtowc_sloc5_1_0
	lda	_mbrtowc_PARM_2
	sta	*_mbrtowc_sloc4_1_0
	lda	(_mbrtowc_PARM_2 + 1)
	sta	*(_mbrtowc_sloc4_1_0 + 1)
	ldx	#0x01
	stx	*_mbrtowc_sloc3_1_0
	dex
	stx	*(_mbrtowc_sloc3_1_0 + 1)
00140$:
	lda	*_mbrtowc_sloc5_1_0
	cmp	*_mbrtowc_sloc1_1_0
	bcs	00121$
;	../mbrtowc.c: 78: mbseq[i] = *s++;
	lda	*_mbrtowc_sloc5_1_0
	ldx	#0x00
	sta	*(__TEMP+0)
	ldy	#0x00
	lda	[*_mbrtowc_sloc4_1_0],y
	sta	*_mbrtowc_sloc2_1_0
	lda	*(__TEMP+0)
	inc	*_mbrtowc_sloc4_1_0
	bne	00301$
	inc	*(_mbrtowc_sloc4_1_0 + 1)
00301$:
	tay
	lda	*_mbrtowc_sloc2_1_0
	sta	(_mbrtowc_mbseq_65536_10+0+0x0000),y
;	../mbrtowc.c: 79: if((mbseq[i] & 0xc0) != 0x80)
	lda	*_mbrtowc_sloc2_1_0
	and	#0xc0
	cmp	#0x80
	bne	00303$
	cpx	#0x00
	beq	00304$
00303$:
	jmp	00128$
00304$:
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	*_mbrtowc_sloc5_1_0
	inc	*_mbrtowc_sloc3_1_0
	bne	00305$
	inc	*(_mbrtowc_sloc3_1_0 + 1)
00305$:
	lda	*_mbrtowc_sloc3_1_0
	sta	_mbrtowc_PARM_3
	lda	*(_mbrtowc_sloc3_1_0 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	jmp	00140$
00121$:
;	../mbrtowc.c: 83: codepoint = first_byte;
	lda	_mbrtowc_first_byte_65536_10
	sta	_mbrtowc_codepoint_65536_10
	ldx	#0x00
	stx	(_mbrtowc_codepoint_65536_10 + 1)
	stx	(_mbrtowc_codepoint_65536_10 + 2)
	stx	(_mbrtowc_codepoint_65536_10 + 3)
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	ldx	#(_mbrtowc_mbseq_65536_10 + 0x0001)
	ldy	#>(_mbrtowc_mbseq_65536_10 + 0x0001)
	stx	*_mbrtowc_sloc5_1_0
	sty	*(_mbrtowc_sloc5_1_0 + 1)
	lda	*_mbrtowc_sloc1_1_0
	sec
	sbc	#0x01
	sta	*_mbrtowc_sloc4_1_0
00143$:
	lda	*_mbrtowc_sloc4_1_0
	bne	00306$
	jmp	00122$
00306$:
;	../mbrtowc.c: 87: codepoint <<= 6;
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	asl	_mbrtowc_codepoint_65536_10
	rol	(_mbrtowc_codepoint_65536_10 + 1)
	rol	(_mbrtowc_codepoint_65536_10 + 2)
	rol	(_mbrtowc_codepoint_65536_10 + 3)
	lda	(_mbrtowc_codepoint_65536_10 + 3)
;	../mbrtowc.c: 88: codepoint |= (*s & 0x3f);
	ldy	#0x00
	lda	[*_mbrtowc_sloc5_1_0],y
	ldx	#0x00
	and	#0x3f
	sta	*_mbrtowc_sloc6_1_0
	stx	*(_mbrtowc_sloc6_1_0 + 1)
	txa
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_mbrtowc_sloc6_1_0 + 2)
	sta	*(_mbrtowc_sloc6_1_0 + 3)
	lda	_mbrtowc_codepoint_65536_10
	ora	*_mbrtowc_sloc6_1_0
	sta	_mbrtowc_codepoint_65536_10
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	ora	*(_mbrtowc_sloc6_1_0 + 1)
	sta	(_mbrtowc_codepoint_65536_10 + 1)
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	ora	*(_mbrtowc_sloc6_1_0 + 2)
	sta	(_mbrtowc_codepoint_65536_10 + 2)
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	ora	*(_mbrtowc_sloc6_1_0 + 3)
	sta	(_mbrtowc_codepoint_65536_10 + 3)
;	../mbrtowc.c: 89: s++;
	inc	*_mbrtowc_sloc5_1_0
	bne	00307$
	inc	*(_mbrtowc_sloc5_1_0 + 1)
00307$:
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	dec	*_mbrtowc_sloc4_1_0
	jmp	00143$
00122$:
;	../mbrtowc.c: 92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	sec
	sbc	#0xd8
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	sbc	#0x00
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	sbc	#0x00
	bcc	00124$
	lda	#0xff
	sec
	sbc	_mbrtowc_codepoint_65536_10
	lda	#0xdf
	sbc	(_mbrtowc_codepoint_65536_10 + 1)
	lda	#0x00
	sbc	(_mbrtowc_codepoint_65536_10 + 2)
	lda	#0x00
	sbc	(_mbrtowc_codepoint_65536_10 + 3)
	bcc	00124$
;	../mbrtowc.c: 93: return(-1);
	lda	#0xff
	tax
	rts
00124$:
;	../mbrtowc.c: 95: if(pwc)
	lda	(_mbrtowc_pwc_65536_9 + 1)
	ora	_mbrtowc_pwc_65536_9
	beq	00127$
;	../mbrtowc.c: 96: *pwc = codepoint;
	lda	_mbrtowc_pwc_65536_9
	sta	*(__DPTR+0)
	lda	(_mbrtowc_pwc_65536_9 + 1)
	sta	*(__DPTR+1)
	lda	_mbrtowc_codepoint_65536_10
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	iny
	sta	[__DPTR],y
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	iny
	sta	[__DPTR],y
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	iny
	sta	[__DPTR],y
00127$:
;	../mbrtowc.c: 97: return(n);
	ldx	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtowc_PARM_3
	rts
;	../mbrtowc.c: 99: eilseq:
00128$:
;	../mbrtowc.c: 100: errno = EILSEQ;
	ldx	#0x54
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../mbrtowc.c: 101: return(-1);
	lda	#0xff
	tax
;	../mbrtowc.c: 102: }
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
