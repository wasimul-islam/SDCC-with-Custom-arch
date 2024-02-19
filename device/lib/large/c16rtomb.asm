;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb
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
_c16rtomb_sloc0_1_0:
	.ds 2
_c16rtomb_sloc1_1_0:
	.ds 3
_c16rtomb_sloc2_1_0:
	.ds 3
_c16rtomb_sloc3_1_0:
	.ds 2
_c16rtomb_sloc4_1_0:
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
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 3
_c16rtomb_s_65536_45:
	.ds 3
_c16rtomb_codepoint_65536_46:
	.ds 4
_c16rtomb_buf_65536_46:
	.ds 4
_c16rtomb_sps_65536_46:
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;sloc0                     Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1                     Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2                     Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3                     Allocated with name '_c16rtomb_sloc3_1_0'
;sloc4                     Allocated with name '_c16rtomb_sloc4_1_0'
;c16                       Allocated with name '_c16rtomb_PARM_2'
;ps                        Allocated with name '_c16rtomb_PARM_3'
;s                         Allocated with name '_c16rtomb_s_65536_45'
;codepoint                 Allocated with name '_c16rtomb_codepoint_65536_46'
;buf                       Allocated with name '_c16rtomb_buf_65536_46'
;sps                       Allocated with name '_c16rtomb_sps_65536_46'
;high_surrogate            Allocated with name '_c16rtomb_high_surrogate_131072_48'
;------------------------------------------------------------
;	c16rtomb.c:35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
_c16rtomb:
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
	mov	dptr,#_c16rtomb_s_65536_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	c16rtomb.c:41: if(!s)
	mov	dptr,#_c16rtomb_s_65536_45
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	c16rtomb.c:42: s = buf;
	mov	dptr,#_c16rtomb_s_65536_45
	mov	a,#_c16rtomb_buf_65536_46
	movx	@dptr,a
	mov	a,#(_c16rtomb_buf_65536_46 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00102$:
;	c16rtomb.c:44: if(!ps)
	mov	dptr,#_c16rtomb_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
;	c16rtomb.c:45: ps = &sps;
	mov	dptr,#_c16rtomb_PARM_3
	mov	a,#_c16rtomb_sps_65536_46
	movx	@dptr,a
	mov	a,#(_c16rtomb_sps_65536_46 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00104$:
;	c16rtomb.c:47: if (!c16) // 0 always resets conversion state.
	mov	dptr,#_c16rtomb_PARM_2
	movx	a,@dptr
	mov	_c16rtomb_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_c16rtomb_sloc0_1_0 + 1),a
	mov	a,_c16rtomb_sloc0_1_0
	orl	a,(_c16rtomb_sloc0_1_0 + 1)
	jnz	00119$
;	c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	mov	dptr,#_c16rtomb_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
;	c16rtomb.c:50: codepoint = 0;
	mov	dptr,#_c16rtomb_codepoint_65536_46
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00120$
00119$:
;	c16rtomb.c:52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	mov	dptr,#_c16rtomb_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jnz	00114$
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	jnz	00160$
	ljmp	00115$
00160$:
00114$:
;	c16rtomb.c:56: if(c16 < 0xdc00 || c16 > 0xdfff)
	mov	a,#0x100 - 0xdc
	add	a,(_c16rtomb_sloc0_1_0 + 1)
	jc	00161$
	ljmp	00121$
00161$:
	clr	c
	mov	a,#0xff
	subb	a,_c16rtomb_sloc0_1_0
	mov	a,#0xdf
	subb	a,(_c16rtomb_sloc0_1_0 + 1)
	jnc	00162$
	ljmp	00121$
