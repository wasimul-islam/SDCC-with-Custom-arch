;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_mbrtowc_sloc0_1_0:
	.ds 1
_mbrtowc_sloc1_1_0:
	.ds 3
_mbrtowc_sloc2_1_0:
	.ds 1
_mbrtowc_sloc3_1_0:
	.ds 3
_mbrtowc_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_mbrtowc_PARM_2:
	.ds 3
_mbrtowc_PARM_3:
	.ds 2
_mbrtowc_PARM_4:
	.ds 3
_mbrtowc_pwc_65536_9:
	.ds 3
_mbrtowc_first_byte_65536_10:
	.ds 1
_mbrtowc_seqlen_65536_10:
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
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;s                         Allocated with name '_mbrtowc_PARM_2'
;n                         Allocated with name '_mbrtowc_PARM_3'
;ps                        Allocated with name '_mbrtowc_PARM_4'
;pwc                       Allocated with name '_mbrtowc_pwc_65536_9'
;first_byte                Allocated with name '_mbrtowc_first_byte_65536_10'
;seqlen                    Allocated with name '_mbrtowc_seqlen_65536_10'
;mbseq                     Allocated with name '_mbrtowc_mbseq_65536_10'
;codepoint                 Allocated with name '_mbrtowc_codepoint_65536_10'
;i                         Allocated with name '_mbrtowc_i_65536_10'
;j                         Allocated with name '_mbrtowc_j_65536_10'
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;------------------------------------------------------------
;	mbrtowc.c:32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
_mbrtowc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mbrtowc_pwc_65536_9
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:41: if(!s)
	mov	dptr,#_mbrtowc_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbrtowc_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	mbrtowc.c:42: return(mbrtowc(0, "", 1, ps));
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbrtowc_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_3
	rl	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_mbrtowc
	mov	r1,#(_mbrtowc >> 8)
	mov	r2,#(_mbrtowc >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov  r4,dph
	ljmp	__sdcc_banked_ret
00102$:
;	mbrtowc.c:43: if(!n)
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00255$
	ljmp	00128$
00255$:
;	mbrtowc.c:45: if(!ps)
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00106$
;	mbrtowc.c:47: ps = &sps;
	mov	dptr,#_mbrtowc_PARM_4
	mov	a,#_mbrtowc_sps_65536_10
	movx	@dptr,a
	mov	a,#(_mbrtowc_sps_65536_10 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00106$:
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	_mbrtowc_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc1_1_0 + 2),a
	mov	_mbrtowc_sloc0_1_0,#0x00
00131$:
	push	ar3
	push	ar4
	mov	a,_mbrtowc_sloc0_1_0
	add	a,_mbrtowc_sloc1_1_0
	mov	r2,a
	clr	a
	addc	a,(_mbrtowc_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_mbrtowc_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_mbrtowc_sloc2_1_0,a
	pop	ar4
	pop	ar3
	mov	a,_mbrtowc_sloc2_1_0
	jz	00174$
	mov	a,#0x100 - 0x03
	add	a,_mbrtowc_sloc0_1_0
	jc	00174$
;	mbrtowc.c:51: mbseq[i] = ps->c[i];
	mov	a,_mbrtowc_sloc0_1_0
	add	a,#_mbrtowc_mbseq_65536_10
	mov	dpl,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 8)
	mov	dph,a
	mov	a,_mbrtowc_sloc2_1_0
	movx	@dptr,a
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	inc	_mbrtowc_sloc0_1_0
	sjmp	00131$
00174$:
	mov	dptr,#_mbrtowc_i_65536_10
	mov	a,_mbrtowc_sloc0_1_0
	movx	@dptr,a
;	mbrtowc.c:53: seqlen = 1;
	mov	dptr,#_mbrtowc_seqlen_65536_10
	mov	a,#0x01
	movx	@dptr,a
;	mbrtowc.c:54: first_byte = ps->c[0] ? ps->c[0] : *s;
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jnz	00148$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
00148$:
	mov	dptr,#_mbrtowc_first_byte_65536_10
	mov	a,r2
	movx	@dptr,a
;	mbrtowc.c:56: if(first_byte & 0x80)
	mov	a,r2
	jnb	acc.7,00112$
