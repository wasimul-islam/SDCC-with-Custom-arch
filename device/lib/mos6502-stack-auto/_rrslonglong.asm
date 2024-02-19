;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrslonglong
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
;Allocation info for local variables in function '_rrslonglong'
;------------------------------------------------------------
;l                         Allocated to stack - sp +16
;s                         Allocated to stack - sp +24
;b                         Allocated to stack - sp +12
;shift                     Allocated to registers 
;t1                        Allocated to registers y 
;t2                        Allocated to stack - sp +5
;sign                      Allocated to stack - sp +11
;zb                        Allocated to stack - sp +10
;i                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	_rrslonglong.c: 8: long long _rrslonglong(long long l, char s)
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 13 bytes.
__rrslonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf3
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	_rrslonglong.c: 11: uint8_t *const b = (uint8_t *)(&l);
	tsx
	txa
	clc
	adc	#0x10
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10e,x
	pla
;	_rrslonglong.c: 15: sign=b[7]&0x80;
	sta	0x10d, x
	sta	0x108,x
	lda	0x10e,x
	sta	0x109,x
	lda	0x108,x
	sta	*(__DPTR+0)
	lda	0x109,x
	sta	*(__DPTR+1)
	ldy	#0x07
	lda	[__DPTR],y
	and	#0x80
	sta	0x10c,x
;	_rrslonglong.c: 17: zb=s>>3;
	lda	0x119,x
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
;	_rrslonglong.c: 18: if(zb) {
	sta	0x10b, x
	bne	00171$
	jmp	00104$
00171$:
;	_rrslonglong.c: 19: i=0;
	lda	#0x00
	sta	0x10a,x
00110$:
;	_rrslonglong.c: 20: for(;i<(8-zb);i++) {
	tsx
	lda	0x10a,x
	sta	0x107,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	lda	#0x08
	sec
	sbc	0x107,x
	sta	0x105,x
	lda	#0x00
	sbc	0x108,x
	sta	0x106,x
	lda	0x109,x
	sta	0x103,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x104,x
	lda	0x103,x
	sec
	sbc	0x105,x
	lda	0x104,x
	sbc	0x106,x
	bvc	00173$
	bpl	00172$
	bmi	00129$
00173$:
	bpl	00129$
00172$:
;	_rrslonglong.c: 21: b[i]=b[zb+i];
	lda	0x10c,x
	clc
	adc	0x103,x
	sta	0x105,x
	lda	0x10d,x
	adc	0x104,x
	sta	0x106,x
	lda	0x107,x
	clc
	adc	0x103,x
	sta	0x103,x
	lda	0x108,x
	adc	0x104,x
	sta	0x104,x
	lda	0x10c,x
	clc
	adc	0x103,x
	pha
	lda	0x10d,x
	adc	0x104,x
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	tsx
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	_rrslonglong.c: 20: for(;i<(8-zb);i++) {
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	jmp	00110$
00129$:
	tsx
	lda	0x109,x
	tay
00113$:
;	_rrslonglong.c: 23: for(;i<8;i++)
	tya
	sec
	sbc	#0x08
	bvc	00176$
	bpl	00175$
	bmi	00104$
00176$:
	bpl	00104$
00175$:
;	_rrslonglong.c: 24: b[i]=sign?0xff:0x00;
	tsx
	tya
	sta	0x103,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x104,x
	lda	0x10c,x
	clc
	adc	0x103,x
	sta	0x103,x
	lda	0x10d,x
	adc	0x104,x
	sta	0x104,x
	lda	0x10b,x
	beq	00120$
	lda	#0xff
	ldx	#0x00
	jmp	00121$
00120$:
	lda	#0x00
	tax
00121$:
	sta	*(__TEMP+0)
	sty	*(__TEMP+1)
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+1)
;	_rrslonglong.c: 23: for(;i<8;i++)
	iny
	jmp	00113$
00104$:
;	_rrslonglong.c: 27: shift=s&0x7;
	tsx
	lda	0x118,x
	and	#0x07
	sta	0x103,x
;	_rrslonglong.c: 28: while(shift--) {
	lda	#0x07
	sec
	sbc	0x10a,x
	sta	0x109,x
00106$:
	tsx
	lda	0x103,x
	sta	0x105,x
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x105,x
	bne	00179$
	jmp	00108$
00179$:
;	_rrslonglong.c: 29: t2=sign;
	lda	0x10b,x
	sta	0x105,x
;	_rrslonglong.c: 30: for(i=7-zb;i>=0;i--) {
	lda	0x109,x
	sta	0x107,x
00116$:
	tsx
	lda	0x107,x
	sec
	sbc	#0x00
	bvs	00181$
	bpl	00180$
	bmi	00106$
00181$:
	bpl	00106$
00180$:
;	_rrslonglong.c: 31: t1=b[i]&1;
	lda	0x107,x
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	lda	0x10c,x
	clc
	adc	0x101,x
	sta	0x101,x
	lda	0x10d,x
	adc	0x102,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	and	#0x01
	tay
;	_rrslonglong.c: 32: b[i]=(b[i]>>1)|t2;
	txa
	lsr	a
	tsx
	ora	0x105,x
	sta	*(__TEMP+0)
	sty	*(__TEMP+1)
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	_rrslonglong.c: 33: t2=t1?0x80:0;
	ldy	*(__TEMP+1)
	beq	00122$
	lda	#0x80
	ldx	#0x00
	jmp	00123$
00122$:
	lda	#0x00
	tax
00123$:
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
;	_rrslonglong.c: 30: for(i=7-zb;i>=0;i--) {
	tsx
	lda	0x107,x
	sec
	sbc	#0x01
	sta	0x107,x
	jmp	00116$
00108$:
;	_rrslonglong.c: 37: return(l);
	tsx
	lda	0x117,x
	sta	*___SDCC_m6502_ret7
	lda	0x116,x
	sta	*___SDCC_m6502_ret6
	lda	0x115,x
	sta	*___SDCC_m6502_ret5
	lda	0x114,x
	sta	*___SDCC_m6502_ret4
	lda	0x113,x
	sta	*___SDCC_m6502_ret3
	lda	0x112,x
	sta	*___SDCC_m6502_ret2
	lda	0x111,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x110,x
	php
	ldx	*(__TEMP+0)
	plp
;	_rrslonglong.c: 38: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0d
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
