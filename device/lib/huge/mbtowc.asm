;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_mbtowc_sloc0_1_0:
	.ds 2
_mbtowc_sloc1_1_0:
	.ds 4
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
_mbtowc_PARM_2:
	.ds 3
_mbtowc_PARM_3:
	.ds 2
_mbtowc_pwc_65536_39:
	.ds 3
_mbtowc_codepoint_65536_40:
	.ds 4
_mbtowc_seqlen_65536_40:
	.ds 1
_mbtowc_first_byte_65536_40:
	.ds 1
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbtowc_PARM_2'
;n                         Allocated with name '_mbtowc_PARM_3'
;pwc                       Allocated with name '_mbtowc_pwc_65536_39'
;codepoint                 Allocated with name '_mbtowc_codepoint_65536_40'
;seqlen                    Allocated with name '_mbtowc_seqlen_65536_40'
;i                         Allocated with name '_mbtowc_i_65536_40'
;first_byte                Allocated with name '_mbtowc_first_byte_65536_40'
;sloc0                     Allocated with name '_mbtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbtowc_sloc1_1_0'
;------------------------------------------------------------
;	mbtowc.c:31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
_mbtowc:
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
	mov	dptr,#_mbtowc_pwc_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbtowc.c:37: if(!s)
	mov	dptr,#_mbtowc_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	mbtowc.c:38: return(0);
	mov	dptr,#0x0000
	ljmp	__sdcc_banked_ret
00102$:
;	mbtowc.c:40: seqlen = 1;
	mov	dptr,#_mbtowc_seqlen_65536_40
	mov	a,#0x01
	movx	@dptr,a
;	mbtowc.c:41: first_byte = *s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_mbtowc_first_byte_65536_40
	movx	@dptr,a
;	mbtowc.c:43: if(first_byte & 0x80)
	mov	a,r4
	jnb	acc.7,00107$
;	mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	mov	r3,#0x01
00103$:
	push	ar5
	push	ar6
	push	ar7
	mov	b,r3
	inc	b
	mov	r1,#0x80
	clr	a
	mov	r2,a
	rlc	a
	mov	ov,c
	sjmp	00190$
00189$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
00190$:
	djnz	b,00189$
	mov	ar0,r4
	mov	r7,#0x00
	mov	a,r0
	anl	ar1,a
	mov	a,r7
	anl	ar2,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r1
	orl	a,r2
	jz	00143$
;	mbtowc.c:46: seqlen++;
	inc	r3
	sjmp	00103$
00143$:
	mov	dptr,#_mbtowc_seqlen_65536_40
	mov	a,r3
	movx	@dptr,a
;	mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	inc	r3
	mov	b,r3
	inc	b
	mov	r3,#0xff
	clr	a
	mov	r2,a
	rlc	a
	mov	ov,c
	sjmp	00193$
00192$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r3
	rrc	a
	mov	r3,a
00193$:
	djnz	b,00192$
	mov	dptr,#_mbtowc_first_byte_65536_40
	mov	a,r3
	anl	a,r4
	movx	@dptr,a
00107$:
;	mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	mov	dptr,#_mbtowc_seqlen_65536_40
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x04
	jc	00108$
	mov	dptr,#_mbtowc_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r1
	jnc	00136$
00108$:
;	mbtowc.c:51: return(-1);
	mov	dptr,#0xffff
	ljmp	__sdcc_banked_ret
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
	mov	r3,#0x01
00121$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00113$
;	mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	anl	ar0,#0xc0
	mov	r2,#0x00
	cjne	r0,#0x80,00197$
	cjne	r2,#0x00,00197$
	sjmp	00122$
00197$:
;	mbtowc.c:55: return(-1);
	mov	dptr,#0xffff
	ljmp	__sdcc_banked_ret
00122$:
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inc	r3
	sjmp	00121$
00113$:
;	mbtowc.c:57: codepoint = first_byte;
	mov	dptr,#_mbtowc_first_byte_65536_40
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_mbtowc_codepoint_65536_40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	mov	dptr,#_mbtowc_PARM_2
	inc	a
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	dec	a
	mov	r7,a
	mov	dptr,#_mbtowc_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00124$:
	mov	a,r7
	jnz	00198$
	ljmp	00114$
00198$:
;	mbtowc.c:61: codepoint <<= 6;
	mov	dptr,#_mbtowc_codepoint_65536_40
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
	mov	dptr,#_mbtowc_codepoint_65536_40
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
;	mbtowc.c:62: codepoint |= (*s & 0x3f);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	r2,#0x00
	mov	a,#0x3f
	anl	a,r3
	mov	_mbtowc_sloc0_1_0,a
	mov	(_mbtowc_sloc0_1_0 + 1),r2
	mov	dptr,#_mbtowc_codepoint_65536_40
	movx	a,@dptr
	mov	_mbtowc_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbtowc_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbtowc_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbtowc_sloc1_1_0 + 3),a
	mov	r0,_mbtowc_sloc0_1_0
	mov	a,(_mbtowc_sloc0_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	dptr,#_mbtowc_codepoint_65536_40
	mov	a,r0
	orl	a,_mbtowc_sloc1_1_0
	movx	@dptr,a
	mov	a,r1
	orl	a,(_mbtowc_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	orl	a,(_mbtowc_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	orl	a,(_mbtowc_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	mbtowc.c:63: s++;
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	dec	r7
	ljmp	00124$
00114$:
;	mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	mov	dptr,#_mbtowc_codepoint_65536_40
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
	jc	00116$
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xdf
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00116$
;	mbtowc.c:67: return(-1);
	mov	dptr,#0xffff
	sjmp	00126$
00116$:
;	mbtowc.c:69: if(pwc)
	mov	dptr,#_mbtowc_pwc_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbtowc_pwc_65536_39
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00119$
;	mbtowc.c:70: *pwc = codepoint;
	mov	dptr,#_mbtowc_codepoint_65536_40
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
00119$:
;	mbtowc.c:71: return(codepoint ? seqlen : 0);
	mov	dptr,#_mbtowc_codepoint_65536_40
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00128$
	mov	dptr,#_mbtowc_seqlen_65536_40
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	sjmp	00129$
00128$:
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	dpl,r6
	mov	dph,r7
00126$:
;	mbtowc.c:72: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