;	mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
	mov	r1,#0x01
00108$:
	push	ar3
	push	ar4
	mov	b,r1
	inc	b
	mov	_mbrtowc_sloc1_1_0,#0x80
	clr	a
	mov	(_mbrtowc_sloc1_1_0 + 1),a
	rlc	a
	mov	ov,c
	sjmp	00262$
00261$:
	mov	c,ov
	mov	a,(_mbrtowc_sloc1_1_0 + 1)
	rrc	a
	mov	(_mbrtowc_sloc1_1_0 + 1),a
	mov	a,_mbrtowc_sloc1_1_0
	rrc	a
	mov	_mbrtowc_sloc1_1_0,a
00262$:
	djnz	b,00261$
	mov	ar3,r2
	mov	r4,#0x00
	mov	a,_mbrtowc_sloc1_1_0
	anl	ar3,a
	mov	a,(_mbrtowc_sloc1_1_0 + 1)
	anl	ar4,a
	mov	a,r3
	orl	a,r4
	pop	ar4
	pop	ar3
	jz	00175$
;	mbrtowc.c:59: seqlen++;
	inc	r1
	sjmp	00108$
00175$:
	mov	dptr,#_mbrtowc_seqlen_65536_10
	mov	a,r1
	movx	@dptr,a
;	mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
	inc	r1
	mov	b,r1
	inc	b
	mov	r0,#0xff
	clr	a
	mov	r1,a
	rlc	a
	mov	ov,c
	sjmp	00265$
00264$:
	mov	c,ov
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00265$:
	djnz	b,00264$
	mov	dptr,#_mbrtowc_first_byte_65536_10
	mov	a,r0
	anl	a,r2
	movx	@dptr,a
00112$:
;	mbrtowc.c:63: if(seqlen > 4)
	mov	dptr,#_mbrtowc_seqlen_65536_10
	movx	a,@dptr
	mov  r2,a
	add	a,#0xff - 0x04
	jnc	00266$
	ljmp	00128$
00266$:
;	mbrtowc.c:66: if(i + n < seqlen) // Incomplete multibyte character
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_mbrtowc_i_65536_10
	movx	a,@dptr
	mov	r1,a
	mov	r0,a
	mov	r7,#0x00
	mov	a,r3
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	r6,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r7
	subb	a,r6
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00164$
;	mbrtowc.c:70: return(-2);
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	_mbrtowc_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc1_1_0 + 2),a
	mov	_mbrtowc_sloc3_1_0,r5
	mov	(_mbrtowc_sloc3_1_0 + 1),r6
	mov	(_mbrtowc_sloc3_1_0 + 2),r7
	mov	_mbrtowc_sloc2_1_0,r1
00134$:
;	mbrtowc.c:68: for(;n-- ; i++)
	mov	ar0,r3
	mov	ar2,r4
	dec	r3
	cjne	r3,#0xff,00268$
	dec	r4
00268$:
	mov	a,r0
	orl	a,r2
	jz	00115$
