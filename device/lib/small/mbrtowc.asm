;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mmcs51 --model-small
	
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
_mbrtowc_sps_65536_10:
	.ds 3
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
_mbrtowc_j_65536_10:
	.ds 1
_mbrtowc_sloc0_1_0:
	.ds 2
_mbrtowc_sloc1_1_0:
	.ds 3
_mbrtowc_sloc2_1_0:
	.ds 3
_mbrtowc_sloc3_1_0:
	.ds 1
_mbrtowc_sloc4_1_0:
	.ds 3
_mbrtowc_sloc5_1_0:
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
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
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
;sloc0                     Allocated with name '_mbrtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbrtowc_sloc3_1_0'
;sloc4                     Allocated with name '_mbrtowc_sloc4_1_0'
;sloc5                     Allocated with name '_mbrtowc_sloc5_1_0'
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
	mov	_mbrtowc_pwc_65536_9,dpl
	mov	(_mbrtowc_pwc_65536_9 + 1),dph
	mov	(_mbrtowc_pwc_65536_9 + 2),b
;	mbrtowc.c:41: if(!s)
	mov	a,_mbrtowc_PARM_2
	orl	a,(_mbrtowc_PARM_2 + 1)
	jnz	00102$
;	mbrtowc.c:42: return(mbrtowc(0, "", 1, ps));
	mov	_mbrtowc_PARM_2,#___str_0
	mov	(_mbrtowc_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_mbrtowc_PARM_2 + 2),#0x80
	mov	_mbrtowc_PARM_3,#0x01
	mov	(_mbrtowc_PARM_3 + 1),#0x00
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	_mbrtowc
00102$:
;	mbrtowc.c:43: if(!n)
	mov	a,_mbrtowc_PARM_3
	orl	a,(_mbrtowc_PARM_3 + 1)
	jnz	00280$
	ljmp	00128$
00280$:
;	mbrtowc.c:45: if(!ps)
	mov	a,_mbrtowc_PARM_4
	orl	a,(_mbrtowc_PARM_4 + 1)
;	mbrtowc.c:47: ps = &sps;
	jnz	00106$
	mov	_mbrtowc_PARM_4,#_mbrtowc_sps_65536_10
	mov	(_mbrtowc_PARM_4 + 1),a
	mov	(_mbrtowc_PARM_4 + 2),#0x40
00106$:
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	r2,_mbrtowc_PARM_4
	mov	r3,(_mbrtowc_PARM_4 + 1)
	mov	r4,(_mbrtowc_PARM_4 + 2)
	mov	_mbrtowc_i_65536_10,#0x00
00131$:
	mov	a,_mbrtowc_i_65536_10
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00174$
	mov	a,#0x100 - 0x03
	add	a,_mbrtowc_i_65536_10
	jc	00174$
;	mbrtowc.c:51: mbseq[i] = ps->c[i];
	mov	a,_mbrtowc_i_65536_10
	add	a,#_mbrtowc_mbseq_65536_10
	mov	r0,a
	mov	@r0,ar7
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	inc	_mbrtowc_i_65536_10
	sjmp	00131$
00174$:
	mov	r7,_mbrtowc_i_65536_10
;	mbrtowc.c:53: seqlen = 1;
	mov	r6,#0x01
