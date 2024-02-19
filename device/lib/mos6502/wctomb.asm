;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb_PARM_2
	.globl _wctomb
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wctomb_sloc0_1_0:
	.ds 2
_wctomb_sloc1_1_0:
	.ds 4
_wctomb_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wctomb_PARM_2:
	.ds 4
_wctomb_s_65536_36:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc                        Allocated with name '_wctomb_PARM_2'
;s                         Allocated with name '_wctomb_s_65536_36'
;sloc0                     Allocated with name '_wctomb_sloc0_1_0'
;sloc1                     Allocated with name '_wctomb_sloc1_1_0'
;sloc2                     Allocated with name '_wctomb_sloc2_1_0'
;------------------------------------------------------------
;	../wctomb.c: 31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wctomb:
	sta	_wctomb_s_65536_36
	stx	(_wctomb_s_65536_36 + 1)
;	../wctomb.c: 33: if(!s)
	lda	(_wctomb_s_65536_36 + 1)
	ora	_wctomb_s_65536_36
	bne	00102$
;	../wctomb.c: 34: return(0);
	lda	#0x00
	tax
	rts
00102$:
;	../wctomb.c: 36: if(wc < 0x80)
	lda	_wctomb_PARM_2
	sec
	sbc	#0x80
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00117$
;	../wctomb.c: 38: s[0] = wc;
	lda	_wctomb_PARM_2
	sta	*(__TEMP+0)
	lda	_wctomb_s_65536_36
	sta	*(__DPTR+0)
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 39: return(1);
	lda	#0x01
	ldx	#0x00
	rts
00117$:
;	../wctomb.c: 41: else if(wc < 0x800)
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0x08
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00114$
;	../wctomb.c: 43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	lda	_wctomb_PARM_2
	ldx	(_wctomb_PARM_2 + 1)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x1f
	ora	#0xc0
	sta	*(__TEMP+0)
	lda	_wctomb_s_65536_36
	sta	*(__DPTR+0)
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 44: s[1] = (wc >> 0) & 0x3f | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc0_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc0_1_0 + 1)
	lda	_wctomb_PARM_2
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc0_1_0],y
;	../wctomb.c: 45: return(2);
	lda	#0x02
	ldx	#0x00
	rts
00114$:
;	../wctomb.c: 47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0xd8
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcc	00110$
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0xe0
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00110$
;	../wctomb.c: 48: return(-1);
	lda	#0xff
	tax
	rts
00110$:
;	../wctomb.c: 49: else if(wc < 0x10000)
	lda	(_wctomb_PARM_2 + 2)
	sec
	sbc	#0x01
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcc	00154$
	jmp	00107$
00154$:
;	../wctomb.c: 51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	lda	(_wctomb_PARM_2 + 1)
	ldx	(_wctomb_PARM_2 + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_wctomb_sloc1_1_0
	stx	*(_wctomb_sloc1_1_0 + 1)
	ldx	(_wctomb_PARM_2 + 3)
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	ora	*(_wctomb_sloc1_1_0 + 1)
	sta	*(_wctomb_sloc1_1_0 + 1)
	stx	*(_wctomb_sloc1_1_0 + 2)
	ldy	#0x00
	sty	*(_wctomb_sloc1_1_0 + 3)
	lda	*_wctomb_sloc1_1_0
	and	#0x0f
	ora	#0xe0
	sta	*(__TEMP+0)
	lda	_wctomb_s_65536_36
	sta	*(__DPTR+0)
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../wctomb.c: 52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc1_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	_wctomb_PARM_2
	ldx	(_wctomb_PARM_2 + 1)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	../wctomb.c: 53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc1_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	_wctomb_PARM_2
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	../wctomb.c: 54: return(3);
	lda	#0x03
	ldx	#0x00
	rts
00107$:
;	../wctomb.c: 56: else if(wc < 0x110000)
	lda	(_wctomb_PARM_2 + 2)
	sec
	sbc	#0x11
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcc	00155$
	jmp	00104$
00155$:
;	../wctomb.c: 58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	lda	(_wctomb_PARM_2 + 2)
	ldx	(_wctomb_PARM_2 + 3)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_wctomb_sloc1_1_0
	stx	*(_wctomb_sloc1_1_0 + 1)
	ldy	#0x00
	sty	*(_wctomb_sloc1_1_0 + 2)
	sty	*(_wctomb_sloc1_1_0 + 3)
	lda	*_wctomb_sloc1_1_0
	and	#0x07
	ora	#0xf0
	sta	*(__TEMP+0)
	lda	_wctomb_s_65536_36
	sta	*(__DPTR+0)
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../wctomb.c: 59: s[1] = (wc >> 12) & 0x3f | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc1_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	(_wctomb_PARM_2 + 1)
	ldx	(_wctomb_PARM_2 + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_wctomb_sloc2_1_0
	stx	*(_wctomb_sloc2_1_0 + 1)
	ldx	(_wctomb_PARM_2 + 3)
	tya
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	ora	*(_wctomb_sloc2_1_0 + 1)
	sta	*(_wctomb_sloc2_1_0 + 1)
	stx	*(_wctomb_sloc2_1_0 + 2)
	sty	*(_wctomb_sloc2_1_0 + 3)
	lda	*_wctomb_sloc2_1_0
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	../wctomb.c: 60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc2_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc2_1_0 + 1)
	lda	_wctomb_PARM_2
	ldx	(_wctomb_PARM_2 + 1)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc2_1_0],y
;	../wctomb.c: 61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	lda	_wctomb_s_65536_36
	sta	*_wctomb_sloc2_1_0
	lda	(_wctomb_s_65536_36 + 1)
	sta	*(_wctomb_sloc2_1_0 + 1)
	lda	_wctomb_PARM_2
	and	#0x3f
	ora	#0x80
	iny
	sta	[*_wctomb_sloc2_1_0],y
;	../wctomb.c: 62: return(4);
	lda	#0x04
	ldx	#0x00
	rts
00104$:
;	../wctomb.c: 65: return(-1);
	lda	#0xff
	tax
;	../wctomb.c: 66: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
