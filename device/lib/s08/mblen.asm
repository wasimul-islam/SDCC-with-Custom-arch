;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module mblen
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
	.globl _mblen_PARM_2
	.globl _mblen
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mblen_sloc0_1_0:
	.ds 2
_mblen_sloc1_1_0:
	.ds 2
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
_mblen_PARM_2:
	.ds 2
_mblen_s_65536_36:
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n                         Allocated with name '_mblen_PARM_2'
;s                         Allocated with name '_mblen_s_65536_36'
;m                         Allocated to registers 
;c                         Allocated to registers x 
;sloc0                     Allocated with name '_mblen_sloc0_1_0'
;sloc1                     Allocated with name '_mblen_sloc1_1_0'
;------------------------------------------------------------
;../mblen.c:31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mblen:
	sta	(_mblen_s_65536_36 + 1)
	stx	_mblen_s_65536_36
;../mblen.c:36: if(!s)
	lda	_mblen_s_65536_36
	ora	(_mblen_s_65536_36 + 1)
	bne	00102$
;../mblen.c:37: return(0);
	clra
	tax
	rts
00102$:
;../mblen.c:39: if(!n)
	lda	_mblen_PARM_2
	ora	(_mblen_PARM_2 + 1)
	bne	00104$
;../mblen.c:40: return(-1);
	lda	#0xff
	tax
	rts
00104$:
;../mblen.c:42: c = *s;
	ldhx	_mblen_s_65536_36
	ldx	,x
;../mblen.c:44: if(!c)
	tstx
	bne	00106$
;../mblen.c:45: return(0);
	clra
	tax
	rts
00106$:
;../mblen.c:47: if(c <= 0x7f)
	cpx	#0x7f
	bhi	00126$
;../mblen.c:48: return(1);
	lda	#0x01
	clrx
	rts
;../mblen.c:50: while(c & 0x80)
00126$:
	clra
00109$:
	tstx
	bpl     00111$
;../mblen.c:52: c <<= 1;
	psha
	txa
	lsla	
	tax
	pula
;../mblen.c:53: m++;
	inca
	bra	00109$
00111$:
;../mblen.c:56: if(m > n)
	sta	*(_mblen_sloc0_1_0 + 1)
	mov	#0x00,*_mblen_sloc0_1_0
	ldhx	*_mblen_sloc0_1_0
	cphx	_mblen_PARM_2
	bls	00129$
;../mblen.c:57: return(-1);
	lda	#0xff
	tax
	rts
;../mblen.c:60: while(--m)
00129$:
	ldhx	_mblen_s_65536_36
	sthx	*_mblen_sloc1_1_0
00116$:
	deca
	tsta
	beq	00118$
;../mblen.c:61: if((*++s & 0xc0) != 0x80)
	ldhx	*_mblen_sloc1_1_0
	aix	#1
	sthx	*_mblen_sloc1_1_0
	ldhx	*_mblen_sloc1_1_0
	ldx	,x
	clrh
	psha
	txa
	and	#0xc0
	tax
	pula
	cphx	#0x0080
	beq	00116$
;../mblen.c:62: return(-1);
	lda	#0xff
	tax
	rts
00118$:
;../mblen.c:64: return(n);
	ldx	*_mblen_sloc0_1_0
	lda	*(_mblen_sloc0_1_0 + 1)
;../mblen.c:65: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