00162$:
;	c16rtomb.c:59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	mov	dptr,#_c16rtomb_PARM_3
	movx	a,@dptr
	mov	_c16rtomb_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_c16rtomb_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_c16rtomb_sloc1_1_0 + 2),a
	mov	a,#0x01
	add	a,_c16rtomb_sloc1_1_0
	mov	_c16rtomb_sloc2_1_0,a
	clr	a
	addc	a,(_c16rtomb_sloc1_1_0 + 1)
	mov	(_c16rtomb_sloc2_1_0 + 1),a
	mov	(_c16rtomb_sloc2_1_0 + 2),(_c16rtomb_sloc1_1_0 + 2)
	mov	dpl,_c16rtomb_sloc2_1_0
	mov	dph,(_c16rtomb_sloc2_1_0 + 1)
	mov	b,(_c16rtomb_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	_c16rtomb_sloc3_1_0,r7
	mov	(_c16rtomb_sloc3_1_0 + 1),#0x00
	mov	a,#0x02
	add	a,_c16rtomb_sloc1_1_0
	mov	_c16rtomb_sloc1_1_0,a
	clr	a
	addc	a,(_c16rtomb_sloc1_1_0 + 1)
	mov	(_c16rtomb_sloc1_1_0 + 1),a
	mov	dpl,_c16rtomb_sloc1_1_0
	mov	dph,(_c16rtomb_sloc1_1_0 + 1)
	mov	b,(_c16rtomb_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	clr	a
	add	a,_c16rtomb_sloc3_1_0
	mov	r7,a
	mov	a,r6
	addc	a,(_c16rtomb_sloc3_1_0 + 1)
;	c16rtomb.c:60: ps->c[1] = ps->c[2] = 0;
	mov	dpl,_c16rtomb_sloc1_1_0
	mov	dph,(_c16rtomb_sloc1_1_0 + 1)
	mov	b,(_c16rtomb_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
	mov	dpl,_c16rtomb_sloc2_1_0
	mov	dph,(_c16rtomb_sloc2_1_0 + 1)
	mov	b,(_c16rtomb_sloc2_1_0 + 2)
	lcall	__gptrput
;	c16rtomb.c:61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	mov	r7,#0x00
	mov	a,_c16rtomb_sloc0_1_0
	add	a,r7
	mov	r7,a
	mov	a,(_c16rtomb_sloc0_1_0 + 1)
	addc	a,r6
	mov	r6,a
	mov	_c16rtomb_sloc4_1_0,r7
	mov	(_c16rtomb_sloc4_1_0 + 1),r6
	mov	(_c16rtomb_sloc4_1_0 + 2),#0x00
	mov	(_c16rtomb_sloc4_1_0 + 3),#0x00
	mov	dptr,#_c16rtomb_codepoint_65536_46
	mov	a,_c16rtomb_sloc4_1_0
	movx	@dptr,a
	mov	a,#0x24
	add	a,(_c16rtomb_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(_c16rtomb_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(_c16rtomb_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	sjmp	00120$
00115$:
;	c16rtomb.c:63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	clr	c
	mov	a,_c16rtomb_sloc0_1_0
	subb	a,#0xff
	mov	a,(_c16rtomb_sloc0_1_0 + 1)
	subb	a,#0xd7
	jc	00110$
	mov	a,#0x100 - 0xe0
	add	a,(_c16rtomb_sloc0_1_0 + 1)
	jnc	00111$
00110$:
;	c16rtomb.c:64: codepoint = c16;
	mov	dptr,#_c16rtomb_codepoint_65536_46
	mov	a,_c16rtomb_sloc0_1_0
	movx	@dptr,a
	mov	a,(_c16rtomb_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00120$
00111$:
;	c16rtomb.c:67: if(c16 > 0xdbff)
	clr	c
	mov	a,#0xff
	subb	a,_c16rtomb_sloc0_1_0
	mov	a,#0xdb
	subb	a,(_c16rtomb_sloc0_1_0 + 1)
	jc	00121$
;	c16rtomb.c:70: ps->c[1] = c16 & 0xff;
	mov	r6,_c16rtomb_sloc0_1_0
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	__gptrput
;	c16rtomb.c:71: ps->c[2] = c16 >> 8;
	mov	r7,(_c16rtomb_sloc0_1_0 + 1)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	c16rtomb.c:72: return(0);
	mov	dptr,#0x0000
	ret
00120$:
;	c16rtomb.c:75: return(wctomb(s, codepoint));
	mov	dptr,#_c16rtomb_s_65536_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_c16rtomb_codepoint_65536_46
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
	mov	dptr,#_wctomb_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	c16rtomb.c:77: eilseq:
	ljmp	_wctomb
00121$:
;	c16rtomb.c:78: errno = EILSEQ;
	mov	dptr,#_errno
	mov	a,#0x54
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	c16rtomb.c:79: return(-1);
	mov	dptr,#0xffff
;	c16rtomb.c:80: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
