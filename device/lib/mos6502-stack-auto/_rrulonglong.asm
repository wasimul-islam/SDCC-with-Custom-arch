;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrulonglong
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;l                         Allocated to stack - sp +15
;s                         Allocated to stack - sp +23
;b                         Allocated to stack - sp +11
;shift                     Allocated to registers 
;t1                        Allocated to registers y 
;t2                        Allocated to stack - sp +5
;zb                        Allocated to stack - sp +10
;i                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	_rrulonglong.c: 8: unsigned long long _rrulonglong(unsigned long long l, char s)
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
__rrulonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	_rrulonglong.c: 11: uint8_t *const b = (uint8_t *)(&l);
	tsx
	txa
	clc
	adc	#0x0f
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10d,x
	pla
	sta	0x10c,x
;	_rrulonglong.c: 15: zb=s>>3;
	lda	0x118, x
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
;	_rrulonglong.c: 16: if(zb) {
	sta	0x10b, x
	bne	00165$
	jmp	00104$
00165$:
;	_rrulonglong.c: 17: for(i=0;i<(8-zb);i++) {
	lda	#0x00
	sta	0x10a,x
00110$:
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
	bvc	00167$
	bpl	00166$
	bmi	00126$
00167$:
	bpl	00126$
00166$:
;	_rrulonglong.c: 18: b[i]=b[zb+i];
	lda	0x10b,x
	clc
	adc	0x103,x
	sta	0x105,x
	lda	0x10c,x
	adc	0x104,x
	sta	0x106,x
	lda	0x107,x
	clc
	adc	0x103,x
	sta	0x103,x
	lda	0x108,x
	adc	0x104,x
	sta	0x104,x
	lda	0x10b,x
	clc
	adc	0x103,x
	pha
	lda	0x10c,x
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
;	_rrulonglong.c: 17: for(i=0;i<(8-zb);i++) {
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	jmp	00110$
00126$:
	tsx
	lda	0x109,x
	tay
00113$:
;	_rrulonglong.c: 21: for(;i<8;i++)
	tya
	sec
	sbc	#0x08
	bvc	00170$
	bpl	00169$
	bmi	00104$
00170$:
	bpl	00104$
00169$:
;	_rrulonglong.c: 22: b[i]=0;
	tsx
	tya
	sta	0x103,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x104,x
	lda	0x10b,x
	clc
	adc	0x103,x
	pha
	lda	0x10c,x
	adc	0x104,x
	tax
	pla
	sty	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	_rrulonglong.c: 21: for(;i<8;i++)
	iny
	jmp	00113$
00104$:
;	_rrulonglong.c: 25: shift=s&0x7;
	tsx
	lda	0x117,x
	and	#0x07
	sta	0x103,x
;	_rrulonglong.c: 26: while(shift--) {
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
	bne	00172$
	jmp	00108$
00172$:
;	_rrulonglong.c: 27: t2=0;
	lda	#0x00
	sta	0x105,x
;	_rrulonglong.c: 28: for(i=7-zb;i>=0;i--) {
	lda	0x109,x
	sta	0x107,x
00116$:
	tsx
	lda	0x107,x
	sec
	sbc	#0x00
	bvs	00174$
	bpl	00173$
	bmi	00106$
00174$:
	bpl	00106$
00173$:
;	_rrulonglong.c: 29: t1=b[i]&1;
	lda	0x107,x
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	lda	0x10b,x
	clc
	adc	0x101,x
	sta	0x101,x
	lda	0x10c,x
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
;	_rrulonglong.c: 30: b[i]=(b[i]>>1)|t2;
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
;	_rrulonglong.c: 31: t2=t1?0x80:0;
	ldy	*(__TEMP+1)
	beq	00120$
	lda	#0x80
	ldx	#0x00
	jmp	00121$
00120$:
	lda	#0x00
	tax
00121$:
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
;	_rrulonglong.c: 28: for(i=7-zb;i>=0;i--) {
	tsx
	lda	0x107,x
	sec
	sbc	#0x01
	sta	0x107,x
	jmp	00116$
00108$:
;	_rrulonglong.c: 35: return(l);
	tsx
	lda	0x116,x
	sta	*___SDCC_m6502_ret7
	lda	0x115,x
	sta	*___SDCC_m6502_ret6
	lda	0x114,x
	sta	*___SDCC_m6502_ret5
	lda	0x113,x
	sta	*___SDCC_m6502_ret4
	lda	0x112,x
	sta	*___SDCC_m6502_ret3
	lda	0x111,x
	sta	*___SDCC_m6502_ret2
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
;	_rrulonglong.c: 36: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
