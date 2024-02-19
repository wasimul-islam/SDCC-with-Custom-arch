;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mhc08
	
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
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mbtowc_sloc0_1_0:
	.ds 1
_mbtowc_sloc1_1_0:
	.ds 2
_mbtowc_sloc2_1_0:
	.ds 2
_mbtowc_sloc3_1_0:
	.ds 2
_mbtowc_sloc4_1_0:
	.ds 4
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
_mbtowc_PARM_2:
	.ds 2
_mbtowc_PARM_3:
	.ds 2
_mbtowc_pwc_65536_36:
	.ds 2
_mbtowc_codepoint_65536_37:
	.ds 4
_mbtowc_first_byte_65536_37:
	.ds 1
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbtowc_PARM_2'
;n                         Allocated with name '_mbtowc_PARM_3'
;pwc                       Allocated with name '_mbtowc_pwc_65536_36'
;codepoint                 Allocated with name '_mbtowc_codepoint_65536_37'
;seqlen                    Allocated to registers 
;i                         Allocated to registers 
;first_byte                Allocated with name '_mbtowc_first_byte_65536_37'
;sloc0                     Allocated with name '_mbtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbtowc_sloc3_1_0'
;sloc4                     Allocated with name '_mbtowc_sloc4_1_0'
;------------------------------------------------------------
;../mbtowc.c:31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbtowc:
	sta	(_mbtowc_pwc_65536_36 + 1)
	stx	_mbtowc_pwc_65536_36
;../mbtowc.c:37: if(!s)
	lda	_mbtowc_PARM_2
	ora	(_mbtowc_PARM_2 + 1)
	bne	00102$
;../mbtowc.c:38: return(0);
	clra
	tax
	rts
00102$:
;../mbtowc.c:40: seqlen = 1;
	mov	#0x01,*_mbtowc_sloc0_1_0
;../mbtowc.c:41: first_byte = *s;
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc1_1_0
	lda	(_mbtowc_PARM_2 + 1)
	sta	*(_mbtowc_sloc1_1_0 + 1)
	ldhx	*_mbtowc_sloc1_1_0
	lda	,x
	sta	_mbtowc_first_byte_65536_37
;../mbtowc.c:43: if(first_byte & 0x80)
	lda	_mbtowc_first_byte_65536_37
	bpl     00107$
;../mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	ldx	#0x01
00103$:
	mov	#0x80,*(_mbtowc_sloc2_1_0 + 1)
	mov	#0x00,*_mbtowc_sloc2_1_0
	txa
	tsta
	beq	00204$
00203$:
	asr	*_mbtowc_sloc2_1_0
	ror	*(_mbtowc_sloc2_1_0 + 1)
	dbnza	00203$
00204$:
	lda	_mbtowc_first_byte_65536_37
	sta	*(_mbtowc_sloc3_1_0 + 1)
	mov	#0x00,*_mbtowc_sloc3_1_0
;../mbtowc.c:46: seqlen++;
	txa
	add	#0x01
;../mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	psha
	lda	*(_mbtowc_sloc3_1_0 + 1)
	bit	*(_mbtowc_sloc2_1_0 + 1)
	bne	00205$
	lda	*_mbtowc_sloc3_1_0
	bit	*_mbtowc_sloc2_1_0
00205$:
	pula
	beq	00143$
;../mbtowc.c:46: seqlen++;
	tax
	bra	00103$
00143$:
	stx	*_mbtowc_sloc0_1_0
;../mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	ldhx	#0x00ff
	tsta
	beq	00208$
00207$:
	pshh
	asr	1,s
	pulh
	rorx
	dbnza	00207$
00208$:
	txa
	and	_mbtowc_first_byte_65536_37
	sta	_mbtowc_first_byte_65536_37
00107$:
;../mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	lda	*_mbtowc_sloc0_1_0
	cmp	#0x04
	bhi	00108$
	mov	*_mbtowc_sloc0_1_0,*(_mbtowc_sloc3_1_0 + 1)
	mov	#0x00,*_mbtowc_sloc3_1_0
	lda	(_mbtowc_PARM_3 + 1)
	sub	*(_mbtowc_sloc3_1_0 + 1)
	lda	_mbtowc_PARM_3
	sbc	*_mbtowc_sloc3_1_0
	bcc	00136$
00108$:
;../mbtowc.c:51: return(-1);
	lda	#0xff
	tax
	rts
;../mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
	lda	#0x01
00121$:
	cmp	*_mbtowc_sloc0_1_0
	bcc	00113$
;../mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	psha
	add	*(_mbtowc_sloc1_1_0 + 1)
	tax
	clra
	adc	*_mbtowc_sloc1_1_0
	psha
	pulh
	pula
	ldx	,x
	clrh
	psha
	txa
	and	#0xc0
	tax
	pula
	cphx	#0x0080
	beq	00122$
;../mbtowc.c:55: return(-1);
	lda	#0xff
	tax
	rts
00122$:
;../mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inca
	bra	00121$
