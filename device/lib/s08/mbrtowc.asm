;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module mbrtowc
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
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_mbrtowc_sloc0_1_0:
	.ds 2
_mbrtowc_sloc1_1_0:
	.ds 2
_mbrtowc_sloc2_1_0:
	.ds 1
_mbrtowc_sloc3_1_0:
	.ds 2
_mbrtowc_sloc4_1_0:
	.ds 2
_mbrtowc_sloc5_1_0:
	.ds 2
_mbrtowc_sloc6_1_0:
	.ds 2
_mbrtowc_sloc7_1_0:
	.ds 2
_mbrtowc_sloc8_1_0:
	.ds 1
_mbrtowc_sloc9_1_0:
	.ds 4
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
_mbrtowc_sps_65536_10:
	.ds 3
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbrtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbrtowc_sloc3_1_0'
;sloc4                     Allocated with name '_mbrtowc_sloc4_1_0'
;sloc5                     Allocated with name '_mbrtowc_sloc5_1_0'
;sloc6                     Allocated with name '_mbrtowc_sloc6_1_0'
;sloc7                     Allocated with name '_mbrtowc_sloc7_1_0'
;sloc8                     Allocated with name '_mbrtowc_sloc8_1_0'
;sloc9                     Allocated with name '_mbrtowc_sloc9_1_0'
;s                         Allocated with name '_mbrtowc_PARM_2'
;n                         Allocated with name '_mbrtowc_PARM_3'
;ps                        Allocated with name '_mbrtowc_PARM_4'
;pwc                       Allocated with name '_mbrtowc_pwc_65536_9'
;first_byte                Allocated with name '_mbrtowc_first_byte_65536_10'
;seqlen                    Allocated to registers 
;mbseq                     Allocated with name '_mbrtowc_mbseq_65536_10'
;codepoint                 Allocated with name '_mbrtowc_codepoint_65536_10'
;i                         Allocated to registers 
;j                         Allocated to registers 
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;------------------------------------------------------------
;../mbrtowc.c:32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_mbrtowc:
	sta	(_mbrtowc_pwc_65536_9 + 1)
	stx	_mbrtowc_pwc_65536_9
;../mbrtowc.c:41: if(!s)
	lda	_mbrtowc_PARM_2
	ora	(_mbrtowc_PARM_2 + 1)
	bne	00102$
;../mbrtowc.c:42: return(mbrtowc(0, "", 1, ps));
	ldhx	#___str_0
	sthx	_mbrtowc_PARM_2
	ldhx	#0x0001
	sthx	_mbrtowc_PARM_3
	clra
	decx
	bra	_mbrtowc
00102$:
;../mbrtowc.c:43: if(!n)
	lda	_mbrtowc_PARM_3
	ora	(_mbrtowc_PARM_3 + 1)
	bne	00280$
	jmp	00128$
00280$:
;../mbrtowc.c:45: if(!ps)
	lda	_mbrtowc_PARM_4
	ora	(_mbrtowc_PARM_4 + 1)
	bne	00106$
;../mbrtowc.c:47: ps = &sps;
	ldhx	#_mbrtowc_sps_65536_10
	sthx	_mbrtowc_PARM_4
00106$:
;../mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	ldhx	_mbrtowc_PARM_4
	sthx	*_mbrtowc_sloc0_1_0
	mov	*_mbrtowc_sloc0_1_0,*_mbrtowc_sloc1_1_0
	mov	*(_mbrtowc_sloc0_1_0 + 1),*(_mbrtowc_sloc1_1_0 + 1)
	clra
00131$:
	psha
	add	*(_mbrtowc_sloc1_1_0 + 1)
	tax
	clra
	adc	*_mbrtowc_sloc1_1_0
	psha
	pulh
	pula
	ldx	,x
	stx	*_mbrtowc_sloc2_1_0
	tst	*_mbrtowc_sloc2_1_0
	beq	00174$
	cmp	#0x03
	bcc	00174$
;../mbrtowc.c:51: mbseq[i] = ps->c[i];
	tax
	clrh
	psha
	lda	*_mbrtowc_sloc2_1_0
	sta	(_mbrtowc_mbseq_65536_10),x
	pula