;	mbrtowc.c:54: first_byte = ps->c[0] ? ps->c[0] : *s;
	mov	r3,_mbrtowc_PARM_4
	mov	r4,(_mbrtowc_PARM_4 + 1)
	mov	r5,(_mbrtowc_PARM_4 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	jz	00147$
	sjmp	00148$
00147$:
	mov	r2,_mbrtowc_PARM_2
	mov	r3,(_mbrtowc_PARM_2 + 1)
	mov	r4,(_mbrtowc_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
00148$:
;	mbrtowc.c:56: if(first_byte & 0x80)
	mov	a,r5
	mov	_mbrtowc_first_byte_65536_10,a
	jnb	acc.7,00112$
;	mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
	mov	_mbrtowc_seqlen_65536_10,#0x01
00108$:
	mov	b,_mbrtowc_seqlen_65536_10
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r3,a
	rlc	a
	mov	ov,c
	sjmp	00287$
00286$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00287$:
	djnz	b,00286$
	mov	r4,_mbrtowc_first_byte_65536_10
	mov	r5,#0x00
	mov	a,r4
	anl	ar2,a
	mov	a,r5
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00175$
;	mbrtowc.c:59: seqlen++;
	inc	_mbrtowc_seqlen_65536_10
	sjmp	00108$
00175$:
;	mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
	mov	a,_mbrtowc_seqlen_65536_10
	mov	r6,a
	inc	a
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0xff
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00290$
00289$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
00290$:
	djnz	b,00289$
	mov	a,r5
	anl	_mbrtowc_first_byte_65536_10,a
00112$:
;	mbrtowc.c:63: if(seqlen > 4)
	mov	a,r6
	add	a,#0xff - 0x04
	jnc	00291$
	ljmp	00128$
00291$:
;	mbrtowc.c:66: if(i + n < seqlen) // Incomplete multibyte character
	mov	ar4,r7
	mov	r5,#0x00
	mov	ar2,r4
	mov	ar3,r5
	mov	a,_mbrtowc_PARM_3
	add	a,r2
	mov	_mbrtowc_sloc0_1_0,a
	mov	a,(_mbrtowc_PARM_3 + 1)
	addc	a,r3
	mov	(_mbrtowc_sloc0_1_0 + 1),a
	push	ar7
	mov	ar3,r6
	mov	r7,#0x00
	clr	c
	mov	a,_mbrtowc_sloc0_1_0
	subb	a,r3
	mov	a,(_mbrtowc_sloc0_1_0 + 1)
	subb	a,r7
	pop	ar7
	jnc	00164$
;	mbrtowc.c:70: return(-2);
	mov	_mbrtowc_sloc1_1_0,_mbrtowc_PARM_4
	mov	(_mbrtowc_sloc1_1_0 + 1),(_mbrtowc_PARM_4 + 1)
	mov	(_mbrtowc_sloc1_1_0 + 2),(_mbrtowc_PARM_4 + 2)
	mov	_mbrtowc_sloc2_1_0,_mbrtowc_PARM_2
	mov	(_mbrtowc_sloc2_1_0 + 1),(_mbrtowc_PARM_2 + 1)
	mov	(_mbrtowc_sloc2_1_0 + 2),(_mbrtowc_PARM_2 + 2)
	mov	_mbrtowc_sloc3_1_0,r7
	mov	_mbrtowc_sloc0_1_0,_mbrtowc_PARM_3
	mov	(_mbrtowc_sloc0_1_0 + 1),(_mbrtowc_PARM_3 + 1)
00134$:
;	mbrtowc.c:68: for(;n-- ; i++)
	mov	r2,_mbrtowc_sloc0_1_0
	mov	r3,(_mbrtowc_sloc0_1_0 + 1)
	dec	_mbrtowc_sloc0_1_0
	mov	a,#0xff
	cjne	a,_mbrtowc_sloc0_1_0,00293$
	dec	(_mbrtowc_sloc0_1_0 + 1)
00293$:
	mov	a,r2
	orl	a,r3
	jz	00115$
;	mbrtowc.c:69: ps->c[i] = *s++;
	mov	a,_mbrtowc_sloc3_1_0
	add	a,_mbrtowc_sloc1_1_0
	mov	_mbrtowc_sloc4_1_0,a
	clr	a
	addc	a,(_mbrtowc_sloc1_1_0 + 1)
	mov	(_mbrtowc_sloc4_1_0 + 1),a
	mov	(_mbrtowc_sloc4_1_0 + 2),(_mbrtowc_sloc1_1_0 + 2)
	mov	dpl,_mbrtowc_sloc2_1_0
	mov	dph,(_mbrtowc_sloc2_1_0 + 1)
	mov	b,(_mbrtowc_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	_mbrtowc_sloc2_1_0,dpl
	mov	(_mbrtowc_sloc2_1_0 + 1),dph
	mov	dpl,_mbrtowc_sloc4_1_0
	mov	dph,(_mbrtowc_sloc4_1_0 + 1)
	mov	b,(_mbrtowc_sloc4_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	mbrtowc.c:68: for(;n-- ; i++)
	inc	_mbrtowc_sloc3_1_0
	sjmp	00134$
00115$:
;	mbrtowc.c:70: return(-2);
	mov	dptr,#0xfffe
	ret
;	mbrtowc.c:73: for(j = 0; j < i; j++)
00164$:
	mov	_mbrtowc_sloc4_1_0,_mbrtowc_PARM_4
	mov	(_mbrtowc_sloc4_1_0 + 1),(_mbrtowc_PARM_4 + 1)
	mov	(_mbrtowc_sloc4_1_0 + 2),(_mbrtowc_PARM_4 + 2)
	mov	_mbrtowc_j_65536_10,#0x00
00137$:
	clr	c
	mov	a,_mbrtowc_j_65536_10
	subb	a,r7
	jnc	00118$
;	mbrtowc.c:74: ps->c[j] = 0;
	push	ar4
	push	ar5
	mov	a,_mbrtowc_j_65536_10
	add	a,_mbrtowc_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_mbrtowc_sloc4_1_0 + 1)
	mov	r3,a
	mov	r5,(_mbrtowc_sloc4_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	clr	a
	lcall	__gptrput
;	mbrtowc.c:73: for(j = 0; j < i; j++)
	inc	_mbrtowc_j_65536_10
	pop	ar5
	pop	ar4
	sjmp	00137$
00118$:
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	mov	_mbrtowc_PARM_3,#0x01
	mov	(_mbrtowc_PARM_3 + 1),#0x00
	mov	a,r7
	jz	00149$
	mov	ar7,r4
	sjmp	00150$
00149$:
	mov	r7,#0x01
	mov	r5,#0x00
00150$:
	mov	r3,_mbrtowc_PARM_2
	mov	r4,(_mbrtowc_PARM_2 + 1)
	mov	r5,(_mbrtowc_PARM_2 + 2)
	mov	_mbrtowc_sloc4_1_0,#0x01
	mov	(_mbrtowc_sloc4_1_0 + 1),#0x00
00140$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00121$
;	mbrtowc.c:78: mbseq[i] = *s++;
	push	ar6
	mov	a,r7
	add	a,#_mbrtowc_mbseq_65536_10
	mov	r1,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	@r1,ar2
;	mbrtowc.c:79: if((mbseq[i] & 0xc0) != 0x80)
	anl	ar2,#0xc0
	mov	r6,#0x00
	cjne	r2,#0x80,00298$
	cjne	r6,#0x00,00298$
	sjmp	00299$
00298$:
	pop	ar6
	ljmp	00128$
00299$:
	pop	ar6
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	r7
	inc	_mbrtowc_sloc4_1_0
	clr	a
	cjne	a,_mbrtowc_sloc4_1_0,00300$
	inc	(_mbrtowc_sloc4_1_0 + 1)
00300$:
	mov	_mbrtowc_PARM_3,_mbrtowc_sloc4_1_0
	mov	(_mbrtowc_PARM_3 + 1),(_mbrtowc_sloc4_1_0 + 1)
	sjmp	00140$
00121$:
;	mbrtowc.c:83: codepoint = first_byte;
	mov	r5,_mbrtowc_first_byte_65536_10
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r7,#0x00
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	_mbrtowc_sloc4_1_0,#(_mbrtowc_mbseq_65536_10 + 0x0001)
	mov	(_mbrtowc_sloc4_1_0 + 1),r7
	mov	(_mbrtowc_sloc4_1_0 + 2),#0x40
	mov	a,r6
	dec	a
	mov	_mbrtowc_sloc3_1_0,a
00143$:
	mov	a,_mbrtowc_sloc3_1_0
	jz	00122$
;	mbrtowc.c:87: codepoint <<= 6;
	mov	(_mbrtowc_codepoint_65536_10 + 2),r3
	mov	a,r7
	anl	a,#0x03
	mov	c,acc.0
	xch	a,(_mbrtowc_codepoint_65536_10 + 2)
	rrc	a
	xch	a,(_mbrtowc_codepoint_65536_10 + 2)
	rrc	a
	mov	c,acc.0
	xch	a,(_mbrtowc_codepoint_65536_10 + 2)
	rrc	a
	xch	a,(_mbrtowc_codepoint_65536_10 + 2)
	rrc	a
	xch	a,(_mbrtowc_codepoint_65536_10 + 2)
	mov	(_mbrtowc_codepoint_65536_10 + 3),a
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,(_mbrtowc_codepoint_65536_10 + 2)
	mov	(_mbrtowc_codepoint_65536_10 + 2),a
	mov	_mbrtowc_codepoint_65536_10,r5
	mov	a,r4
	anl	a,#0x03
	mov	c,acc.0
	xch	a,_mbrtowc_codepoint_65536_10
	rrc	a
	xch	a,_mbrtowc_codepoint_65536_10
	rrc	a
	mov	c,acc.0
	xch	a,_mbrtowc_codepoint_65536_10
	rrc	a
	xch	a,_mbrtowc_codepoint_65536_10
	rrc	a
	xch	a,_mbrtowc_codepoint_65536_10
	mov	(_mbrtowc_codepoint_65536_10 + 1),a
;	mbrtowc.c:88: codepoint |= (*s & 0x3f);
	mov	dpl,_mbrtowc_sloc4_1_0
	mov	dph,(_mbrtowc_sloc4_1_0 + 1)
	mov	b,(_mbrtowc_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	_mbrtowc_sloc4_1_0,dpl
	mov	(_mbrtowc_sloc4_1_0 + 1),dph
	anl	ar2,#0x3f
	mov	r6,#0x00
	mov	_mbrtowc_sloc5_1_0,r2
	mov	a,r6
	mov	(_mbrtowc_sloc5_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_mbrtowc_sloc5_1_0 + 2),a
	mov	(_mbrtowc_sloc5_1_0 + 3),a
	mov	a,_mbrtowc_sloc5_1_0
	orl	a,_mbrtowc_codepoint_65536_10
	mov	r5,a
	mov	a,(_mbrtowc_sloc5_1_0 + 1)
	orl	a,(_mbrtowc_codepoint_65536_10 + 1)
	mov	r4,a
	mov	a,(_mbrtowc_sloc5_1_0 + 2)
	orl	a,(_mbrtowc_codepoint_65536_10 + 2)
	mov	r3,a
	mov	a,(_mbrtowc_sloc5_1_0 + 3)
	orl	a,(_mbrtowc_codepoint_65536_10 + 3)
	mov	r7,a
;	mbrtowc.c:89: s++;
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	dec	_mbrtowc_sloc3_1_0
	ljmp	00143$
00122$:
;	mbrtowc.c:92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,r4
	subb	a,#0xd8
	mov	a,r3
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00124$
	mov	a,#0xff
	subb	a,r5
	mov	a,#0xdf
	subb	a,r4
	clr	a
	subb	a,r3
	clr	a
	subb	a,r7
	jc	00124$
;	mbrtowc.c:93: return(-1);
	mov	dptr,#0xffff
	ret
00124$:
;	mbrtowc.c:95: if(pwc)
	mov	a,_mbrtowc_pwc_65536_9
	orl	a,(_mbrtowc_pwc_65536_9 + 1)
	jz	00127$
;	mbrtowc.c:96: *pwc = codepoint;
	mov	dpl,_mbrtowc_pwc_65536_9
	mov	dph,(_mbrtowc_pwc_65536_9 + 1)
	mov	b,(_mbrtowc_pwc_65536_9 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00127$:
;	mbrtowc.c:97: return(n);
	mov	dpl,_mbrtowc_PARM_3
	mov	dph,(_mbrtowc_PARM_3 + 1)
;	mbrtowc.c:99: eilseq:
	ret
00128$:
;	mbrtowc.c:100: errno = EILSEQ;
	mov	_errno,#0x54
	mov	(_errno + 1),#0x00
;	mbrtowc.c:101: return(-1);
	mov	dptr,#0xffff
;	mbrtowc.c:102: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
