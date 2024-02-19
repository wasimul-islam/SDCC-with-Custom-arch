;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mblen
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mblen_PARM_2
	.globl _mblen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mblen_sloc0_1_0:
	.ds 2
_mblen_sloc1_1_0:
	.ds 2
_mblen_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mblen_PARM_2:
	.ds 2
_mblen_s_65536_36:
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n                         Allocated with name '_mblen_PARM_2'
;s                         Allocated with name '_mblen_s_65536_36'
;m                         Allocated to registers 
;c                         Allocated to registers x 
;sloc0                     Allocated with name '_mblen_sloc0_1_0'
;sloc1                     Allocated with name '_mblen_sloc1_1_0'
;sloc2                     Allocated with name '_mblen_sloc2_1_0'
;------------------------------------------------------------
;	../mblen.c: 31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mblen:
	sta	_mblen_s_65536_36
	stx	(_mblen_s_65536_36 + 1)
;	../mblen.c: 36: if(!s)
	lda	(_mblen_s_65536_36 + 1)
	ora	_mblen_s_65536_36
	bne	00102$
;	../mblen.c: 37: return(0);
	lda	#0x00
	tax
	rts
00102$:
;	../mblen.c: 39: if(!n)
	lda	(_mblen_PARM_2 + 1)
	ora	_mblen_PARM_2
	bne	00104$
;	../mblen.c: 40: return(-1);
	lda	#0xff
	tax
	rts
00104$:
;	../mblen.c: 42: c = *s;
	lda	_mblen_s_65536_36
	sta	*(__DPTR+0)
	lda	(_mblen_s_65536_36 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
;	../mblen.c: 44: if(!c)
	tax
	bne	00106$
;	../mblen.c: 45: return(0);
	tya
	tax
	rts
00106$:
;	../mblen.c: 47: if(c <= 0x7f)
	cpx	#0x7f
	beq	00165$
	bcs	00126$
00165$:
;	../mblen.c: 48: return(1);
	lda	#0x01
	ldx	#0x00
	rts
;	../mblen.c: 50: while(c & 0x80)
00126$:
	ldy	#0x00
00109$:
	lda	#0x80
	stx	*(__TEMP+0)
	and	*(__TEMP+0)
	beq	00111$
;	../mblen.c: 52: c <<= 1;
	txa
	asl	a
	tax
;	../mblen.c: 53: m++;
	iny
	jmp	00109$
00111$:
;	../mblen.c: 56: if(m > n)
	sty	*_mblen_sloc0_1_0
	ldx	#0x00
	stx	*(_mblen_sloc0_1_0 + 1)
	lda	_mblen_PARM_2
	sec
	sbc	*_mblen_sloc0_1_0
	lda	(_mblen_PARM_2 + 1)
	sbc	*(_mblen_sloc0_1_0 + 1)
	bcs	00129$
;	../mblen.c: 57: return(-1);
	lda	#0xff
	tax
	rts
;	../mblen.c: 60: while(--m)
00129$:
	lda	_mblen_s_65536_36
	sta	*_mblen_sloc1_1_0
	lda	(_mblen_s_65536_36 + 1)
	sta	*(_mblen_sloc1_1_0 + 1)
	sty	*_mblen_sloc2_1_0
00116$:
	dec	*_mblen_sloc2_1_0
	lda	*_mblen_sloc2_1_0
	beq	00118$
;	../mblen.c: 61: if((*++s & 0xc0) != 0x80)
	inc	*_mblen_sloc1_1_0
	bne	00170$
	inc	*(_mblen_sloc1_1_0 + 1)
00170$:
	ldy	#0x00
	lda	[*_mblen_sloc1_1_0],y
	ldx	#0x00
	and	#0xc0
	cmp	#0x80
	bne	00172$
	cpx	#0x00
	beq	00116$
00172$:
;	../mblen.c: 62: return(-1);
	lda	#0xff
	tax
	rts
00118$:
;	../mblen.c: 64: return(n);
	ldx	*(_mblen_sloc0_1_0 + 1)
	lda	*_mblen_sloc0_1_0
;	../mblen.c: 65: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
