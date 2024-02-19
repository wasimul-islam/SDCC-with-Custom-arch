;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module wctomb
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
	.globl _wctomb_PARM_2
	.globl _wctomb
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wctomb_sloc0_1_0:
	.ds 2
_wctomb_sloc1_1_0:
	.ds 4
_wctomb_sloc2_1_0:
	.ds 2
_wctomb_sloc3_1_0:
	.ds 1
_wctomb_sloc4_1_0:
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
_wctomb_PARM_2:
	.ds 4
_wctomb_s_65536_36:
	.ds 2
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
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc                        Allocated with name '_wctomb_PARM_2'
;s                         Allocated with name '_wctomb_s_65536_36'
;sloc0                     Allocated with name '_wctomb_sloc0_1_0'
;sloc1                     Allocated with name '_wctomb_sloc1_1_0'
;sloc2                     Allocated with name '_wctomb_sloc2_1_0'
;sloc3                     Allocated with name '_wctomb_sloc3_1_0'
;sloc4                     Allocated with name '_wctomb_sloc4_1_0'
;------------------------------------------------------------
;../wctomb.c:31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wctomb:
	sta	(_wctomb_s_65536_36 + 1)
	stx	_wctomb_s_65536_36
;../wctomb.c:33: if(!s)
	lda	_wctomb_s_65536_36
	ora	(_wctomb_s_65536_36 + 1)
	bne	00102$
;../wctomb.c:34: return(0);
	clra
	tax
	rts
00102$:
;../wctomb.c:36: if(wc < 0x80)
	lda	(_wctomb_PARM_2 + 3)
	sub	#0x80
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcc	00117$
;../wctomb.c:38: s[0] = wc;
	lda	(_wctomb_PARM_2 + 3)
	ldhx	_wctomb_s_65536_36
	sta	,x
;../wctomb.c:39: return(1);
	lda	#0x01
	clrx
	rts
00117$:
;../wctomb.c:44: s[1] = (wc >> 0) & 0x3f | 0x80;
	ldhx	_wctomb_s_65536_36
	sthx	*_wctomb_sloc0_1_0
;../wctomb.c:43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	lda	(_wctomb_PARM_2 + 3)
	ldx	(_wctomb_PARM_2 + 2)
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	psha
	pulh
;../wctomb.c:41: else if(wc < 0x800)
	lda	(_wctomb_PARM_2 + 2)
	sub	#0x08
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcc	00114$
;../wctomb.c:43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	pshh
	pula
	and	#0x1f
	ora	#0xc0
	ldhx	_wctomb_s_65536_36
	sta	,x
;../wctomb.c:44: s[1] = (wc >> 0) & 0x3f | 0x80;
	lda	(_wctomb_PARM_2 + 3)
	and	#0x3f
	ora	#0x80
	ldhx	*_wctomb_sloc0_1_0
	sta	1,x
;../wctomb.c:45: return(2);
	lda	#0x02
	clrx
	rts
00114$:
;../wctomb.c:47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	lda	(_wctomb_PARM_2 + 2)
	sub	#0xd8
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcs	00110$
	lda	(_wctomb_PARM_2 + 2)
	sub	#0xe0
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcc	00110$
;../wctomb.c:48: return(-1);
	lda	#0xff
	tax
	rts
00110$:
;../wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	lda	(_wctomb_PARM_2 + 2)
	ldx	(_wctomb_PARM_2 + 1)
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	sta	*(_wctomb_sloc1_1_0 + 3)
	stx	*(_wctomb_sloc1_1_0 + 2)
	ldx	_wctomb_PARM_2
	clra
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	lsrx
	rora
	ora	*(_wctomb_sloc1_1_0 + 2)
	sta	*(_wctomb_sloc1_1_0 + 2)
	stx	*(_wctomb_sloc1_1_0 + 1)
	mov	#0x00,*_wctomb_sloc1_1_0
;../wctomb.c:53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc2_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc2_1_0 + 1)
;../wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	mov	*(_wctomb_sloc1_1_0 + 3),*_wctomb_sloc1_1_0
;../wctomb.c:52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	pshh
	pula
	and	#0x3f
	ora	#0x80
	sta	*_wctomb_sloc3_1_0
;../wctomb.c:49: else if(wc < 0x10000)
	lda	(_wctomb_PARM_2 + 1)
	sub	#0x01
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcc	00107$
;../wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	lda	*_wctomb_sloc1_1_0
	and	#0x0f
	ora	#0xe0
	ldhx	_wctomb_s_65536_36
	sta	,x
;../wctomb.c:52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	ldhx	*_wctomb_sloc0_1_0
	lda	*_wctomb_sloc3_1_0
	sta	1,x
;../wctomb.c:53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	lda	(_wctomb_PARM_2 + 3)
	and	#0x3f
	ora	#0x80
	ldhx	*_wctomb_sloc2_1_0
	sta	2,x
;../wctomb.c:54: return(3);
	lda	#0x03
	clrx
	rts
00107$:
;../wctomb.c:56: else if(wc < 0x110000)
	lda	(_wctomb_PARM_2 + 1)
	sub	#0x11
	lda	_wctomb_PARM_2
	sbc	#0x00
	bcc	00104$
;../wctomb.c:58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	lda	(_wctomb_PARM_2 + 1)
	ldx	_wctomb_PARM_2
	lsrx
	rora
	lsrx
	rora
	sta	*(_wctomb_sloc4_1_0 + 3)
	stx	*(_wctomb_sloc4_1_0 + 2)
	mov	#0x00,*(_wctomb_sloc4_1_0 + 1)
	mov	#0x00,*_wctomb_sloc4_1_0
	lda	*(_wctomb_sloc4_1_0 + 3)
	and	#0x07
	ora	#0xf0
	ldhx	_wctomb_s_65536_36
	sta	,x
;../wctomb.c:59: s[1] = (wc >> 12) & 0x3f | 0x80;
	lda	*_wctomb_sloc1_1_0
	and	#0x3f
	ora	#0x80
	ldhx	*_wctomb_sloc0_1_0
	sta	1,x
;../wctomb.c:60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	ldhx	*_wctomb_sloc2_1_0
	lda	*_wctomb_sloc3_1_0
	sta	2,x
;../wctomb.c:61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	ldhx	_wctomb_s_65536_36
	lda	(_wctomb_PARM_2 + 3)
	and	#0x3f
	ora	#0x80
	sta	3,x
;../wctomb.c:62: return(4);
	lda	#0x04
	clrx
	rts
00104$:
;../wctomb.c:65: return(-1);
	lda	#0xff
	tax
;../wctomb.c:66: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