00113$:
;../mbtowc.c:57: codepoint = first_byte;
	lda	_mbtowc_first_byte_65536_37
	sta	(_mbtowc_codepoint_65536_37 + 3)
	clra
	sta	(_mbtowc_codepoint_65536_37 + 2)
	sta	(_mbtowc_codepoint_65536_37 + 1)
	sta	_mbtowc_codepoint_65536_37
;../mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	ldhx	#_mbtowc_PARM_2
	lda	*(_mbtowc_sloc1_1_0 + 1)
	add	#0x01
	sta	1,x
	lda	*_mbtowc_sloc1_1_0
	adc	#0
	sta	,x
	lda	*_mbtowc_sloc0_1_0
	sub	#0x01
	sta	*_mbtowc_sloc3_1_0
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc2_1_0
	lda	(_mbtowc_PARM_2 + 1)
	sta	*(_mbtowc_sloc2_1_0 + 1)
00124$:
	tst	*_mbtowc_sloc3_1_0
	beq	00114$
;../mbtowc.c:61: codepoint <<= 6;
	lda	(_mbtowc_codepoint_65536_37 + 1)
	ldx	_mbtowc_codepoint_65536_37
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
	sta	(_mbtowc_codepoint_65536_37 + 1)
	stx	_mbtowc_codepoint_65536_37
	lda	(_mbtowc_codepoint_65536_37 + 2)
	lsra	
	lsra	
	ora	(_mbtowc_codepoint_65536_37 + 1)
	sta	(_mbtowc_codepoint_65536_37 + 1)
	lda	(_mbtowc_codepoint_65536_37 + 3)
	ldx	(_mbtowc_codepoint_65536_37 + 2)
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
	sta	(_mbtowc_codepoint_65536_37 + 3)
	stx	(_mbtowc_codepoint_65536_37 + 2)
;../mbtowc.c:62: codepoint |= (*s & 0x3f);
	ldhx	*_mbtowc_sloc2_1_0
	lda	,x
	aix	#1
	sthx	*_mbtowc_sloc2_1_0
	clrx
	and	#0x3f
	psha
	pula
	sta	*(_mbtowc_sloc4_1_0 + 3)
	txa
	sta	*(_mbtowc_sloc4_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_mbtowc_sloc4_1_0 + 1)
	sta	*_mbtowc_sloc4_1_0
	lda	(_mbtowc_codepoint_65536_37 + 3)
	ora	*(_mbtowc_sloc4_1_0 + 3)
	sta	(_mbtowc_codepoint_65536_37 + 3)
	lda	(_mbtowc_codepoint_65536_37 + 2)
	ora	*(_mbtowc_sloc4_1_0 + 2)
	sta	(_mbtowc_codepoint_65536_37 + 2)
	lda	(_mbtowc_codepoint_65536_37 + 1)
	ora	*(_mbtowc_sloc4_1_0 + 1)
	sta	(_mbtowc_codepoint_65536_37 + 1)
	lda	_mbtowc_codepoint_65536_37
	ora	*_mbtowc_sloc4_1_0
	sta	_mbtowc_codepoint_65536_37
;../mbtowc.c:63: s++;
;../mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	dec	*_mbtowc_sloc3_1_0
	bra	00124$
00114$:
;../mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	lda	(_mbtowc_codepoint_65536_37 + 2)
	sub	#0xd8
	lda	(_mbtowc_codepoint_65536_37 + 1)
	sbc	#0x00
	lda	_mbtowc_codepoint_65536_37
	sbc	#0x00
	bcs	00116$
	lda	#0xff
	sub	(_mbtowc_codepoint_65536_37 + 3)
	lda	#0xdf
	sbc	(_mbtowc_codepoint_65536_37 + 2)
	clra
	sbc	(_mbtowc_codepoint_65536_37 + 1)
	clra
	sbc	_mbtowc_codepoint_65536_37
	bcs	00116$
;../mbtowc.c:67: return(-1);
	lda	#0xff
	tax
	rts
00116$:
;../mbtowc.c:69: if(pwc)
	lda	_mbtowc_pwc_65536_36
	ora	(_mbtowc_pwc_65536_36 + 1)
	beq	00119$
;../mbtowc.c:70: *pwc = codepoint;
	lda	_mbtowc_pwc_65536_36
	psha
	pulh
	ldx	(_mbtowc_pwc_65536_36 + 1)
	lda	_mbtowc_codepoint_65536_37
	sta	,x
	lda	(_mbtowc_codepoint_65536_37 + 1)
	sta	1,x
	lda	(_mbtowc_codepoint_65536_37 + 2)
	sta	2,x
	lda	(_mbtowc_codepoint_65536_37 + 3)
	sta	3,x
00119$:
;../mbtowc.c:71: return(codepoint ? seqlen : 0);
	lda	_mbtowc_codepoint_65536_37
	ora	(_mbtowc_codepoint_65536_37 + 1)
	ora	(_mbtowc_codepoint_65536_37 + 2)
	ora	(_mbtowc_codepoint_65536_37 + 3)
	beq	00128$
	lda	*_mbtowc_sloc0_1_0
	clrx
	rts
00128$:
	clrx
	txa
;../mbtowc.c:72: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