;../mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	inca
	bra	00131$
00174$:
	sta	*_mbrtowc_sloc2_1_0
;../mbrtowc.c:53: seqlen = 1;
	mov	#0x01,*_mbrtowc_sloc1_1_0
;../mbrtowc.c:54: first_byte = ps->c[0] ? ps->c[0] : *s;
	ldhx	_mbrtowc_PARM_4
	lda	,x
	ldhx	_mbrtowc_PARM_2
	sthx	*_mbrtowc_sloc3_1_0
	tsta
	beq	00147$
	bra	00148$
00147$:
	ldhx	*_mbrtowc_sloc3_1_0
	lda	,x
00148$:
	sta	_mbrtowc_first_byte_65536_10
;../mbrtowc.c:56: if(first_byte & 0x80)
	lda	_mbrtowc_first_byte_65536_10
	bpl     00112$
;../mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
	ldx	#0x01
00108$:
	mov	#0x80,*(_mbrtowc_sloc4_1_0 + 1)
	mov	#0x00,*_mbrtowc_sloc4_1_0
	txa
	tsta
	beq	00287$
00286$:
	asr	*_mbrtowc_sloc4_1_0
	ror	*(_mbrtowc_sloc4_1_0 + 1)
	dbnza	00286$
00287$:
	lda	_mbrtowc_first_byte_65536_10
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	mov	#0x00,*_mbrtowc_sloc5_1_0
;../mbrtowc.c:59: seqlen++;
	txa
	add	#0x01
;../mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
	psha
	lda	*(_mbrtowc_sloc5_1_0 + 1)
	bit	*(_mbrtowc_sloc4_1_0 + 1)
	bne	00288$
	lda	*_mbrtowc_sloc5_1_0
	bit	*_mbrtowc_sloc4_1_0
00288$:
	pula
	beq	00175$
;../mbrtowc.c:59: seqlen++;
	tax
	bra	00108$
00175$:
	stx	*_mbrtowc_sloc1_1_0
;../mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
	ldhx	#0x00ff
	tsta
	beq	00291$
00290$:
	pshh
	asr	1,s
	pulh
	rorx
	dbnza	00290$
00291$:
	txa
	and	_mbrtowc_first_byte_65536_10
	sta	_mbrtowc_first_byte_65536_10
00112$:
;../mbrtowc.c:63: if(seqlen > 4)
	lda	*_mbrtowc_sloc1_1_0
	cmp	#0x04
	bls	00292$
	jmp	00128$
00292$:
;../mbrtowc.c:66: if(i + n < seqlen) // Incomplete multibyte character
	mov	*_mbrtowc_sloc2_1_0,*(_mbrtowc_sloc5_1_0 + 1)
	mov	#0x00,*_mbrtowc_sloc5_1_0
	lda	*(_mbrtowc_sloc5_1_0 + 1)
	ldx	*_mbrtowc_sloc5_1_0
	add	(_mbrtowc_PARM_3 + 1)
	sta	*(_mbrtowc_sloc4_1_0 + 1)
	txa
	adc	_mbrtowc_PARM_3
	sta	*_mbrtowc_sloc4_1_0
	ldx	*_mbrtowc_sloc1_1_0
	clrh
	cphx	*_mbrtowc_sloc4_1_0
	bls	00164$
;../mbrtowc.c:70: return(-2);
	mov	*_mbrtowc_sloc0_1_0,*_mbrtowc_sloc4_1_0
	mov	*(_mbrtowc_sloc0_1_0 + 1),*(_mbrtowc_sloc4_1_0 + 1)
	mov	*_mbrtowc_sloc3_1_0,*_mbrtowc_sloc6_1_0
	mov	*(_mbrtowc_sloc3_1_0 + 1),*(_mbrtowc_sloc6_1_0 + 1)
	lda	*_mbrtowc_sloc2_1_0
	ldhx	_mbrtowc_PARM_3
00134$:
;../mbrtowc.c:68: for(;n-- ; i++)
	sthx	*_mbrtowc_sloc7_1_0
	aix	#-1
	tst	*(_mbrtowc_sloc7_1_0 + 1)
	bne	00294$
	tst	*_mbrtowc_sloc7_1_0
