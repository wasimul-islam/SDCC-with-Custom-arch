;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mmcs51 --model-small
	
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
_c16rtomb_sps_65536_46:
	.ds 3
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 3
_c16rtomb_s_65536_45:
	.ds 3
_c16rtomb_buf_65536_46:
	.ds 4
_c16rtomb_high_surrogate_131072_48:
	.ds 2
_c16rtomb_sloc0_1_0:
	.ds 3
_c16rtomb_sloc1_1_0:
	.ds 3
_c16rtomb_sloc2_1_0:
	.ds 3
_c16rtomb_sloc3_1_0:
	.ds 2
_c16rtomb_sloc4_1_0:
	.ds 2
_c16rtomb_sloc5_1_0:
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;sps                       Allocated with name '_c16rtomb_sps_65536_46'
;c16                       Allocated with name '_c16rtomb_PARM_2'
;ps                        Allocated with name '_c16rtomb_PARM_3'
;s                         Allocated with name '_c16rtomb_s_65536_45'
;codepoint                 Allocated to registers r4 r5 r6 r7 
;buf                       Allocated with name '_c16rtomb_buf_65536_46'
;high_surrogate            Allocated with name '_c16rtomb_high_surrogate_131072_48'
;sloc0                     Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1                     Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2                     Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3                     Allocated with name '_c16rtomb_sloc3_1_0'
;sloc4                     Allocated with name '_c16rtomb_sloc4_1_0'
;sloc5                     Allocated with name '_c16rtomb_sloc5_1_0'
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
	mov	_c16rtomb_s_65536_45,dpl
	mov	(_c16rtomb_s_65536_45 + 1),dph
	mov	(_c16rtomb_s_65536_45 + 2),b
;	c16rtomb.c:41: if(!s)
	mov	a,_c16rtomb_s_65536_45
	orl	a,(_c16rtomb_s_65536_45 + 1)
;	c16rtomb.c:42: s = buf;
	jnz	00102$
	mov	_c16rtomb_s_65536_45,#_c16rtomb_buf_65536_46
	mov	(_c16rtomb_s_65536_45 + 1),a
	mov	(_c16rtomb_s_65536_45 + 2),#0x40
00102$:
;	c16rtomb.c:44: if(!ps)
	mov	a,_c16rtomb_PARM_3
	orl	a,(_c16rtomb_PARM_3 + 1)
;	c16rtomb.c:45: ps = &sps;
	jnz	00104$
	mov	_c16rtomb_PARM_3,#_c16rtomb_sps_65536_46
	mov	(_c16rtomb_PARM_3 + 1),a
	mov	(_c16rtomb_PARM_3 + 2),#0x40
00104$:
;	c16rtomb.c:47: if (!c16) // 0 always resets conversion state.
	mov	a,_c16rtomb_PARM_2
	orl	a,(_c16rtomb_PARM_2 + 1)
	jnz	00119$
;	c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	mov	r2,_c16rtomb_PARM_3
	mov	r3,(_c16rtomb_PARM_3 + 1)
	mov	r4,(_c16rtomb_PARM_3 + 2)
	mov	a,#0x01
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrput
;	c16rtomb.c:50: codepoint = 0;
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	ljmp	00120$
00119$:
;	c16rtomb.c:52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	mov	r1,_c16rtomb_PARM_3
	mov	r2,(_c16rtomb_PARM_3 + 1)
	mov	r3,(_c16rtomb_PARM_3 + 2)
	mov	a,#0x01
	add	a,r1
	mov	_c16rtomb_sloc0_1_0,a
	clr	a
	addc	a,r2
	mov	(_c16rtomb_sloc0_1_0 + 1),a
	mov	(_c16rtomb_sloc0_1_0 + 2),r3
	mov	dpl,_c16rtomb_sloc0_1_0
	mov	dph,(_c16rtomb_sloc0_1_0 + 1)
	mov	b,(_c16rtomb_sloc0_1_0 + 2)
	lcall	__gptrget
	jnz	00114$
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00160$
	ljmp	00115$
00160$:
00114$:
;	c16rtomb.c:56: if(c16 < 0xdc00 || c16 > 0xdfff)
	mov	a,#0x100 - 0xdc
	add	a,(_c16rtomb_PARM_2 + 1)
	jc	00161$
	ljmp	00121$
00161$:
	clr	c
	mov	a,#0xff
	subb	a,_c16rtomb_PARM_2
	mov	a,#0xdf
	subb	a,(_c16rtomb_PARM_2 + 1)
	jnc	00162$
	ljmp	00121$
