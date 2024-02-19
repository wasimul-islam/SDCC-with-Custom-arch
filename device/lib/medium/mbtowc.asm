;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmcs51 --model-medium
	
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
	.ds 3
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
_mbtowc_PARM_2:
	.ds 3
_mbtowc_PARM_3:
	.ds 2
_mbtowc_codepoint_65536_40:
	.ds 4
_mbtowc_first_byte_65536_40:
	.ds 1
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mbtowc.c:37: if(!s)
	mov	r0,#_mbtowc_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00102$
;	mbtowc.c:38: return(0);
	mov	dptr,#0x0000
	ret
00102$:
;	mbtowc.c:40: seqlen = 1;
	mov	r4,#0x01
;	mbtowc.c:41: first_byte = *s;
	mov	r0,#_mbtowc_PARM_2
	movx	a,@r0
	mov	_mbtowc_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_mbtowc_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_mbtowc_sloc0_1_0 + 2),a
	mov	dpl,_mbtowc_sloc0_1_0
	mov	dph,(_mbtowc_sloc0_1_0 + 1)
	mov	b,(_mbtowc_sloc0_1_0 + 2)
	mov	r0,#_mbtowc_first_byte_65536_40
	lcall	__gptrget
	movx	@r0,a
;	mbtowc.c:43: if(first_byte & 0x80)
	mov	r0,#_mbtowc_first_byte_65536_40
	movx	a,@r0
	anl	a,#0x80
	jz	00107$
;	mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	mov	r2,#0x01
00103$:
	push	ar5
	push	ar6
	push	ar7
	mov	b,r2
	inc	b
	mov	r6,#0x80
	clr	a
	mov	r7,a
	rlc	a
	mov	ov,c
	sjmp	00204$
00203$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00204$:
	djnz	b,00203$
	mov	r0,#_mbtowc_first_byte_65536_40
	movx	a,@r0
	mov	r3,a
	mov	r5,#0x00
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00143$
;	mbtowc.c:46: seqlen++;
	inc	r2
	sjmp	00103$
00143$:
	mov	ar4,r2
;	mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	inc	r2
	mov	b,r2
	inc	b
	mov	r2,#0xff
	clr	a
	mov	r3,a
	rlc	a
	mov	ov,c
	sjmp	00207$
00206$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00207$:
	djnz	b,00206$
	mov	r0,#_mbtowc_first_byte_65536_40
	movx	a,@r0
	anl	a,r2
	movx	@r0,a
00107$:
;	mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	mov	a,r4
	add	a,#0xff - 0x04
	jc	00108$
	mov	ar2,r4
	mov	r3,#0x00
	mov	r0,#_mbtowc_PARM_3
	clr	c
	movx	a,@r0
	subb	a,r2
	inc	r0
	movx	a,@r0
	subb	a,r3
	jnc	00136$
00108$:
;	mbtowc.c:51: return(-1);
	mov	dptr,#0xffff
	ret
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
	mov	r3,#0x01
00121$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00113$
;	mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	push	ar5
	push	ar6
	push	ar7
	mov	a,r3
	add	a,_mbtowc_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_mbtowc_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_mbtowc_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0xc0
	mov	r7,#0x00
	cjne	r2,#0x80,00211$
	cjne	r7,#0x00,00211$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00122$
00211$:
	pop	ar7
	pop	ar6
	pop	ar5
;	mbtowc.c:55: return(-1);
	mov	dptr,#0xffff
	ret
00122$:
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inc	r3
	sjmp	00121$
00113$:
;	mbtowc.c:57: codepoint = first_byte;
	mov	r0,#_mbtowc_first_byte_65536_40
	movx	a,@r0
	mov	_mbtowc_sloc1_1_0,a
	mov	(_mbtowc_sloc1_1_0 + 1),#0x00
	mov	(_mbtowc_sloc1_1_0 + 2),#0x00
	mov	(_mbtowc_sloc1_1_0 + 3),#0x00
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	mov	r0,#_mbtowc_PARM_2
	mov	a,#0x01
	add	a,_mbtowc_sloc0_1_0
	movx	@r0,a
	clr	a
	addc	a,(_mbtowc_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,(_mbtowc_sloc0_1_0 + 2)
	inc	r0
	movx	@r0,a
	mov	ar3,r4
	dec	r3
	mov	r0,#_mbtowc_PARM_2
	movx	a,@r0
	mov	_mbtowc_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_mbtowc_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_mbtowc_sloc0_1_0 + 2),a