00294$:
	beq	00115$
;../mbrtowc.c:69: ps->c[i] = *s++;
	psha
	add	*(_mbrtowc_sloc4_1_0 + 1)
	sta	*(_mbrtowc_sloc7_1_0 + 1)
	clra
	adc	*_mbrtowc_sloc4_1_0
	sta	*_mbrtowc_sloc7_1_0
	pula
	pshx
	pshh
	ldhx	*_mbrtowc_sloc6_1_0
	psha
	lda	,x
	sta	*_mbrtowc_sloc8_1_0
	aix	#1
	sthx	*_mbrtowc_sloc6_1_0
	pula
	pulh
	pulx
	pshx
	pshh
	psha
	ldhx	*_mbrtowc_sloc7_1_0
	lda	*_mbrtowc_sloc8_1_0
	sta	,x
	pula
	pulh
	pulx
;../mbrtowc.c:68: for(;n-- ; i++)
	inca
	bra	00134$
00115$:
;../mbrtowc.c:70: return(-2);
	lda	#0xfe
	ldx	#0xff
	rts
;../mbrtowc.c:73: for(j = 0; j < i; j++)
00164$:
	mov	*_mbrtowc_sloc0_1_0,*_mbrtowc_sloc7_1_0
	mov	*(_mbrtowc_sloc0_1_0 + 1),*(_mbrtowc_sloc7_1_0 + 1)
	clra
00137$:
	cmp	*_mbrtowc_sloc2_1_0
	bcc	00118$
;../mbrtowc.c:74: ps->c[j] = 0;
	psha
	add	*(_mbrtowc_sloc7_1_0 + 1)
	tax
	clra
	adc	*_mbrtowc_sloc7_1_0
	psha
	pulh
	clra
	sta	,x
	pula
;../mbrtowc.c:73: for(j = 0; j < i; j++)
	inca
	bra	00137$
00118$:
;../mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	ldhx	#0x0001
	sthx	_mbrtowc_PARM_3
	tst	*_mbrtowc_sloc2_1_0
	beq	00149$
	ldhx	*_mbrtowc_sloc5_1_0
	bra	00150$
00149$:
	ldhx	#0x0001
00150$:
	stx	*_mbrtowc_sloc8_1_0
	mov	*_mbrtowc_sloc3_1_0,*_mbrtowc_sloc7_1_0
	mov	*(_mbrtowc_sloc3_1_0 + 1),*(_mbrtowc_sloc7_1_0 + 1)
	ldhx	#0x0001
	sthx	*_mbrtowc_sloc6_1_0
00140$:
	lda	*_mbrtowc_sloc8_1_0
	cmp	*_mbrtowc_sloc1_1_0
	bcc	00121$
;../mbrtowc.c:78: mbseq[i] = *s++;
	ldx	*_mbrtowc_sloc8_1_0
	clrh
	pshx
	pshh
	ldhx	*_mbrtowc_sloc7_1_0
	lda	,x
	aix	#1
	sthx	*_mbrtowc_sloc7_1_0
	pulh
	pulx
	sta	(_mbrtowc_mbseq_65536_10),x
;../mbrtowc.c:79: if((mbseq[i] & 0xc0) != 0x80)
	tax
	clrh
	txa
	and	#0xc0
	tax
	cphx	#0x0080
	beq	00299$
	jmp	00128$
