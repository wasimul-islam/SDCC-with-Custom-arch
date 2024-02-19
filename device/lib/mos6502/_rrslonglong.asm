;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrslonglong_PARM_2
	.globl __rrslonglong_PARM_1
	.globl __rrslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrslonglong_sloc0_1_0:
	.ds 1
__rrslonglong_sloc1_1_0:
	.ds 2
__rrslonglong_sloc2_1_0:
	.ds 2
__rrslonglong_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__rrslonglong_PARM_1:
	.ds 8
__rrslonglong_PARM_2:
	.ds 1
__rrslonglong_t1_65536_2:
	.ds 1
__rrslonglong_t2_65536_2:
	.ds 1
__rrslonglong_sign_65536_2:
	.ds 1
__rrslonglong_zb_65536_2:
	.ds 1
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
;l                         Allocated with name '__rrslonglong_PARM_1'
;s                         Allocated with name '__rrslonglong_PARM_2'
;b                         Allocated to registers 
;shift                     Allocated to registers 
;t1                        Allocated with name '__rrslonglong_t1_65536_2'
;t2                        Allocated with name '__rrslonglong_t2_65536_2'
;sign                      Allocated with name '__rrslonglong_sign_65536_2'
;zb                        Allocated with name '__rrslonglong_zb_65536_2'
;i                         Allocated to registers 
;sloc0                     Allocated with name '__rrslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrslonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rrslonglong_sloc2_1_0'
;sloc3                     Allocated with name '__rrslonglong_sloc3_1_0'
;------------------------------------------------------------
;	_rrslonglong.c: 8: long long _rrslonglong(long long l, char s)
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrslonglong:
;	_rrslonglong.c: 11: uint8_t *const b = (uint8_t *)(&l);
;	_rrslonglong.c: 15: sign=b[7]&0x80;
	lda	(__rrslonglong_PARM_1 + 0x0007)
	and	#0x80
	sta	__rrslonglong_sign_65536_2
;	_rrslonglong.c: 17: zb=s>>3;
	lda	__rrslonglong_PARM_2
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
;	_rrslonglong.c: 18: if(zb) {
	sta	__rrslonglong_zb_65536_2
	bne	00171$
	jmp	00104$
00171$:
;	_rrslonglong.c: 19: i=0;
	ldx	#0x00
	stx	*__rrslonglong_sloc0_1_0
00110$:
;	_rrslonglong.c: 20: for(;i<(8-zb);i++) {
	lda	__rrslonglong_zb_65536_2
	sta	*__rrslonglong_sloc1_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__rrslonglong_sloc1_1_0 + 1)
	lda	#0x08
	sec
	sbc	*__rrslonglong_sloc1_1_0
	sta	*__rrslonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__rrslonglong_sloc1_1_0 + 1)
	sta	*(__rrslonglong_sloc2_1_0 + 1)
	lda	*__rrslonglong_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sta	*(__TEMP+0)
	sec
	sbc	*__rrslonglong_sloc2_1_0
	txa
	sbc	*(__rrslonglong_sloc2_1_0 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bvc	00173$
	bpl	00172$
	bmi	00129$
00173$:
	bpl	00129$
00172$:
;	_rrslonglong.c: 21: b[i]=b[zb+i];
	sta	*__rrslonglong_sloc2_1_0
	stx	*(__rrslonglong_sloc2_1_0 + 1)
	clc
	adc	*__rrslonglong_sloc1_1_0
	pha
	txa
	adc	*(__rrslonglong_sloc1_1_0 + 1)
	tax
	pla
	clc
	adc	#<(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	clc
	lda	*__rrslonglong_sloc2_1_0
	adc	#<(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrslonglong_sloc2_1_0 + 1)
	adc	#>(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	_rrslonglong.c: 20: for(;i<(8-zb);i++) {
	inc	*__rrslonglong_sloc0_1_0
	jmp	00110$
00129$:
	ldy	*__rrslonglong_sloc0_1_0
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
	tya
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sta	*__rrslonglong_sloc2_1_0
	stx	*(__rrslonglong_sloc2_1_0 + 1)
	lda	__rrslonglong_sign_65536_2
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
	clc
	lda	*__rrslonglong_sloc2_1_0
	adc	#<(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrslonglong_sloc2_1_0 + 1)
	adc	#>(__rrslonglong_PARM_1+0)
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
	lda	__rrslonglong_PARM_2
	and	#0x07
	sta	*__rrslonglong_sloc2_1_0
;	_rrslonglong.c: 28: while(shift--) {
	lda	#0x07
	sec
	sbc	__rrslonglong_zb_65536_2
	sta	*__rrslonglong_sloc1_1_0
00106$:
	lda	*__rrslonglong_sloc2_1_0
	dec	*__rrslonglong_sloc2_1_0
	cmp	#0x00
	beq	00108$
;	_rrslonglong.c: 29: t2=sign;
	lda	__rrslonglong_sign_65536_2
	sta	__rrslonglong_t2_65536_2
;	_rrslonglong.c: 30: for(i=7-zb;i>=0;i--) {
	lda	*__rrslonglong_sloc1_1_0
	sta	*__rrslonglong_sloc0_1_0
00116$:
	lda	*__rrslonglong_sloc0_1_0
	sec
	sbc	#0x00
	bvs	00181$
	bpl	00180$
	bmi	00106$
00181$:
	bpl	00106$
00180$:
;	_rrslonglong.c: 31: t1=b[i]&1;
	lda	*__rrslonglong_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sta	*__rrslonglong_sloc3_1_0
	stx	*(__rrslonglong_sloc3_1_0 + 1)
	clc
	lda	*__rrslonglong_sloc3_1_0
	adc	#<(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrslonglong_sloc3_1_0 + 1)
	adc	#>(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	and	#0x01
	sta	__rrslonglong_t1_65536_2
;	_rrslonglong.c: 32: b[i]=(b[i]>>1)|t2;
	txa
	lsr	a
	ora	__rrslonglong_t2_65536_2
	tax
	clc
	lda	*__rrslonglong_sloc3_1_0
	adc	#<(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrslonglong_sloc3_1_0 + 1)
	adc	#>(__rrslonglong_PARM_1+0)
	sta	*(__DPTR+1)
	txa
	sta	[__DPTR],y
;	_rrslonglong.c: 33: t2=t1?0x80:0;
	lda	__rrslonglong_t1_65536_2
	beq	00122$
	lda	#0x80
	ldx	#0x00
	jmp	00123$
00122$:
	lda	#0x00
	tax
00123$:
	sta	__rrslonglong_t2_65536_2
;	_rrslonglong.c: 30: for(i=7-zb;i>=0;i--) {
	dec	*__rrslonglong_sloc0_1_0
	jmp	00116$
00108$:
;	_rrslonglong.c: 37: return(l);
	lda	(__rrslonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__rrslonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__rrslonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__rrslonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__rrslonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__rrslonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__rrslonglong_PARM_1 + 1)
	lda	__rrslonglong_PARM_1
;	_rrslonglong.c: 38: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
