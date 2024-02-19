;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc32
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbrtoc32_sps_65536_16:
	.ds 3
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;s                         Allocated to stack - sp +11
;n                         Allocated to stack - sp +13
;ps                        Allocated to stack - sp +15
;pc32                      Allocated to stack - sp +7
;wc                        Allocated to stack - sp +1
;ret                       Allocated to registers a x 
;sloc0                     Allocated to stack - sp +5
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
;------------------------------------------------------------
;	../mbrtoc32.c: 34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_mbrtoc32:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	../mbrtoc32.c: 40: if(!ps)
	tsx
	lda	0x10f,x
	ora	0x110,x
	bne	00102$
;	../mbrtoc32.c: 41: ps = &sps;
	lda	#_mbrtoc32_sps_65536_16
	sta	0x10f,x
	lda	#>_mbrtoc32_sps_65536_16
	sta	0x110,x
00102$:
;	../mbrtoc32.c: 43: if(!pc32)
	tsx
	lda	0x107,x
	ora	0x108,x
	bne	00104$
;	../mbrtoc32.c: 44: return(mbrtowc(0, s, n, ps));
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	ldx	#0x00
	txa
	jsr	_mbrtowc
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	jmp	00107$
00104$:
;	../mbrtoc32.c: 46: ret = mbrtowc(&wc, s, n, ps);
	tsx
	inx
	txa
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x111, x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10b,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_mbrtowc
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
;	../mbrtoc32.c: 48: if(ret <= MB_LEN_MAX)
	lda	*(__TEMP+0)
	sta	*(__TEMP+1)
	lda	#0x04
	sec
	sbc	*(__TEMP+1)
	lda	#0x00
	stx	*(__TEMP+1)
	sbc	*(__TEMP+1)
	php
	lda	*(__TEMP+0)
	plp
	bcc	00106$
;	../mbrtoc32.c: 49: *pc32 = wc;
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
00106$:
;	../mbrtoc32.c: 51: return(ret);
00107$:
;	../mbrtoc32.c: 52: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