00299$:
;../mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	*_mbrtowc_sloc8_1_0
	ldhx	*_mbrtowc_sloc6_1_0
	aix	#1
	sthx	*_mbrtowc_sloc6_1_0
	lda	*_mbrtowc_sloc6_1_0
	sta	_mbrtowc_PARM_3
	lda	*(_mbrtowc_sloc6_1_0 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	bra	00140$
00121$:
;../mbrtowc.c:83: codepoint = first_byte;
	lda	_mbrtowc_first_byte_65536_10
	sta	(_mbrtowc_codepoint_65536_10 + 3)
	clra
	sta	(_mbrtowc_codepoint_65536_10 + 2)
	sta	(_mbrtowc_codepoint_65536_10 + 1)
	sta	_mbrtowc_codepoint_65536_10
;../mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	ldhx	#(_mbrtowc_mbseq_65536_10 + 0x0001)
	sthx	*_mbrtowc_sloc7_1_0
	lda	*_mbrtowc_sloc1_1_0
	sub	#0x01
	sta	*_mbrtowc_sloc8_1_0
00143$:
	tst	*_mbrtowc_sloc8_1_0
	beq	00122$
;../mbrtowc.c:87: codepoint <<= 6;
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	ldx	_mbrtowc_codepoint_65536_10
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	(_mbrtowc_codepoint_65536_10 + 1)
	stx	_mbrtowc_codepoint_65536_10
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	lsra	
	lsra	
	ora	(_mbrtowc_codepoint_65536_10 + 1)
	sta	(_mbrtowc_codepoint_65536_10 + 1)
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	ldx	(_mbrtowc_codepoint_65536_10 + 2)
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	lsla
	rolx
	sta	(_mbrtowc_codepoint_65536_10 + 3)
	stx	(_mbrtowc_codepoint_65536_10 + 2)
;../mbrtowc.c:88: codepoint |= (*s & 0x3f);
	ldhx	*_mbrtowc_sloc7_1_0
	lda	,x
	aix	#1
	sthx	*_mbrtowc_sloc7_1_0
	clrx
	and	#0x3f
	psha
	pula
	sta	*(_mbrtowc_sloc9_1_0 + 3)
	txa
	sta	*(_mbrtowc_sloc9_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_mbrtowc_sloc9_1_0 + 1)
	sta	*_mbrtowc_sloc9_1_0
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	ora	*(_mbrtowc_sloc9_1_0 + 3)
	sta	(_mbrtowc_codepoint_65536_10 + 3)
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	ora	*(_mbrtowc_sloc9_1_0 + 2)
	sta	(_mbrtowc_codepoint_65536_10 + 2)
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	ora	*(_mbrtowc_sloc9_1_0 + 1)
	sta	(_mbrtowc_codepoint_65536_10 + 1)
	lda	_mbrtowc_codepoint_65536_10
	ora	*_mbrtowc_sloc9_1_0
	sta	_mbrtowc_codepoint_65536_10
;../mbrtowc.c:89: s++;
;../mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	dec	*_mbrtowc_sloc8_1_0
	bra	00143$
00122$:
;../mbrtowc.c:92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	sub	#0xd8
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	sbc	#0x00
	lda	_mbrtowc_codepoint_65536_10
	sbc	#0x00
	bcs	00124$
	lda	#0xff
	sub	(_mbrtowc_codepoint_65536_10 + 3)
	lda	#0xdf
	sbc	(_mbrtowc_codepoint_65536_10 + 2)
	clra
	sbc	(_mbrtowc_codepoint_65536_10 + 1)
	clra
	sbc	_mbrtowc_codepoint_65536_10
	bcs	00124$
;../mbrtowc.c:93: return(-1);
	lda	#0xff
	tax
	rts
00124$:
;../mbrtowc.c:95: if(pwc)
	lda	_mbrtowc_pwc_65536_9
	ora	(_mbrtowc_pwc_65536_9 + 1)
	beq	00127$
;../mbrtowc.c:96: *pwc = codepoint;
	ldhx	_mbrtowc_pwc_65536_9
	lda	_mbrtowc_codepoint_65536_10
	sta	,x
	lda	(_mbrtowc_codepoint_65536_10 + 1)
	sta	1,x
	lda	(_mbrtowc_codepoint_65536_10 + 2)
	sta	2,x
	lda	(_mbrtowc_codepoint_65536_10 + 3)
	sta	3,x
00127$:
;../mbrtowc.c:97: return(n);
	ldx	_mbrtowc_PARM_3
	lda	(_mbrtowc_PARM_3 + 1)
	rts
;../mbrtowc.c:99: eilseq:
00128$:
;../mbrtowc.c:100: errno = EILSEQ;
	ldhx	#0x0054
	sthx	_errno
;../mbrtowc.c:101: return(-1);
	lda	#0xff
	tax
;../mbrtowc.c:102: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