;	mbrtowc.c:69: ps->c[i] = *s++;
	push	ar3
	push	ar4
	mov	a,_mbrtowc_sloc2_1_0
	add	a,_mbrtowc_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_mbrtowc_sloc1_1_0 + 1)
	mov	r2,a
	mov	r4,(_mbrtowc_sloc1_1_0 + 2)
	mov	dpl,_mbrtowc_sloc3_1_0
	mov	dph,(_mbrtowc_sloc3_1_0 + 1)
	mov	b,(_mbrtowc_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	_mbrtowc_sloc3_1_0,dpl
	mov	(_mbrtowc_sloc3_1_0 + 1),dph
	mov	dpl,r0
	mov	dph,r2
	mov	b,r4
	mov	a,r3
	lcall	__gptrput
;	mbrtowc.c:68: for(;n-- ; i++)
	inc	_mbrtowc_sloc2_1_0
	pop	ar4
	pop	ar3
	sjmp	00134$
00115$:
;	mbrtowc.c:70: return(-2);
	mov	dptr,#0xfffe
	ljmp	__sdcc_banked_ret
;	mbrtowc.c:73: for(j = 0; j < i; j++)
00164$:
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,#0x00
00137$:
	clr	c
	mov	a,r0
	subb	a,r1
	jnc	00118$
;	mbrtowc.c:74: ps->c[j] = 0;
	push	ar5
	push	ar6
	push	ar7
	mov	a,r0
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	mbrtowc.c:73: for(j = 0; j < i; j++)
	inc	r0
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00137$
00118$:
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	jz	00149$
	mov	r4,#0x00
	sjmp	00150$
00149$:
	mov	r1,#0x01
	mov	r4,#0x00
00150$:
	mov	dptr,#_mbrtowc_seqlen_65536_10
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x01
	mov	r3,#0x00
00140$:
	clr	c
	mov	a,r1
	subb	a,r4
	jnc	00121$
;	mbrtowc.c:78: mbseq[i] = *s++;
	push	ar4
	mov	a,r1
	add	a,#_mbrtowc_mbseq_65536_10
	mov	_mbrtowc_sloc3_1_0,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 8)
	mov	(_mbrtowc_sloc3_1_0 + 1),a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,_mbrtowc_sloc3_1_0
	mov	dph,(_mbrtowc_sloc3_1_0 + 1)
	mov	a,r4
	movx	@dptr,a
;	mbrtowc.c:79: if((mbseq[i] & 0xc0) != 0x80)
	mov	ar0,r4
	anl	ar0,#0xc0
	mov	r4,#0x00
	cjne	r0,#0x80,00273$
	cjne	r4,#0x00,00273$
	sjmp	00274$
00273$:
	pop	ar4
	ljmp	00128$
00274$:
	pop	ar4
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	r1
	inc	r2
	cjne	r2,#0x00,00275$
	inc	r3
00275$:
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00140$
00121$:
;	mbrtowc.c:83: codepoint = first_byte;
	mov	dptr,#_mbrtowc_first_byte_65536_10
	movx	a,@dptr
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	r5,#(_mbrtowc_mbseq_65536_10 + 0x0001)
	mov	r6,#((_mbrtowc_mbseq_65536_10 + 0x0001) >> 8)
	mov	r7,a
	dec	r4
00143$:
	mov	a,r4
	jnz	00276$
	ljmp	00122$
00276$:
;	mbrtowc.c:87: codepoint <<= 6;
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r2
	mov	r2,a
	mov	a,r1
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	dptr,#_mbrtowc_codepoint_65536_10
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:88: codepoint |= (*s & 0x3f);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r2,#0x00
	mov	a,#0x3f
	anl	a,r3
	mov	_mbrtowc_sloc3_1_0,a
	mov	(_mbrtowc_sloc3_1_0 + 1),r2
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	a,@dptr
	mov	_mbrtowc_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtowc_sloc4_1_0 + 3),a
	mov	r0,_mbrtowc_sloc3_1_0
	mov	a,(_mbrtowc_sloc3_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	dptr,#_mbrtowc_codepoint_65536_10
	mov	a,r0
	orl	a,_mbrtowc_sloc4_1_0
	movx	@dptr,a
	mov	a,r1
	orl	a,(_mbrtowc_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	orl	a,(_mbrtowc_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	orl	a,(_mbrtowc_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:89: s++;
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	dec	r4
	ljmp	00143$
00122$:
;	mbrtowc.c:92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r5
	subb	a,#0xd8
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00124$
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xdf
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00124$
;	mbrtowc.c:93: return(-1);
	mov	dptr,#0xffff
	sjmp	00145$
00124$:
;	mbrtowc.c:95: if(pwc)
	mov	dptr,#_mbrtowc_pwc_65536_9
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbrtowc_pwc_65536_9
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00127$
;	mbrtowc.c:96: *pwc = codepoint;
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00127$:
;	mbrtowc.c:97: return(n);
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
;	mbrtowc.c:99: eilseq:
	sjmp	00145$
00128$:
;	mbrtowc.c:100: errno = EILSEQ;
	mov	dptr,#_errno
	mov	a,#0x54
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:101: return(-1);
	mov	dptr,#0xffff
00145$:
;	mbrtowc.c:102: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