00124$:
	mov	a,r3
	jnz	00212$
	ljmp	00114$
00212$:
;	mbtowc.c:61: codepoint <<= 6;
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_mbtowc_codepoint_65536_40
	mov	a,(_mbtowc_sloc1_1_0 + 2)
	inc	r0
	inc	r0
	movx	@r0,a
	mov	b,(_mbtowc_sloc1_1_0 + 3)
	movx	a,@r0
	xch	a,b
	anl	a,#0x03
	mov	c,acc.0
	xch	a,b
	rrc	a
	xch	a,b
	rrc	a
	mov	c,acc.0
	xch	a,b
	rrc	a
	xch	a,b
	rrc	a
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	mov	a,(_mbtowc_sloc1_1_0 + 1)
	rr	a
	rr	a
	anl	a,#0x3f
	xch	a,b
	dec	r0
	movx	a,@r0
	orl	a,b
	movx	@r0,a
	mov	a,_mbtowc_sloc1_1_0
	dec	r0
	dec	r0
	movx	@r0,a
	mov	b,(_mbtowc_sloc1_1_0 + 1)
	movx	a,@r0
	xch	a,b
	anl	a,#0x03
	mov	c,acc.0
	xch	a,b
	rrc	a
	xch	a,b
	rrc	a
	mov	c,acc.0
	xch	a,b
	rrc	a
	xch	a,b
	rrc	a
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
;	mbtowc.c:62: codepoint |= (*s & 0x3f);
	mov	dpl,_mbtowc_sloc0_1_0
	mov	dph,(_mbtowc_sloc0_1_0 + 1)
	mov	b,(_mbtowc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	_mbtowc_sloc0_1_0,dpl
	mov	(_mbtowc_sloc0_1_0 + 1),dph
	anl	ar7,#0x3f
	clr	a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r2,a
	mov	r0,#_mbtowc_codepoint_65536_40
	movx	a,@r0
	orl	a,r7
	mov	_mbtowc_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	orl	a,r6
	mov	(_mbtowc_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	orl	a,r5
	mov	(_mbtowc_sloc1_1_0 + 2),a
	inc	r0
	movx	a,@r0
	orl	a,r2
	mov	(_mbtowc_sloc1_1_0 + 3),a
;	mbtowc.c:63: s++;
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	dec	r3
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00124$
00114$:
;	mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,(_mbtowc_sloc1_1_0 + 1)
	subb	a,#0xd8
	mov	a,(_mbtowc_sloc1_1_0 + 2)
	subb	a,#0x00
	mov	a,(_mbtowc_sloc1_1_0 + 3)
	subb	a,#0x00
	jc	00116$
	mov	a,#0xff
	subb	a,_mbtowc_sloc1_1_0
	mov	a,#0xdf
	subb	a,(_mbtowc_sloc1_1_0 + 1)
	clr	a
	subb	a,(_mbtowc_sloc1_1_0 + 2)
	clr	a
	subb	a,(_mbtowc_sloc1_1_0 + 3)
	jc	00116$
;	mbtowc.c:67: return(-1);
	mov	dptr,#0xffff
	ret
00116$:
;	mbtowc.c:69: if(pwc)
	mov	a,r5
	orl	a,r6
	jz	00119$
;	mbtowc.c:70: *pwc = codepoint;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_mbtowc_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbtowc_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbtowc_sloc1_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbtowc_sloc1_1_0 + 3)
	lcall	__gptrput
00119$:
;	mbtowc.c:71: return(codepoint ? seqlen : 0);
	mov	a,_mbtowc_sloc1_1_0
	orl	a,(_mbtowc_sloc1_1_0 + 1)
	orl	a,(_mbtowc_sloc1_1_0 + 2)
	orl	a,(_mbtowc_sloc1_1_0 + 3)
	jz	00128$
	mov	r7,#0x00
	sjmp	00129$
00128$:
	mov	r4,#0x00
	mov	r7,#0x00
00129$:
	mov	dpl,r4
	mov	dph,r7
;	mbtowc.c:72: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