00162$:
;	c16rtomb.c:59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	mov	_c16rtomb_sloc1_1_0,_c16rtomb_PARM_3
	mov	(_c16rtomb_sloc1_1_0 + 1),(_c16rtomb_PARM_3 + 1)
	mov	(_c16rtomb_sloc1_1_0 + 2),(_c16rtomb_PARM_3 + 2)
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
	mov	r0,a
	mov	_c16rtomb_sloc3_1_0,r0
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
	mov	r0,a
	mov	_c16rtomb_sloc4_1_0,r0
	mov	(_c16rtomb_sloc4_1_0 + 1),_c16rtomb_sloc4_1_0
	clr	a
	mov	_c16rtomb_sloc4_1_0,a
	add	a,_c16rtomb_sloc3_1_0
	mov	_c16rtomb_high_surrogate_131072_48,a
	mov	a,(_c16rtomb_sloc4_1_0 + 1)
	addc	a,(_c16rtomb_sloc3_1_0 + 1)
	mov	(_c16rtomb_high_surrogate_131072_48 + 1),a
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
	mov	a,_c16rtomb_high_surrogate_131072_48
	add	a,_c16rtomb_high_surrogate_131072_48
	add	a,acc
	mov	(_c16rtomb_sloc4_1_0 + 1),a
	mov	_c16rtomb_sloc4_1_0,#0x00
	mov	a,_c16rtomb_PARM_2
	add	a,_c16rtomb_sloc4_1_0
	mov	_c16rtomb_sloc4_1_0,a
	mov	a,(_c16rtomb_PARM_2 + 1)
	addc	a,(_c16rtomb_sloc4_1_0 + 1)
	mov	(_c16rtomb_sloc4_1_0 + 1),a
	mov	_c16rtomb_sloc5_1_0,_c16rtomb_sloc4_1_0
	mov	(_c16rtomb_sloc5_1_0 + 1),(_c16rtomb_sloc4_1_0 + 1)
	mov	(_c16rtomb_sloc5_1_0 + 2),#0x00
	mov	(_c16rtomb_sloc5_1_0 + 3),#0x00
	mov	r4,_c16rtomb_sloc5_1_0
	mov	a,#0x24
	add	a,(_c16rtomb_sloc5_1_0 + 1)
	mov	r5,a
	clr	a
	addc	a,(_c16rtomb_sloc5_1_0 + 2)
	mov	r6,a
	clr	a
	addc	a,(_c16rtomb_sloc5_1_0 + 3)
	mov	r7,a
	sjmp	00120$
00115$:
;	c16rtomb.c:63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	clr	c
	mov	a,_c16rtomb_PARM_2
	subb	a,#0xff
	mov	a,(_c16rtomb_PARM_2 + 1)
	subb	a,#0xd7
	jc	00110$
	mov	a,#0x100 - 0xe0
	add	a,(_c16rtomb_PARM_2 + 1)
	jnc	00111$
00110$:
;	c16rtomb.c:64: codepoint = c16;
	mov	r4,_c16rtomb_PARM_2
	mov	r5,(_c16rtomb_PARM_2 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00120$
00111$:
;	c16rtomb.c:67: if(c16 > 0xdbff)
	clr	c
	mov	a,#0xff
	subb	a,_c16rtomb_PARM_2
	mov	a,#0xdb
	subb	a,(_c16rtomb_PARM_2 + 1)
	jc	00121$
;	c16rtomb.c:70: ps->c[1] = c16 & 0xff;
	mov	r0,_c16rtomb_PARM_2
	mov	dpl,_c16rtomb_sloc0_1_0
	mov	dph,(_c16rtomb_sloc0_1_0 + 1)
	mov	b,(_c16rtomb_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	c16rtomb.c:71: ps->c[2] = c16 >> 8;
	mov	r0,(_c16rtomb_PARM_2 + 1)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	c16rtomb.c:72: return(0);
	mov	dptr,#0x0000
	ret
00120$:
;	c16rtomb.c:75: return(wctomb(s, codepoint));
	mov	_wctomb_PARM_2,r4
	mov	(_wctomb_PARM_2 + 1),r5
	mov	(_wctomb_PARM_2 + 2),r6
	mov	(_wctomb_PARM_2 + 3),r7
	mov	dpl,_c16rtomb_s_65536_45
	mov	dph,(_c16rtomb_s_65536_45 + 1)
	mov	b,(_c16rtomb_s_65536_45 + 2)
;	c16rtomb.c:77: eilseq:
	ljmp	_wctomb
00121$:
;	c16rtomb.c:78: errno = EILSEQ;
	mov	_errno,#0x54
	mov	(_errno + 1),#0x00
;	c16rtomb.c:79: return(-1);
	mov	dptr,#0xffff
;	c16rtomb.c:80: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
