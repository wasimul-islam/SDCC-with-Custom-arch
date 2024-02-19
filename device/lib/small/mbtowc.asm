;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmcs51 --model-small
	
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
_mbtowc_sloc0_1_0:
	.ds 3
_mbtowc_sloc1_1_0:
	.ds 1
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbtowc_PARM_2'
;n                         Allocated with name '_mbtowc_PARM_3'
;pwc                       Allocated with name '_mbtowc_pwc_65536_39'
;codepoint                 Allocated with name '_mbtowc_codepoint_65536_40'
;seqlen                    Allocated with name '_mbtowc_seqlen_65536_40'
;i                         Allocated to registers 
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
	mov	_mbtowc_pwc_65536_39,dpl
	mov	(_mbtowc_pwc_65536_39 + 1),dph
	mov	(_mbtowc_pwc_65536_39 + 2),b
;	mbtowc.c:37: if(!s)
	mov	a,_mbtowc_PARM_2
	orl	a,(_mbtowc_PARM_2 + 1)
	jnz	00102$
;	mbtowc.c:38: return(0);
	mov	dptr,#0x0000
	ret
00102$:
;	mbtowc.c:40: seqlen = 1;
	mov	r4,#0x01
;	mbtowc.c:41: first_byte = *s;
	mov	r1,_mbtowc_PARM_2
	mov	r2,(_mbtowc_PARM_2 + 1)
	mov	r3,(_mbtowc_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
;	mbtowc.c:43: if(first_byte & 0x80)
	mov	_mbtowc_first_byte_65536_40,a
	jnb	acc.7,00107$
;	mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	mov	_mbtowc_seqlen_65536_40,#0x01
00103$:
	mov	b,_mbtowc_seqlen_65536_40
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00204$
00203$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
00204$:
	djnz	b,00203$
	mov	r0,_mbtowc_first_byte_65536_40
	mov	r7,#0x00
	mov	a,r0
	anl	ar5,a
	mov	a,r7
	anl	ar6,a
	mov	a,r5
	orl	a,r6
	jz	00143$
;	mbtowc.c:46: seqlen++;
	inc	_mbtowc_seqlen_65536_40
	sjmp	00103$
00143$:
;	mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	mov	a,_mbtowc_seqlen_65536_40
	mov	r4,a
	inc	a
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0xff
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00207$
00206$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
00207$:
	djnz	b,00206$
	mov	a,r7
	anl	_mbtowc_first_byte_65536_40,a
00107$:
;	mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	mov	a,r4
	add	a,#0xff - 0x04
	jc	00108$
	mov	ar6,r4
	mov	r7,#0x00
	clr	c
	mov	a,_mbtowc_PARM_3
	subb	a,r6
	mov	a,(_mbtowc_PARM_3 + 1)
	subb	a,r7
	jnc	00136$
00108$:
;	mbtowc.c:51: return(-1);
	mov	dptr,#0xffff
	ret
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
	mov	r7,#0x01
00121$:
	clr	c
	mov	a,r7
	subb	a,r4
	jnc	00113$
;	mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	mov	a,r7
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r5,a
	mov	ar6,r3
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	anl	ar0,#0xc0
	mov	r6,#0x00
	cjne	r0,#0x80,00211$
	cjne	r6,#0x00,00211$
	sjmp	00122$
00211$:
;	mbtowc.c:55: return(-1);
	mov	dptr,#0xffff
	ret
00122$:
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inc	r7
	sjmp	00121$
00113$:
;	mbtowc.c:57: codepoint = first_byte;
	mov	r5,_mbtowc_first_byte_65536_40
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	clr	a
	mov	r6,a
	mov	r0,a
	mov	r7,a
	mov	a,#0x01
	add	a,r1
	mov	_mbtowc_PARM_2,a
	clr	a
	addc	a,r2
	mov	(_mbtowc_PARM_2 + 1),a
	mov	(_mbtowc_PARM_2 + 2),r3
	mov	ar3,r4
	mov	a,r3
	dec	a
	mov	_mbtowc_sloc1_1_0,a
	mov	_mbtowc_sloc0_1_0,_mbtowc_PARM_2
	mov	(_mbtowc_sloc0_1_0 + 1),(_mbtowc_PARM_2 + 1)
	mov	(_mbtowc_sloc0_1_0 + 2),(_mbtowc_PARM_2 + 2)
00124$:
	mov	a,_mbtowc_sloc1_1_0
	jz	00114$
;	mbtowc.c:61: codepoint <<= 6;
	push	ar4
	mov	(_mbtowc_codepoint_65536_40 + 2),r0
	mov	a,r7
	anl	a,#0x03
	mov	c,acc.0
	xch	a,(_mbtowc_codepoint_65536_40 + 2)
	rrc	a
	xch	a,(_mbtowc_codepoint_65536_40 + 2)
	rrc	a
	mov	c,acc.0
	xch	a,(_mbtowc_codepoint_65536_40 + 2)
	rrc	a
	xch	a,(_mbtowc_codepoint_65536_40 + 2)
	rrc	a
	xch	a,(_mbtowc_codepoint_65536_40 + 2)
	mov	(_mbtowc_codepoint_65536_40 + 3),a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,(_mbtowc_codepoint_65536_40 + 2)
	mov	(_mbtowc_codepoint_65536_40 + 2),a
	mov	_mbtowc_codepoint_65536_40,r5
	mov	a,r6
	anl	a,#0x03
	mov	c,acc.0
	xch	a,_mbtowc_codepoint_65536_40
	rrc	a
	xch	a,_mbtowc_codepoint_65536_40
	rrc	a
	mov	c,acc.0
	xch	a,_mbtowc_codepoint_65536_40
	rrc	a
	xch	a,_mbtowc_codepoint_65536_40
	rrc	a
	xch	a,_mbtowc_codepoint_65536_40
	mov	(_mbtowc_codepoint_65536_40 + 1),a
;	mbtowc.c:62: codepoint |= (*s & 0x3f);
	mov	dpl,_mbtowc_sloc0_1_0
	mov	dph,(_mbtowc_sloc0_1_0 + 1)
	mov	b,(_mbtowc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	_mbtowc_sloc0_1_0,dpl
	mov	(_mbtowc_sloc0_1_0 + 1),dph
	mov	ar1,r2
	anl	ar1,#0x3f
	clr	a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	a,r1
	orl	a,_mbtowc_codepoint_65536_40
	mov	r5,a
	mov	a,r2
	orl	a,(_mbtowc_codepoint_65536_40 + 1)
	mov	r6,a
	mov	a,r3
	orl	a,(_mbtowc_codepoint_65536_40 + 2)
	mov	r0,a
	mov	a,r4
	orl	a,(_mbtowc_codepoint_65536_40 + 3)
	mov	r7,a
;	mbtowc.c:63: s++;
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	dec	_mbtowc_sloc1_1_0
	pop	ar4
	sjmp	00124$
00114$:
;	mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,r6
	subb	a,#0xd8
	mov	a,r0
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00116$
	mov	a,#0xff
	subb	a,r5
	mov	a,#0xdf
	subb	a,r6
	clr	a
	subb	a,r0
	clr	a
	subb	a,r7
	jc	00116$
;	mbtowc.c:67: return(-1);
	mov	dptr,#0xffff
	ret
00116$:
;	mbtowc.c:69: if(pwc)
	mov	a,_mbtowc_pwc_65536_39
	orl	a,(_mbtowc_pwc_65536_39 + 1)
	jz	00119$
;	mbtowc.c:70: *pwc = codepoint;
	mov	dpl,_mbtowc_pwc_65536_39
	mov	dph,(_mbtowc_pwc_65536_39 + 1)
	mov	b,(_mbtowc_pwc_65536_39 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00119$:
;	mbtowc.c:71: return(codepoint ? seqlen : 0);
	mov	a,r5
	orl	a,r6
	orl	a,r0
	orl	a,r7
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
